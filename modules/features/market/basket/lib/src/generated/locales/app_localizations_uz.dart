// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureBasketLocalizationsUz extends FeatureBasketLocalizations {
  FeatureBasketLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get basket_title => 'Savat';

  @override
  String get basket_select_all => 'Hammasini tanlash';

  @override
  String basket_products_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mahsulot',
      zero: '0 mahsulot',
    );
    return '$_temp0';
  }

  @override
  String get basket_price_details => 'Narx tafsilotlari';

  @override
  String get basket_total => 'Jami:';

  @override
  String get basket_checkout => 'Rasmiylashtirishga';

  @override
  String get basket_currency_som => 'so\'m';

  @override
  String get basket_empty_title => 'Hozircha hech narsa yo\'q';

  @override
  String get basket_empty_subtitle =>
      'Siz hali savatga hech narsa qo\'shmadingiz';

  @override
  String get basket_clear_title => 'Savatni tozalash';

  @override
  String get basket_clear_message => 'Savatni tozalamoqchimisiz?';

  @override
  String get basket_clear_confirm => 'Tozalash';

  @override
  String get basket_cancel => 'Bekor qilish';

  @override
  String get basket_page_failed_to_load => 'Sahifa yuklanmadi';

  @override
  String get basket_something_went_wrong =>
      'Nimadir xato ketdi. Iltimos, qaytadan urinib ko\'ring.';

  @override
  String get basket_refresh => 'Yangilash';

  @override
  String get basket_checkout_title => 'Buyurtmani rasmiylashtirish';

  @override
  String get basket_checkout_order_details => 'Buyurtma tafsilotlari';

  @override
  String get basket_checkout_delivery_method => 'Olish usuli';

  @override
  String get basket_checkout_address => 'Olish manzili';

  @override
  String get basket_checkout_phone => 'Qabul qiluvchi telefoni';

  @override
  String get basket_checkout_products => 'Mahsulotlar';

  @override
  String get basket_checkout_delivery => 'Yetkazib berish';

  @override
  String get basket_checkout_total => 'Jami';

  @override
  String get basket_checkout_order => 'Buyurtma berish';

  @override
  String get basket_free_cancellation_title => 'Bepul bekor qilish';

  @override
  String basket_free_cancellation_subtitle(Object date) {
    return 'Pulni to\'liq qaytarish uchun $date gacha bekor qiling';
  }

  @override
  String get basket_checkout_delivery_free => 'Bepul';

  @override
  String get basket_checkout_address_add => 'Manzil qo\'shish';

  @override
  String get basket_checkout_address_line => 'Manzil';

  @override
  String get basket_checkout_address_district => 'Tuman';

  @override
  String get basket_checkout_address_empty =>
      'Sizda hali saqlangan manzil yo\'q';

  @override
  String get basket_action_delete => 'O\'chirish';

  @override
  String get basket_action_edit => 'O\'zgartirish';
}
