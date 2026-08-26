// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureFinanceLocalizationsRu extends FeatureFinanceLocalizations {
  FeatureFinanceLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String currency(Object amount) {
    return '$amount сум';
  }

  @override
  String get pay => 'Оплатить';

  @override
  String get paymentAmount => 'Сумма платежа';

  @override
  String get addCard => 'Добавить карту';

  @override
  String get cardAddSmsSent =>
      'Отправили SMS с кодом подтверждения для добавления банковской карты';

  @override
  String get payment_success => 'Оплата прошла успешно';

  @override
  String get payment_method_title => 'Способ оплаты';

  @override
  String get my_cards_title => 'Мои карты';

  @override
  String get payment_history_title => 'История';

  @override
  String get payment_qr_title => 'QR-оплата';

  @override
  String get card_number_label => 'Номер карты';

  @override
  String get card_number_hint => 'Введите номер карты';

  @override
  String get card_expiry_label => 'Срок действия';

  @override
  String get card_expiry_full_label => 'Срок действия карты';

  @override
  String get card_expiry_hint => 'ММ/ГГ';

  @override
  String get cvv_label => 'CVV / CVC';

  @override
  String get cvv_hint => '000';

  @override
  String get card_holder_label => 'Имя на карте';

  @override
  String get card_holder_hint => 'Владелец';

  @override
  String get phone_number_label => 'Номер телефона';

  @override
  String resend_in_seconds(Object time) {
    return 'Отправить снова через $time сек';
  }

  @override
  String get action_resend => 'Отправить снова';

  @override
  String get payment_details => 'Детали платежа';

  @override
  String get editing => 'Редактирование';

  @override
  String get alert_title_delete_card => 'Удалить карту?';

  @override
  String get action_delete => 'Удалить';

  @override
  String get action_cancel => 'Отмена';

  @override
  String get nearest_places => 'Ближайшие места';

  @override
  String get distanceM => 'м';

  @override
  String get distanceKm => 'км';

  @override
  String get action_all => 'Все';

  @override
  String rates_last_update(Object date) {
    return 'Последнее обновление $date';
  }

  @override
  String get currency_calculator => 'Калькулятор валют';

  @override
  String get all_places => 'Все места';

  @override
  String get exchange_rates => 'Курсы валют';

  @override
  String get uzs => 'Узбекский сум';

  @override
  String get card_added_success_message => 'Карта успешно добавлена.';

  @override
  String get card_remove_notice => 'Ваша карта будет удалена из приложения';

  @override
  String get finance_title => 'Финансы';

  @override
  String get all_exchange_rates => 'Все курсы валют';

  @override
  String get all_cards => 'Все карты';

  @override
  String get fiscalReceipt => 'Фискальный чек';

  @override
  String verification_page_code_send_phone(Object phone) {
    return 'Код подтверждения отправлен на $phone';
  }

  @override
  String get payment_title => 'Оплата';

  @override
  String get enter_amount => 'Введите сумму';

  @override
  String get action_change => 'Изменить';

  @override
  String get payment_order_details => 'Детали заказа';

  @override
  String get payment_summary_title => 'Детали оплаты';

  @override
  String get payment_summary_order => 'Заказ';

  @override
  String get payment_summary_delivery => 'Доставка';

  @override
  String get payment_summary_total => 'Итого:';

  @override
  String get payment_free_cancellation_title => 'Бесплатная отмена';

  @override
  String payment_free_cancellation_subtitle(Object date) {
    return 'Отмените до $date для полного возврата средств';
  }

  @override
  String get payment_details_title => 'Детали';

  @override
  String get payment_status_success => 'Успешно оплачено';

  @override
  String get payment_status_pending => 'В ожидании';

  @override
  String get payment_status_cancelled => 'Отменено';

  @override
  String get payment_status_refunded => 'Возврат';

  @override
  String get action_retry => 'Повторить';

  @override
  String get back_to_home => 'Вернуться на главную';
}
