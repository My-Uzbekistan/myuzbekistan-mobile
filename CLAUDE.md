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
- **Kod generatsiyasini o'zing ishga tushirasan** — `*.g.dart`, `*.freezed.dart`, `injection.config.dart` / `injection.module.dart` kerak bo'lsa, o'zgargan paketda `build_runner` yugurtiriladi (barchasi uchun — `./build_all.sh`), so'rab turilmaydi

---

## BE API Hujjatlari — Bruno Kolleksiyasi

Loyihaning **barcha BE endpointlari** shu yerda (alohida git repo):

```
/Users/user/Documents/bruno/MyUzbekistan_Bruno
```

Har bir endpoint — alohida `.yml` fayl: `http:` blokida method/url/body, `docs:` blokida javob JSON'i, maydonlar jadvali va qoidalar.

| Papka | Nima bor |
|---|---|
| `1. Kirish` | SMS kod, token |
| `Market` | katalog, savat, rasmiylashtirish, buyurtmalar, qidiruv va sevimlilar (~30 endpoint) |
| `Moliya` | kartalar, to'lov, tarix, merchantlar, valyuta |
| `Bildirishnomalar` / `Qurilmalarim` / `Catalog V3` / `New Design APIs` | qolganlari |

### Qoidalar

- Yangi API ulashdan oldin **shu papkadagi tegishli `.yml` o'qiladi** — endpoint, model va enum qiymatlari o'ylab topilmaydi
- Dio `baseUrl` = `https://myuz.uz/api/` — Retrofit path'ida `api/` yozilmaydi: `@GET("market/home")`
- `Accept-Language` javob tilini belgilaydi (uz / ru / en)
- Narxlar **so'mda, butun son** — tiyin ishlatilmaydi; rasmlar to'liq URL bo'lib keladi
- `opencollection.yml` ichida haqiqiy JWT token bor — loyihaga ko'chirilmaydi

---

## Figma Dizayn Qoidasi — URL berilsa AYNAN moslashtiriladi

Bu loyihada UI ishlari uchun **Figma URL beriladi**. URL kelgan zahoti:

1. `figma-design-to-code` skill yuklanadi, keyin `get_design_context` chaqiriladi (`nodeId` + `fileKey` URL'dan olinadi) — **ekranni skrinshotdan chamalab yozish TAQIQLANADI**
2. Natija **aynan** ko'chiriladi: o'lchamlar, padding/gap, radius, shrift (font-size / weight / line-height / letter-spacing), rasm o'lchami va joylashuvi, qatlamlar tartibi
3. Figma o'zgaruvchilari (`var(--...)`) loyiha token'lariga map qilinadi — **hech qachon hex literal yozilmaydi**

| Figma o'zgaruvchisi | Loyiha token'i |
|---|---|
| `background/elevation-1`, `-2`, `underlayer` | `context.appColors.background.elevation1` / `.elevation2` / `.underlayer` |
| `fills/quaternary`, `fills/tertiary` | `context.appColors.fill.quaternary` / `.tertiary` |
| `label/primary`, `secondary`, `tertiary` | `context.appColors.textIconColor.primary` / `.secondary` / `.tertiary` |
| `separator/opaque`, `separator/non-opaque` | `context.appColors.stroke.opaque` / `.nonOpaque` |
| `brand/sea-blue` | `context.appColors.brandSeaBlue` |
| `color/green`, `red`, `yellow`, `purple` … | `context.appColors.colors.green` / `.red` / … |
| `static/white`, `static/black` | `context.appColors.static.white` / `.black` |
| rasm ustidagi qoraytirish / gradient | `context.appColors.service.scrim` |
| rasm ustidagi oq matn va ikonka | `context.appColors.service.onMedia` |
| rasm ustidagi shisha (glass) tint | `context.appColors.service.glass` |
| soya (`drop-shadow`, `box-shadow`) | `context.appColors.service.shadow` |
| doim qorong'i sirt (Moliya hero) | `context.appColors.service.heroSurface` |
| shimmer (skelet) gradienti | `context.appColors.service.shimmerBase` / `.shimmerHighlight` |
| premium oltin / yashil, sovg'a ranglari | `context.appColors.accent.premium*` / `.gift*` |

Figma freymlari odatda **light** temada chizilgan. `rgba(255,255,255,…)` yoki `#14191a` kabi qiymatni ko'chirib yozish emas — mos token topiladi. **Token yo'q bo'lsa — `colors_model.dart` + `light_colors.dart` + `dark_colors.dart` + `app_color_extension.dart` (lerp) ga yangisi qo'shiladi**, keyin ishlatiladi.

Shriftlar: `heading/h3` → `.h3()`, `body/lg` → `.bodyLg()`, `label/md` → `.labelMd()`, `label/sm` → `.labelSm()`, `body/sm` → `.bodySm()`, `body/xxsm` → `.bodyXXsm()` (`text_extension.dart`).

Dizaynda mavjud, lekin loyihada boshqacha bo'lgan joy topilsa — **jimgina o'zgartirilmaydi ham, tashlab ketilmaydi ham**: Figma bo'yicha to'g'rilanadi va javobda aytiladi.

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

## Fayl Tuzilmasi Qoidasi

### Widget Qoidasi — YIRIK widget yoziladi, mayda-chuydaga BO'LINMAYDI

Ekran **mazmunli, yirik** bloklarga bo'linadi — har biri o'z faylida. Blokning ichki bo'laklari (ikonka+matn qatori, chip, badge, narx qatori, sarlavha, counter, stepper, chevron, tile) **alohida faylga chiqarilmaydi** — shu widget ichida private metod (`Widget _row(...)`, `Widget _header(...)`) yoki private klass (`class _Step extends StatelessWidget`) bo'lib qoladi.

**Noto'g'ri** — bitta ekran 18 ta faylga bo'lingan:
```
detail/widgets/
  market_detail_breadcrumb.dart       # 45 satr
  market_detail_price.dart            # 29 satr
  market_detail_icon_row.dart         # 55 satr
  market_detail_section_title.dart    # 23 satr
  market_detail_route_button.dart     # 47 satr
  market_detail_photo_counter.dart    # 75 satr
  market_detail_delivery_tile.dart
  market_detail_cart_stepper.dart
  ...
```

**To'g'ri** — mazmunli bloklar, ichki bo'laklar shu fayl ichida:
```
detail/widgets/
  market_detail_gallery.dart      # karusel + foto counter
  market_detail_summary.dart      # breadcrumb + nom + narx
  market_detail_delivery.dart     # tile'lar + ikonka switch
  market_detail_seller.dart       # qatorlar + karta + "yo'l qurish" tugmasi
  market_detail_bottom_bar.dart   # tugmalar + savat stepperi
  market_detail_section.dart      # karta konteyner + sarlavha
```

Qo'shimcha qoidalar:
- Faqat **bitta joyda** ishlatiladigan kichik blok (~60 satrgacha) — ota widget yoki page ichida private metod bo'ladi, alohida fayl EMAS
- Bir necha joyda ishlatilsa va o'z ichida logikasi bo'lsa — o'shanda alohida fayl (masalan `market_order_status_chip.dart`, `market_order_item_tile.dart`)
- Murakkab animatsiyali komponent 300–400 satr bo'lsa ham **bitta faylda** qoladi (masalan `market_order_wizard.dart` — ichida `_Step`, `_PulseRing`, `_Connector` private klasslar)
- `switch` bilan ikonka/rang qaytaruvchi kichik `extension` alohida fayl bo'lmaydi — ishlatiladigan fayl ichida private funksiya (`String _glyphPath(...)`)
- Konteyner/o'ram (wrapper) widget faqat mazmun qo'shsa yashaydi: quruq `Container` o'rami emas, balki sarlavhasi bilan birga (`MarketDetailSection(title:, child:)`)

### O'lchov Konstantalari — NOMLANMAYDI

Har bir padding/gap/o'lcham uchun `static const` yozilmaydi — raqam to'g'ridan-to'g'ri joyiga yoziladi.

**Noto'g'ri:**
```dart
class MarketDetailDeliveryTile extends StatelessWidget {
  static const double _iconSize = 24;
  static const double _contentGap = 12;
  static const double _textGap = 4;
  static const double _dividerPadding = 12;
  static const String _separator = " · ";
  ...
        spacing: _contentGap,
```

**To'g'ri:**
```dart
        spacing: 12,
        ...
        SizedBox.square(dimension: 24, child: ...),
        ...
    ].join(" · ");
```

`const` faqat shu hollarda:
- qiymat **hisob-kitobda** ishlatilsa (masalan `market_order_wizard.dart` ichidagi `_iconDiameter` — konnektor geometriyasi shundan hisoblanadi)
- bir faylning bir necha klassi o'rtasida bo'lishilsa — fayl darajasidagi `const`

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
| 1 ta yirik ekran bloki | 1 ta fayl |
| Blok ichidagi mayda bo'lak | fayl emas — private metod yoki private klass |
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

### Enum (Status, Type, Slug, State va boshqalar)

**BE'dan keladigan har qanday "ajratilgan qiymatli" string maydon — `status`, `type`, `slug`, `state`, `kind` va h.k. — domain modelda ENUM bo'lishi SHART.** Widget/logikada `e.type == "rating"` kabi **string literal bilan solishtirish TAQIQLANADI** — enum bilan solishtiriladi: `e.type == InfoType.rating`.

Enum qiymatlari **BE docs'dan** (Bruno / Swagger) aynan olinadi. Agar docs'da yozilmagan bo'lsa — **o'zingdan to'qib chiqarma, foydalanuvchidan so'ra.**

`fromString` metodi yozilmaydi — DTO'ning JSON maydoni `String` bo'lib qoladi, enumga faqat `toDomain()`da o'giriladi. Non-null uchun `.values.firstWhere(..., orElse:)`, nullable uchun `.values.firstOrNullWhere(...)`:

```dart
status: CatalogStatus.values.firstWhere(
  (e) => e.name == status,
  orElse: () => CatalogStatus.active,
),
// nullable (docs'da "bo'lmasligi mumkin" desa):
slug: InfoSlug.values.firstOrNullWhere((e) => e.name == slug),
```

Har bir enum — o'z alohida faylida (SRP).

---

## Comment (Izoh) Qoidasi — Kodga izoh YOZILMAYDI

Kodga **hech qanday izoh yozilmaydi** — na `//`, na `///`, na maydon/type tavsiflari (`/// text, dollarRating, distance ...` kabi). Kod o'zini o'zi tushuntirishi kerak: aniq nom, enum, kichik funksiya. Izoh o'rniga — yaxshi nomlash.

Istisno: generatsiya qilingan fayllar (`*.g.dart`, `*.freezed.dart`) va `part`/`ignore_for_file` kabi kompilyatorga kerakli direktivalar.

**Noto'g'ri:**
```dart
/// `text`, `dollarRating`, `distance` — BE type
final String type;

// masofani km ga o'giramiz
final km = meters / 1000;
```

**To'g'ri** — izohsiz, enum va aniq nomlar bilan:
```dart
final InfoType type;

final kilometers = meters / 1000;
```
