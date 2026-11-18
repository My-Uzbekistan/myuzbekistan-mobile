// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureMarketHomeLocalizationsUz extends FeatureMarketHomeLocalizations {
  FeatureMarketHomeLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get market_home_title => 'Market';

  @override
  String get market_profile_title => 'Profil';

  @override
  String get market_search_hint => 'Mahsulot topish';

  @override
  String get market_action_all => 'Barchasi';

  @override
  String get market_catalog => 'Katalog';

  @override
  String get market_currency_som => 'so\'m';

  @override
  String get market_page_failed_to_load => 'Sahifa yuklanmadi';

  @override
  String get market_something_went_wrong =>
      'Nimadir xato ketdi. Iltimos, qayta urinib ko\'ring.';

  @override
  String get market_refresh => 'Yangilash';

  @override
  String get market_search_history => 'Qidiruv tarixi';

  @override
  String get market_search_suggestions => 'Ko\'p qidiriladi';

  @override
  String market_search_results_count(Object count) {
    return '$count natija';
  }

  @override
  String get market_search_not_found_title => 'Hech narsa topilmadi';

  @override
  String get market_search_not_found_message =>
      'Bu so\'rov bo\'yicha hech narsa topilmadi, iltimos boshqa so\'zlar bilan qayta urinib ko\'ring';

  @override
  String market_category_products_count(Object count) {
    return '$count tovar';
  }

  @override
  String get market_sort_title => 'Saralash';

  @override
  String get market_sort_popular => 'Avval ommabop';

  @override
  String get market_sort_cheap => 'Avval arzoni';

  @override
  String get market_sort_expensive => 'Avval qimmati';

  @override
  String get market_sort_rating => 'Yuqori reyting';

  @override
  String get market_profile_orders => 'Buyurtmalar';

  @override
  String get market_profile_purchased => 'Sotib olingan mahsulotlar';

  @override
  String get market_profile_returns => 'Qaytarishlar';

  @override
  String market_order_number(Object number) {
    return 'Buyurtma raqami: #$number';
  }

  @override
  String market_order_title(Object number) {
    return '#$number';
  }

  @override
  String get market_order_items_title => 'Mahsulotlar';

  @override
  String market_order_items_count(Object count) {
    return '$count ta mahsulot';
  }

  @override
  String get market_order_details => 'Buyurtma tafsilotlari';

  @override
  String get market_order_payment_method => 'To\'lov usuli';

  @override
  String get market_order_receive_method => 'Olish usuli';

  @override
  String get market_order_delivery_address => 'Yetkazib berish manzili';

  @override
  String get market_order_recipient_phone => 'Qabul qiluvchi telefoni';

  @override
  String get market_order_cancel_action => 'Buyurtmani bekor qilish';

  @override
  String get market_order_cancel_title => 'Buyurtma bekor qilinsinmi?';

  @override
  String get market_order_cancel_message =>
      'Mahsulotlar omborga qaytariladi. Pulni qaytarish operator orqali amalga oshiriladi.';

  @override
  String get market_order_cancel_keep => 'Buyurtma qolsin';

  @override
  String get market_order_summary_products => 'Buyurtma';

  @override
  String get market_order_summary_delivery => 'Yetkazib berish';

  @override
  String get market_order_summary_total => 'Jami:';

  @override
  String market_order_quantity(Object count) {
    return '$count dona';
  }

  @override
  String market_order_status(String status) {
    String _temp0 = intl.Intl.selectLogic(status, {
      'draft': 'Qoralama',
      'awaitingPayment': 'To\'lov kutilmoqda',
      'paid': 'Yangi',
      'preparing': 'Ishlanmoqda',
      'ready': 'Tayyor',
      'delivering': 'Yetkazilmoqda',
      'delivered': 'Xaridorga topshirildi',
      'cancelled': 'Bekor qilindi',
      'refunded': 'Qaytarildi',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get market_orders_empty_title => 'Hozircha hech narsa yo\'q';

  @override
  String get market_orders_empty_subtitle =>
      'Siz hali savatga hech narsa qo\'shmagansiz';

  @override
  String get market_detail_about => 'Mahsulot haqida';

  @override
  String get market_detail_show_more => 'Ko\'proq ko\'rsatish';

  @override
  String get market_detail_delivery => 'Qanday olish';

  @override
  String get market_detail_seller => 'Sotuvchi haqida';

  @override
  String market_detail_sold_this_month(Object count) {
    return '$count ta bu oyda sotib olingan';
  }

  @override
  String get market_detail_delivery_free => 'bepul';

  @override
  String market_detail_distance_from_us(Object distance) {
    return 'Siz bizdan $distance masofadasiz';
  }

  @override
  String get market_detail_build_route => 'Marshrut tuzish';

  @override
  String get market_detail_buy_now => 'Hozir olish';

  @override
  String get market_detail_add_to_cart => 'Savatga';

  @override
  String get market_detail_out_of_stock => 'Mavjud emas';

  @override
  String get market_distance_meter => 'm';

  @override
  String get market_distance_km => 'km';

  @override
  String get market_cart_total => 'Jami';

  @override
  String get market_cart_go_to_cart => 'Savatga o\'tish';

  @override
  String get market_city_title => 'Lokatsiya';
}
