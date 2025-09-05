// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureMoreLocalizationsUz extends FeatureMoreLocalizations {
  FeatureMoreLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get language => 'Ilova tili';

  @override
  String get theme => 'Dizayn mavzusi';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'Inglizcha',
      'ru': 'Ruscha',
      'uz': 'O\'zbekcha',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String langItemDefault(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'English',
      'ru': 'Русский',
      'uz': 'O\'zbekcha',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(theme, {
      'system': 'Tizimli',
      'light': 'Yorug\'',
      'dark': 'Qorong\'i',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get guest => 'Mehmon';

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
  String get getStartedDescription =>
      'Imkoniyatlardan to‘liq foydalanish uchun tizimga kiring va oʻzingiz yoqtirgan narsalarni ham saqlab oling';

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
  String get something_went_wrong =>
      'Nimadir xato ketdi. Iltimos, qayta urinib ko‘ring.';

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
  String get logout => 'Ilovadan chiqish';

  @override
  String get logout_confirm_title => 'Ilovadan chiqish?';

  @override
  String get exit => 'Chiqish';

  @override
  String get logoutConfirmation => 'Ilovadan chiqishni xohlaysizmi';

  @override
  String get deleteAccountConfirmation =>
      'Sizning hisobingiz va barcha ma’lumotlaringiz, jumladan saqlangan joylar va bank kartalari o‘chiriladi.';

  @override
  String get delete_account_confirm_title => 'Hisobni o‘chirish?';

  @override
  String get deleteAccount => 'Accountni o\'chirish';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get delete => 'O\'chirish';

  @override
  String get warning => 'Ogohlantirish';

  @override
  String get guest_chose => 'Mehmonlar tanlovi';

  @override
  String get distanceKm => 'km';

  @override
  String get distanceM => 'm';

  @override
  String get continueAsGuest => 'Mehmon sifatida davom etish';

  @override
  String get notification => 'Bildirishnomalar';

  @override
  String get pin_code => 'PIN-kod';

  @override
  String get biometric_auth => 'Biometrik kirish';

  @override
  String get prayer_time_widget => 'Namoz vaqti vidjeti';

  @override
  String get about_app => 'Ilova haqida';

  @override
  String get log_in => 'Kirish';

  @override
  String get version => 'Versiya';

  @override
  String get privacy_policy => 'Maxfiylik siyosati';

  @override
  String get licenses => 'Litsenziyalar';

  @override
  String get pin_code_create_title => 'Kirish ko\'zidini yaratish';

  @override
  String get pin_code_repeat => 'Kodni takrorlang';

  @override
  String get pinMismatch => 'Kod mos kelmaydi';

  @override
  String get resetPinTitle => 'PIN-kodni tiklash';

  @override
  String get resetPinMessage =>
      'Barcha maʼlumotlar tiklab bo‘lmas darajada oʻchiriladi. Qayta roʻyxatdan oʻtish talab qilinadi.';

  @override
  String get resetPinAction => 'Kodni\ntiklash';

  @override
  String get changePinTitle => 'PIN-kodni o‘zgartirish';

  @override
  String get enter_new_code => 'Yangi kodni kiriting';

  @override
  String get delete_code => 'Kodni o‘chirish';

  @override
  String get delete_pin_title => 'PIN-kodni o‘chirish';

  @override
  String get delete_pin_message =>
      'PIN orqali kirish o‘chirib qo‘yiladi. Siz istalgan vaqtda yangi PIN yaratishingiz mumkin';

  @override
  String get pincode_created => 'PinCode muvaffaqqiyatli yaratildi';

  @override
  String get pincode_deleted => 'PinCode o‘chirildi';

  @override
  String get enter_code => 'Kodni kiriting';

  @override
  String get authPrompt => 'Ilovaga kirish uchun autentifikatsiyadan o‘ting';

  @override
  String get fiscalReceipt => 'Soliq cheki';
}
