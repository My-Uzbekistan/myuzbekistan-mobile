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
  String get payment_method_title => 'To‘lov usuli';

  @override
  String get my_cards_title => 'Kartalarim';

  @override
  String get payment_history_title => 'Tarix';

  @override
  String get payment_qr_title => 'QR-to\'lov';

  @override
  String get card_number_label => 'Karta raqami';

  @override
  String get card_number_hint => 'Karta raqamini kiriting';

  @override
  String get card_expiry_label => 'Amal qilish muddati';

  @override
  String get card_expiry_full_label => 'Kartaning amal qilish muddati';

  @override
  String get card_expiry_hint => 'OO/YY';

  @override
  String get cvv_label => 'CVV / CVC';

  @override
  String get cvv_hint => '000';

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
  String get distanceM => 'm';

  @override
  String get distanceKm => 'km';

  @override
  String get action_all => 'Barchasi';

  @override
  String rates_last_update(Object date) {
    return 'Oxirgi yangilanish $date';
  }

  @override
  String get currency_calculator => 'Valyuta kalkulyatori';

  @override
  String get all_places => 'Barcha joylar';

  @override
  String get exchange_rates => 'Valyuta kurslari';

  @override
  String get uzs => 'Oʻzbek soʻmi';

  @override
  String get card_added_success_message => 'Karta muvaffaqiyatli qo‘shildi.';

  @override
  String get card_remove_notice => 'Kartangiz ilovadan o‘chiriladi';

  @override
  String get finance_title => 'Moliya';

  @override
  String get all_exchange_rates => 'Barcha valyuta kurslari';

  @override
  String get all_cards => 'Barchasi';

  @override
  String get fiscalReceipt => 'Soliq cheki';

  @override
  String verification_page_code_send_phone(Object phone) {
    return 'Tasdiqlash kodi $phone  raqamga yuborildi';
  }

  @override
  String get payment_title => 'To\'lov';

  @override
  String get enter_amount => 'Summani kiriting';

  @override
  String get action_change => 'O\'zgartirish';

  @override
  String get payment_order_details => 'Buyurtma tafsilotlari';

  @override
  String get payment_summary_title => 'To\'lov tafsilotlari';

  @override
  String get payment_summary_order => 'Buyurtma';

  @override
  String get payment_summary_delivery => 'Yetkazib berish';

  @override
  String get payment_summary_total => 'Jami:';

  @override
  String get payment_free_cancellation_title => 'Bepul bekor qilish';

  @override
  String payment_free_cancellation_subtitle(Object date) {
    return 'Pulni to\'liq qaytarish uchun $date gacha bekor qiling';
  }

  @override
  String get payment_details_title => 'Tafsilotlar';

  @override
  String get payment_status_success => 'Muvaffaqiyatli to\'landi';

  @override
  String get payment_status_pending => 'Kutilmoqda';

  @override
  String get payment_status_cancelled => 'Bekor qilindi';

  @override
  String get payment_status_refunded => 'Qaytarildi';

  @override
  String get action_retry => 'Qayta urinish';

  @override
  String get back_to_home => 'Bosh sahifaga qaytish';
}
