# MyUzbekistan Mobile — Loyiha Qoidalari

Bu faylda loyiha bo'yicha muhim qoidalar va ko'rsatmalar saqlanadi.
(Qoidalar `global_skillhub` loyihasidagi CLAUDE.md asosida, shu loyihaning haqiqiy tuzilmasiga moslab yozilgan.)

## Loyiha Haqida

Flutter asosida yozilgan mobil ilova. Modulli arxitektura ishlatiladi (`modules/` papkasi): `data`, `domain`, `shared`, `navigation`, `component_res` va `features/` ichida har bir feature (`travel`, `finance`, `more`).

## Arxitektura

- **Modulli tuzilma**: har bir feature `modules/features/<feature>/` ichida alohida paket
- **Domain layer**: `modules/domain/lib/src/` — modellar, repository interfeyslari, use case'lar (`package:domain/domain.dart`)
- **Data layer**: `modules/data/lib/src/` — DTO'lar, API servislar, repository implementatsiyalari (`package:data/...`)
- **Shared**: `modules/shared/lib/src/` — umumiy extension'lar, util'lar (`package:shared/shared.dart`)
- **Component res**: `modules/component_res/` — umumiy UI komponentlar, tema, `coreLocalization`
- **Dependency injection**: `modules/data/lib/src/di/`, `modules/domain/lib/src/di/` — `@injectable` / `@Injectable(as: ...)`
- **Kod generatsiya**: `*.g.dart`, `*.freezed.dart` fayllar — qo'lda o'zgartirma kiritma, `build_runner` orqali generate qilinadi

## Flutter/Dart

- Flutter SDK: `/Users/user/Documents/flutter_sdk/bin` — PATH'da yo'q, to'liq yo'l ishlatiladi
- `*.g.dart` va `*.freezed.dart` fayllarni qo'lda o'zgartirma, **alohida fayl ham ochma** — `build_runner` o'zi yaratadi
- **`build_runner` va DI generatsiyasini HECH QACHON ishga tushirma, so'rama ham** — foydalanuvchi o'zi yuguradi

---

## Xato (Error) Ko'rsatish Qoidasi

API dan xato kelganda, xato matni to'g'ridan-to'g'ri UI ichiga (`Text(...)`) yozilmaydi — `Toast` orqali ko'rsatiladi:

```dart
import 'package:component_res/component_res.dart';

Toast.showToast(state.errorMessage!);
```

BLoC/Cubit `listener`da faqat **o'zgargan** xatoni ko'rsatish uchun `listenWhen` ishlatiladi (bir xil xato qayta-qayta chiqmasligi uchun):

```dart
listenWhen: (prev, cur) =>
    cur.errorMessage != null && prev.errorMessage != cur.errorMessage,
listener: (context, state) {
  if (state.errorMessage != null) {
    Toast.showToast(state.errorMessage!);
  }
},
```

**Noto'g'ri:**
```dart
if (state.errorMessage != null) {
  return Center(child: Text(state.errorMessage!)); // xato!
}
```

---

## Route Query Parameter Qoidasi

Route orqali `int`, `double`, `String`, `bool` qabul qilganda har doim parse funksiyalari ishlatiladi. Bu funksiyalar `modules/shared/lib/src/extensions/num_extensions.dart` da joylashgan:

```dart
int?    parseInt(String? value)
double? parseDouble(String? value)
String? parseString(String? value)
bool?   parseBool(String? value)
```

Bular `"null"` string va `null` ni ham handle qiladi — har doim nullable qaytaradi.

**Noto'g'ri:**
```dart
final authRequire = state.uri.queryParameters["authRequired"] == "true";
final id = int.parse(state.uri.queryParameters['id']!);
```

**To'g'ri:**
```dart
final authRequire = parseBool(state.uri.queryParameters["authRequired"]) ?? false;
final id = parseInt(state.uri.queryParameters['id']);
```

> Eslatma: bu funksiyalar loyihaga yaqinda qo'shildi — eski route/navigatsiya kodida hali ham qo'lda parse qilingan joylar bo'lishi mumkin (masalan `shell_wrapper`, `travel` feature ichida). Ularga tegayotganda yangi uslubga o'tkazish tavsiya etiladi, lekin bu alohida topshiriq.

---

## Tarjima (Localization) Qoidasi

Bu loyihada har bir modul **o'z alohida** `.arb` va `AppLocalizations` klassiga ega (`l10n.yaml` har bir modulda bor):

| Modul | `.arb` joylashuvi | Generatsiya klassi | `context` getter |
|---|---|---|---|
| Root app | `locales/values/main_*.arb` | `AppLocalizations` | `context.localizations` (`lib/core/extensions/context_extension.dart`) |
| `component_res` | `modules/component_res/locales/values/main_*.arb` | `CoreAppLocalizations` | `context.coreLocalization` |
| `travel` | `modules/features/travel/locale/travel_*.arb` | `FeatureTravelLocalizations` | `context.localization` (`travel/lib/src/core/extension.dart`) |
| `finance` | `modules/features/finance/locale/finance_*.arb` | shu modulga tegishli | `finance/lib/src/core/extension.dart` ichida |
| `more` | `modules/features/more/locale/more_*.arb` | shu modulga tegishli | `more/lib/src/core/extension.dart` ichida |

Har bir `.arb` uch tilda bo'ladi: `_uz.arb`, `_ru.arb`, `_en.arb`.

### Qoida:
1. Ishlayotgan modulingga tegishli `.arb` faylda mavjud kalitni toping → to'g'ridan-to'g'ri ishlating
2. Mavjud bo'lmasa → **shu modulning 3 ta tildagi `.arb` fayliga ham** kalitni tarjimalar bilan qo'shing, keyin ishlating
3. Boshqa modulning localization klassidan foydalanma — masalan `travel` feature ichida `context.coreLocalization`dagi umumiy kalitlardan foydalanish mumkin, lekin `finance`ga tegishli kalitni `travel`ning `.arb`iga qo'shma

**Hech qachon UI da `Text('Matn')` kabi qattiq yozilgan matn qo'yma.**

---

## Fayl Tuzilmasi Qoidasi — SOLID / 1 fayl = 1 mas'uliyat

**Har bir klass, widget, model, enum — o'z alohida faylida bo'ladi.** Bir faylga bir nechta public klass/widget yig'ish SRP (Single Responsibility Principle) ni buzadi.

### Widget Qoidasi

Sahifa (page) fayli faqat asosiy `StatelessWidget`/`StatefulWidget` ni o'z ichiga oladi. Ichki (private) widgetlar **alohida fayllarda** yoziladi va import qilinadi.

**Noto'g'ri** — hammasi bitta faylda:
```
catalog_page.dart   # ichida CatalogPage, _CatalogCard, _FilterChip — XATO
```

**To'g'ri**:
```
catalog/
  pages/
    catalog_page.dart      # faqat CatalogPage
  widgets/
    catalog_card.dart      # faqat CatalogCard
    catalog_filter_chip.dart
```

### Model / Enum Qoidasi

Bir faylga bir nechta model yoki enum yozilmaydi — har biri alohida fayl.

**Noto'g'ri:**
```dart
// catalog_models.dart — XATO
class CatalogModel { ... }
enum CatalogStatus { ... }
```

**To'g'ri:**
```
models/
  catalog_model.dart
  catalog_status.dart
```

### Umumiy qoida xulosa

| Nima | Fayl soni |
|------|-----------|
| 1 ta widget | 1 ta fayl |
| 1 ta model/DTO | 1 ta fayl |
| 1 ta enum | 1 ta fayl |
| 1 ta BLoC/Cubit | alohida papka (`*_bloc.dart`, `*_event.dart`, `*_state.dart`) |
| 1 ta repository interface | 1 ta fayl |

---

## BLoC / Cubit Qoidalari

State va Event klasslari `@freezed`, BLoC/Cubit klassi `@injectable` bo'ladi (loyihadagi mavjud bloc'lar — masalan `onboarding_bloc.dart`, `catalog_bloc.dart` — shu patternga amal qiladi).

BLoC uchun **3 ta fayl**:

```
catalog_bloc.dart     # asosiy fayl — @injectable, part larni o'z ichiga oladi
catalog_event.dart    # part of 'catalog_bloc.dart' — @freezed
catalog_state.dart    # part of 'catalog_bloc.dart' — @freezed
```

`catalog_bloc.dart` ichida:
```dart
part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';  // build_runner yaratadi — qo'lda yaratilmaydi

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final Repository _repository;

  CatalogBloc(this._repository) : super(const CatalogState());
}
```

Cubit ham xuddi shunday: state `@freezed`, cubit `@injectable`, o'z alohida papkasida.

### Error / Loading Emit Uslubi

```dart
emit(state.copyWith(isLoading: true));
try {
  final result = await _repository.loadContentsByCategory(...);
  emit(state.copyWith(items: result));
} catch (e) {
  emit(state.copyWith(errorMessage: e.toString()));
}
emit(state.copyWith(isLoading: false));
```

---

## State Boshqaruvi Qoidasi — `setState` ISHLATILMAYDI

`setState` **umuman ishlatilmaydi**. Widget ichidagi lokal, o'zgaruvchan holat uchun `flutter_hooks` ishlatiladi (`HookWidget` + `useState`, `useEffect`, `useRef` va h.k.). Kengroq/biznes holat uchun BLoC/Cubit ishlatiladi.

- `StatefulWidget` + `setState` yozma — o'rniga `HookWidget` ol.
- Timer, subscription, controller kabi resurslar `useEffect` ichida ochilib, uning `dispose` (return) funksiyasida yopiladi.
- `flutter_hooks` `package:shared/shared.dart` orqali eksport qilinadi (alohida import shart emas).

**Noto'g'ri:**
```dart
class _Pill extends StatefulWidget { ... }
class _PillState extends State<_Pill> {
  late Duration _left;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => _left = _remaining()); // XATO — setState
    });
  }
}
```

**To'g'ri:**
```dart
class _Pill extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final left = useState(_remaining());
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (_) {
        left.value = _remaining(); // hook — setState yo'q
      });
      return timer.cancel; // dispose
    }, const []);
    return Text(_format(left.value));
  }
}
```

> Eslatma: eski kodda hali `setState` ishlatilgan joylar bo'lishi mumkin (masalan `home_page.dart` ichidagi `CategoryHeader` scroll shrink logikasi). Ularga tegayotganda `HookWidget`ga o'tkazish tavsiya etiladi.

---

## Yangi Feature Qo'shish Qoidalari

### 1. Fayl Tuzilmasi

Domain va data layerda alohida fayllar yaratiladi:

- **Domain** (`modules/domain/lib/src/<feature>/`): `models/`, `repository/` (abstract interfeys)
- **Data** (`modules/data/lib/src/<feature>/`): `models/` (DTO, JSON serialization), `network/api/` (Retrofit servis), `network/repository/` (repository implementatsiyasi)

### 2. Repository Implementatsiyasi

Repository implementatsiyasi service chaqiruvini `.call(mapper)` bilan `toDomain()`ga map qiladi (bu loyihaning o'z `.call()` extension'i — Either emas, plain `Future`):

```dart
@Injectable(as: FinanceRepository)
class FinanceRepositoryImpl extends FinanceRepository {
  final FinanceApiService service;
  FinanceRepositoryImpl(this.service);

  @override
  Future<List<CardItem>> cards() {
    return service.getCards().call((items) => items.map((e) => e.toDomain()).toList());
  }

  @override
  Future<CardType> findCardType({required String pan}) {
    return service.findCardType(pan).call((data) => data.toDomain());
  }
}
```

Response body kerak bo'lmasa (delete, confirm va h.k.) — `.call()` argumentsiz chaqiriladi, `Future<void>` qaytariladi.

### 3. Response Model Berilmasa

Agar response model berilmasa — repository va Retrofit servis vaqtincha `dynamic` bo'ladi. Model kelgandan keyin tiplar almashtiriladi.

### 4. Action Metodlari (delete/verify/apply va h.k.) — `dynamic` qaytaradi

Response ma'nosi bo'lmagan chaqiruvlar uchun `bool` ixtiro qilinmaydi — loyihada mavjud pattern (`Future<dynamic> verifyPin(...)` — `modules/domain/lib/src/repository.dart`) shu:

```dart
Future<dynamic> verifyPin({required String pin});
```

---

## Model va Response Qoidalari

### DTO (Response Model)

- `@JsonSerializable()` shart
- `toDomain()` metodi domain modelga map qiladi
- `@JsonKey(name: "...")` bilan API'dagi snake_case nomlar map qilinadi
- API haqiqatda har doim qaytaradigan fieldlar `required` (non-null), ixtiyoriy fieldlar `String?`/`int?` — hammasini majburan nullable qilib yubormaslik (loyihadagi mavjud DTO'lar — masalan `CardItemDto` — shu tarzda)

```dart
part 'card_item.g.dart';

@JsonSerializable()
class CardItemDto {
  final int id;
  final String? cardNumber;

  CardItemDto({required this.id, this.cardNumber});

  factory CardItemDto.fromJson(Map<String, dynamic> json) => _$CardItemDtoFromJson(json);

  CardItem toDomain() => CardItem(id: id, cardNumber: cardNumber);
}
```

### Domain Model

Oddiy Dart klassi — annotatsiyasiz.

### Enum (Status, Type va boshqalar)

`fromString` metodi yozilmaydi — DTO'ning `toDomain()`ida to'g'ridan-to'g'ri `.values.firstWhere` ishlatiladi (loyihada `catalog_dto.dart`, `premium_access_response.dart`da shu pattern bor):

```dart
status: CatalogStatus.values.firstWhere(
  (e) => e.name == status,
  orElse: () => CatalogStatus.active,
),
```
