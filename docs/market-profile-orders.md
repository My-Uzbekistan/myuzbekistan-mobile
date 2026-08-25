# Market — Profil va Buyurtmalar ekranlari

Figma: [Profile](https://www.figma.com/design/PtTkgMqDmS7eQ0I6EVusuA/New-MYUZB?node-id=1718-17439) ·
[Заказы](https://www.figma.com/design/PtTkgMqDmS7eQ0I6EVusuA/New-MYUZB?node-id=1721-19236) ·
[Купленные товары](https://www.figma.com/design/PtTkgMqDmS7eQ0I6EVusuA/New-MYUZB?node-id=1721-19853) ·
[Возвраты](https://www.figma.com/design/PtTkgMqDmS7eQ0I6EVusuA/New-MYUZB?node-id=1722-20090) ·
[Возвраты (bo'sh)](https://www.figma.com/design/PtTkgMqDmS7eQ0I6EVusuA/New-MYUZB?node-id=1723-20310)

---

## 1. Nima qilindi

### Profil ekrani (`/market/profile`)

Katta sarlavha ostida bitta oq kartochka, ichida 3 ta hujayra:

| Hujayra | Ikonka | Ochadigan ekran |
|---|---|---|
| Заказы | `assets/svg/market/order_box.svg` | `/market/orders?group=active` |
| Купленные товары | `assets/svg/market/order_bag.svg` | `/market/orders?group=purchased` |
| Возвраты | `assets/svg/market/order_return.svg` (gorizontal aylantirilgan) | `/market/orders?group=returned` |

### Buyurtmalar ekrani (`/market/orders`)

Uchala tafsilot ekrani (Заказы / Купленные товары / Возвраты) — **bitta ekran**,
`group` query parametri bilan farqlanadi. Har bir kartochkada:

- holat chipi (`Chips`) — `fills/tertiary` fon, qaytarishlarda qizil (`nonOpaque.red`)
- `Номер заказа: #...` + yaratilgan sana
- mahsulot qatori: 80×80 rasm + reyting nishoni, nom, kategoriya, narx, `N штук` badge
- «Детали заказа» ochib-yopiladigan blok: to'lov usuli, olish usuli, manzil, telefon
- narx yakuni: Заказ / Доставка / ajratgich / Итого

Bo'sh holat, xato holati va shimmer ham bor.

---

## 2. Ulangan API

**`GET /api/market/orders`** — Bruno: `Market/4. Buyurtmalar/Mening buyurtmalarim.yml`

Javob massiv, har element «Buyurtma tafsiloti» bilan bir xil shaklda
(`steps`, `payment`, `items` to'liq keladi) — shuning uchun ro'yxat ekrani
uchun qo'shimcha so'rov kerak emas.

### Qo'shilgan fayllar

**Domain** — `modules/domain/lib/src/market/models/`

```
market_order.dart              MarketOrder
market_order_item.dart         MarketOrderItem
market_order_price.dart        MarketOrderPrice
market_order_payment.dart      MarketOrderPayment
market_order_step.dart         MarketOrderStep
market_order_status.dart       enum (draft … refunded)
market_order_step_key.dart     enum (paid … delivered)
market_order_step_state.dart   enum (done | current | pending)
market_order_delivery_type.dart enum (courier | pickup)
market_order_group.dart        enum (active | purchased | returned) + status guruhlash
```

`MarketRepository` ga `Future<List<MarketOrder>> orders()` qo'shildi.

**Data** — `modules/data/lib/src/market/src/models/market_order*/`
DTO'lar + `MarketApiService.orders()` (`@GET("market/orders")`) +
`MarketRepositoryImpl.orders()`.

**Feature** — `modules/features/market/market_home/lib/src/presentation/orders/`
va `.../presentation/profile/`.

---

## 3. BE'da yetishmayotgan narsalar

### 3.1. Status bo'yicha filtr yo'q — hozircha client-side

`GET /api/market/orders` **hamma** buyurtmani qaytaradi. Uchala ekran uchun
ilova ichida filtrlanadi (`MarketOrderGroup.contains`):

| Ekran | Kiritilgan `status` qiymatlari |
|---|---|
| Заказы | `draft`, `awaitingPayment`, `paid`, `preparing`, `ready`, `delivering` |
| Купленные товары | `delivered` |
| Возвраты | `cancelled`, `refunded` |

**So'rov:** `GET /api/market/orders?status=delivered` yoki
`?group=purchased` kabi query parametr qo'shilsa yaxshi bo'lardi.
Guruhlash mantiqi hozir ikkita joyda (BE holat nomlari + ilova enum'i) yashaydi.

### 3.2. Sahifalash (pagination) yo'q

Docs: «Sahifalash yo'q — hammasi qaytariladi». Foydalanuvchida 200 ta buyurtma
bo'lsa, hammasi bitta javobda keladi. `page` / `pageSize` kerak
(`GET /api/market/products` dagidek).

### 3.3. `cancelled` / `refunded` holatida chip matni BE'dan kelmaydi

Docs: bekor qilingan buyurtmada barcha `steps` `pending` bo'ladi, ya'ni
`state == "current"` element yo'q. Chip uchun matn qoladigan yagona manba —
`status` (`"cancelled"` / `"refunded"`), lekin u **tarjima qilinmagan**.

Hozir bu holat ilovada tarjima qilinmoqda
(`market_order_status` kaliti, uz/ru/en). Bu ikkilanishga olib keladi —
qolgan holatlar BE'dan, bu ikkitasi ilovadan.

**So'rov:** javobga `Accept-Language` bo'yicha tarjima qilingan
`statusTitle` maydoni qo'shilsin — u holda ilova hech qachon holat nomini
o'zi tarjima qilmaydi.

### 3.4. Dizayndagi matn BE bilan mos emas

| Joy | Figma | BE (`ru`) |
|---|---|---|
| `delivered` chipi | «Выдано покупателю» | `steps[].title` = «Доставлен» |
| To'lov karta raqami | `****0070` | `maskedPan` = `5614 68** **** 5173` |

Hozir **BE qiymati** ko'rsatilmoqda (dizayndagi matn qattiq yozilmadi).
Agar «Выдано покупателю» to'g'ri matn bo'lsa — BE'dagi `delivered` bosqichi
sarlavhasi o'zgartirilsin. Agar `****0070` formati kerak bo'lsa —
BE `maskedPan` ni shu ko'rinishda bersin yoki ilovada oxirgi 4 raqam
kesib olinsin (qaysi biri to'g'ri — tasdiqlash kerak).

### 3.5. «Возвраты» — faqat ko'rish, so'rov yuborish yo'q

Hozirgi BE'da qaytarish (refund) **yaratish** endpointi yo'q. Faqat
`POST /api/market/orders/{id}/cancel` bor, u ham pulni qaytarmaydi
(docs: «Qaytarish jarayoni hozircha qo'lda, operator orqali»).

Shuning uchun «Возвраты» ekrani — bekor qilingan / qaytarilgan buyurtmalar
ro'yxati. Agar foydalanuvchi ilova orqali qaytarish so'rovi yubora olishi
kerak bo'lsa, quyidagilar kerak:

- `POST /api/market/orders/{id}/return` (sabab, izoh, rasm?)
- qaytarish holati (`requested` / `approved` / `rejected` / `refunded`)
- shu holatlar uchun Figma ekranlari (hozir yo'q)

### 3.6. Bo'sh holat matni dizaynda noto'g'ri

Figma'dagi bo'sh holat: «Пока ничего нет» / «Вы еще ничего не добавили
в корзину». Ikkinchi qator **savat** haqida — «Возвраты» ekraniga mos emas.

Hozir dizayndagi matn aynan ishlatildi (`market_orders_empty_subtitle`).
Dizayner har bir ekran uchun alohida matn bersa, `.arb` da 3 ta kalitga
bo'linadi.

---

## 4. Ulanmagan, lekin BE'da mavjud

Bu endpointlar uchun Figma ekranlari berilmagan:

| Endpoint | Nima uchun kerak |
|---|---|
| `GET /api/market/orders/{id}` | Buyurtma tafsiloti — bosqichlar chizig'i (`steps`), «3 товара» sarlavhasi |
| `POST /api/market/orders/{id}/cancel` | «Отменить заказ» tugmasi (`canCancel: true` bo'lganda) |

`MarketOrder` modelida `steps`, `canCancel`, `deliveryType`, `id` maydonlari
allaqachon bor — tafsilot ekrani kelganda repository'ga bitta metod qo'shish
kifoya.

---

## 5. Kodni ishga tushirish

Yangi `@freezed` bloc va `@JsonSerializable()` DTO'lar uchun generatsiya kerak:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Generatsiyadan keyin `MarketOrdersBloc` DI'ga (`injection.module.dart`)
avtomatik ro'yxatdan o'tadi.

Yangi `.arb` kalitlari uchun:

```bash
flutter gen-l10n --arb-dir=locale --template-arb-file=market_home_ru.arb --output-class=FeatureMarketHomeLocalizations --output-dir=lib/src/generated/locales/
```

> Generatsiya fayllariga (`app_localizations*.dart`, `assets.dart`) yangi
> kalitlar/asset'lar qo'lda ham qo'shib qo'yildi, shuning uchun generatsiyasiz
> ham kompilyatsiya bo'ladi — generatsiya ularni bir xil natija bilan
> qayta yozadi.

---

## 6. Dizaynda ikkilanish bo'lgan joylar

- **Kartochka ichidagi bo'shliqlar.** Birinchi kartochkada mahsulot bilan
  «Детали заказа» orasi **16 px**, 2- va 3-kartochkalarda **10 px**.
  Har uchala ekranda birinchi kartochka to'liq holatda chizilgani uchun
  **16 px** olindi.
- **Narx yakuni.** Faqat birinchi kartochkada chizilgan. Ilovada
  «Детали заказа» ochilganda **har doim** ko'rsatiladi.
- **Ochiq/yopiq holat.** Figma'da birinchi kartochka ochiq, qolganlari yopiq —
  ilovada ham shunday (`index == 0` ochiq).
