// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureFinanceLocalizationsUz extends FeatureFinanceLocalizations {
  FeatureFinanceLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String currency(Object amount) {
    return '$amount so\'m';
  }

  @override
  String get pay => 'Toʻlash';

  @override
  String get paymentAmount => 'Toʻlov summasi';

  @override
  String get addCard => 'Karta qoʻshish';

  @override
  String get cardAddSmsSent =>
      'Bank kartasini qoʻshish uchun tasdiqlash kodi SMS orqali yuborildi.';

  @override
  String get payment_success => 'To‘lov muvaffaqiyatli amalga oshirildi';

  @override
  String get payment_method => 'Payment method';

  @override
  String get my_cards_title => 'Kartalarim';

  @override
  String get payment_history_title => 'Tarix';

  @override
  String get payment_qr_title => 'QR To\'lov';

  @override
  String get card_number_label => 'Karta raqami';

  @override
  String get card_expiry_label => 'Amal qilish muddati';

  @override
  String get card_expiry_hint => 'OO/YY';

  @override
  String get card_holder_label => 'Karta egasi nomi';

  @override
  String get card_holder_hint => 'Egasining ismi';

  @override
  String get phone_number_label => 'Telefon raqami';

  @override
  String resend_in_seconds(Object time) {
    return 'Qayta yuborish $time soniyadan so‘ng';
  }

  @override
  String get action_resend => 'Qayta yuborish';

  @override
  String get payment_details => 'To‘lov tafsilotlari';

  @override
  String get editing => 'Tahrirlash';

  @override
  String get alert_title_delete_card => 'Kartani o\'chirasizmi?';

  @override
  String get action_delete => 'O\'chirish';

  @override
  String get action_cancel => 'Bekor qilish';

  @override
  String get nearest_places => 'Eng yaqin joylar';

  @override
  String get currency_calculator => 'Valyuta kalkulyatori';

  @override
  String get show_all_places => 'Hammasi';
}
