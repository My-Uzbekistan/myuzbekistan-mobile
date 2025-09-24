// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureFinanceLocalizationsEn extends FeatureFinanceLocalizations {
  FeatureFinanceLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String currency(Object amount) {
    return '$amount sum';
  }

  @override
  String get pay => 'Pay';

  @override
  String get paymentAmount => 'Payment amount';

  @override
  String get addCard => 'Add card';

  @override
  String get cardAddSmsSent =>
      'We’ve sent an SMS with a confirmation code to add your bank card.';

  @override
  String get payment_success => 'Payment was successful';

  @override
  String get payment_method_title => 'Payment method';

  @override
  String get my_cards_title => 'My cards';

  @override
  String get payment_history_title => 'History';

  @override
  String get payment_qr_title => 'QR Pay';

  @override
  String get card_number_label => 'Card number';

  @override
  String get card_expiry_label => 'Expiry date';

  @override
  String get card_expiry_hint => 'MM/YY';

  @override
  String get card_holder_label => 'Name on card';

  @override
  String get card_holder_hint => 'Cardholder';

  @override
  String get phone_number_label => 'Phone number';

  @override
  String resend_in_seconds(Object time) {
    return 'Resend in $time sec';
  }

  @override
  String get action_resend => 'Resend';

  @override
  String get payment_details => 'Payment details';

  @override
  String get editing => 'Editing';

  @override
  String get alert_title_delete_card => 'Do you want to delete the card?';

  @override
  String get action_delete => 'Delete';

  @override
  String get action_cancel => 'Cancel';

  @override
  String get nearest_places => 'Nearest places';

  @override
  String get currency_calculator => 'Currency calculator';

  @override
  String get all_places => 'All places';

  @override
  String get exchange_rates => 'Exchange rates';

  @override
  String get uzs => 'Uzbek som';

  @override
  String get card_added_success_message => 'The card was successfully added.';

  @override
  String get card_remove_notice => 'Your card will be removed from the app.';

  @override
  String get finance_title => 'Finance';

  @override
  String get all_exchange_rates => 'All exchange rates';

  @override
  String get all_cards => 'All cards';

  @override
  String get fiscalReceipt => 'Fiscal receipt';
}
