// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureMoreLocalizationsUz extends FeatureMoreLocalizations {
  FeatureMoreLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get nav_home => 'Bosh sahifa';

  @override
  String get nav_map => 'Xarita';

  @override
  String get nav_transfer => 'Yo\'nalish';

  @override
  String get nav_payment => 'To\'lov';

  @override
  String get nav_more => 'Ko‘proq';

  @override
  String get language => 'Ilova tili';

  @override
  String get theme => 'Dizayn mavzusi';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(
      lang,
      {
        'en': 'Inglizcha',
        'ru': 'Ruscha',
        'uz': 'O\'zbekcha',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(
      theme,
      {
        'system': 'Tizim mavzusi',
        'light': 'Yorug\' mavzu',
        'dark': 'Qorong\'i mavzu',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get guest => 'Salom Mehmon';

  @override
  String get action_all => 'Barchasi';

  @override
  String currency_uzs(Object value) {
    return '$value so\'m';
  }

  @override
  String nPhotos(Object n) {
    return '$n ta rasm';
  }

  @override
  String get getStarted => 'Boshlash';

  @override
  String get logout => 'Chiqish';

  @override
  String get getStartedDescription => 'Imkoniyatlardan to‘liq foydalanish uchun tizimga kiring va oʻzingiz yoqtirgan narsalarni ham saqlab oling';

  @override
  String get continueWithGoogle => 'Google orqali kirish';

  @override
  String get continueWithApple => 'Apple orqali kirish';

  @override
  String get averageCheck => 'O‘rtacha baxo';

  @override
  String get search => 'Qidiruv';

  @override
  String get rating => 'Reyting';

  @override
  String get favorites => 'Tanlanganlar';

  @override
  String n_items(Object n) {
    return '$n ta element';
  }

  @override
  String get select_location => 'Joylashuvni tanlang';

  @override
  String get about => 'Haqida';

  @override
  String get uzbekistan => 'O\'zbekiston';

  @override
  String get exchange_rates => 'Valyuta kurslari';

  @override
  String get uzbek_currency => '*O‘zbekiston valyutasi (UZS) so‘m deb ataladi';

  @override
  String get exchange_banks => 'Valyuta ayirboshlash banklari';

  @override
  String get loading_data => 'Ma\'lumot yuklanmoqda';

  @override
  String get coming_soon => 'Tez kunlarda!';

  @override
  String get coming_soon_message => 'Biz ajoyib narsa ustida ishlayapmiz.';

  @override
  String get nothing_found => 'Hech narsa topilmadi';

  @override
  String get nothing_found_message => 'Hech narsa topilmadi. Qayta qidiring!';

  @override
  String get refresh => 'Yangilash';

  @override
  String get pageFailedToLoad => 'Sahifa yuklanmadi';

  @override
  String get something_went_wrong => 'Nimadir xato ketdi. Iltimos, qayta urinib ko‘ring.';

  @override
  String get generalEmergency => 'Favqulodda yordam';

  @override
  String get touristPolice => 'Turistlar politsiyasi';

  @override
  String get fire => 'Yong‘in xizmati';

  @override
  String get police => 'Politsiya';

  @override
  String get medical => 'Tez yordam';

  @override
  String get gasEmergency => 'Gaz xizmati';

  @override
  String get emergencyContacts => 'Favqulodda kontaktlar';

  @override
  String get usefulTips => 'Foydali maslahatlar';

  @override
  String get logoutConfirmation => 'Tizimdan chiqishni xohlaysizmi?';

  @override
  String get deleteAccountConfirmation => 'Accountni o\'chirishni xohlaysizmi?';

  @override
  String get deleteAccount => 'Accountni o\'chirish';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get warning => 'Ogohlantirish';

  @override
  String get guest_chose => 'Mehmonlar tanlovi';

  @override
  String get distanceKm => 'km';

  @override
  String get distanceM => 'm';
}
