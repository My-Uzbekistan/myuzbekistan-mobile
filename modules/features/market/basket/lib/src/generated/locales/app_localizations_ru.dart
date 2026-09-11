// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureBasketLocalizationsRu extends FeatureBasketLocalizations {
  FeatureBasketLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get basket_title => 'Корзина';

  @override
  String get basket_select_all => 'Выбрать все';

  @override
  String basket_products_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count товаров',
      many: '$count товаров',
      few: '$count товара',
      one: '$count товар',
      zero: '0 товаров',
    );
    return '$_temp0';
  }

  @override
  String get basket_price_details => 'Детали цены';

  @override
  String get basket_total => 'Итого:';

  @override
  String get basket_checkout => 'К оформлению';

  @override
  String get basket_currency_som => 'сум';

  @override
  String get basket_empty_title => 'Пока ничего нет';

  @override
  String get basket_empty_subtitle => 'Вы еще ничего не добавили в корзину';

  @override
  String get basket_clear_title => 'Очистить корзину';

  @override
  String get basket_clear_message => 'Вы уверены что хотите очистить корзину?';

  @override
  String get basket_clear_confirm => 'Очистить';

  @override
  String get basket_cancel => 'Отмена';

  @override
  String get basket_page_failed_to_load => 'Страница не загрузилась';

  @override
  String get basket_something_went_wrong =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get basket_refresh => 'Обновить';

  @override
  String get basket_checkout_title => 'Оформление заказа';

  @override
  String get basket_checkout_order_details => 'Детали заказа';

  @override
  String get basket_checkout_delivery_method => 'Способ получения';

  @override
  String get basket_checkout_address => 'Адрес получения';

  @override
  String get basket_checkout_phone => 'Телефон получателя';

  @override
  String get basket_checkout_phone_add => 'Добавить номер телефона';

  @override
  String get basket_checkout_phone_label => 'Номер телефона';

  @override
  String get basket_checkout_products => 'Товары';

  @override
  String get basket_checkout_delivery => 'Доставка';

  @override
  String get basket_checkout_total => 'Итого';

  @override
  String get basket_checkout_order => 'Заказать';

  @override
  String get basket_free_cancellation_title => 'Бесплатная отмена';

  @override
  String basket_free_cancellation_subtitle(Object date) {
    return 'Отмените до $date для полного возврата средств';
  }

  @override
  String get basket_checkout_delivery_free => 'Бесплатно';

  @override
  String get basket_checkout_address_add => 'Добавить адрес';

  @override
  String get basket_checkout_address_line => 'Адрес';

  @override
  String get basket_checkout_address_district => 'Район';

  @override
  String get basket_checkout_address_empty =>
      'У вас пока нет сохраненных адресов';

  @override
  String get basket_action_delete => 'Удалить';

  @override
  String get basket_action_edit => 'Изменить';

  @override
  String get basket_checkout_store_address => 'Адрес магазина';

  @override
  String get basket_checkout_delivery_address => 'Адрес доставки';

  @override
  String get basket_checkout_my_addresses => 'Мои адреса';

  @override
  String get basket_checkout_address_new => 'Новый адрес';

  @override
  String get basket_checkout_pickup_closest => 'Самый близкий';

  @override
  String basket_checkout_pickup_distance(Object distance) {
    return '$distance км';
  }

  @override
  String get basket_checkout_pickup_empty => 'Пока нет доступных магазинов';

  @override
  String get basket_checkout_delivery_empty => 'Способ получения недоступен';

  @override
  String get basket_checkout_delivery_unavailable =>
      'Для этого региона нет доступных способов получения. Попробуйте позже';

  @override
  String get basket_checkout_delivery_no_region =>
      'Адрес не отмечен на карте — регион доставки не определён. Измените адрес и выберите точку на карте';

  @override
  String get basket_checkout_delivery_select => 'Выберите способ получения';

  @override
  String get basket_map_title => 'Выберите адресс доставки';

  @override
  String get basket_map_add => 'Добавить';

  @override
  String get basket_map_save => 'Сохранить';

  @override
  String get basket_map_address_empty => 'Точка не определена';

  @override
  String get basket_map_delete_title => 'Удалить локацию?';

  @override
  String get basket_map_delete_message =>
      'Вы уверены что хотите удалить эту локацию?';
}
