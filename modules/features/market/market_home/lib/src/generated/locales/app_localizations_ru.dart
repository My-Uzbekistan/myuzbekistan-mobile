// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureMarketHomeLocalizationsRu extends FeatureMarketHomeLocalizations {
  FeatureMarketHomeLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get market_home_title => 'Маркет';

  @override
  String get market_profile_title => 'Профиль';

  @override
  String get market_search_hint => 'Найти товары';

  @override
  String get market_action_all => 'Все';

  @override
  String get market_catalog => 'Каталог';

  @override
  String get market_currency_som => 'сум';

  @override
  String get market_page_failed_to_load => 'Страница не загрузилась';

  @override
  String get market_something_went_wrong =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get market_refresh => 'Обновить';

  @override
  String get market_search_history => 'История поиска';

  @override
  String get market_search_suggestions => 'Часто ищут';

  @override
  String market_search_results_count(Object count) {
    return '$count результатов';
  }

  @override
  String get market_search_not_found_title => 'Ничего не найдено';

  @override
  String get market_search_not_found_message =>
      'По этому запросу ничего не найдено, пожалуйста, попробуйте еще раз с другими словами';

  @override
  String market_category_products_count(Object count) {
    return '$count товаров';
  }

  @override
  String get market_sort_title => 'Сортировка';

  @override
  String get market_sort_popular => 'Сначала популярные';

  @override
  String get market_sort_cheap => 'Сначала дешевле';

  @override
  String get market_sort_expensive => 'Сначала дороже';

  @override
  String get market_sort_rating => 'Высокий рейтинг';

  @override
  String get market_profile_orders => 'Заказы';

  @override
  String get market_profile_purchased => 'Купленные товары';

  @override
  String get market_profile_returns => 'Возвраты';

  @override
  String market_order_number(Object number) {
    return 'Номер заказа: #$number';
  }

  @override
  String market_order_title(Object number) {
    return '#$number';
  }

  @override
  String get market_order_items_title => 'Товары';

  @override
  String market_order_items_count(Object count) {
    return '$count товара';
  }

  @override
  String get market_order_details => 'Детали заказа';

  @override
  String get market_order_payment_method => 'Способ оплаты';

  @override
  String get market_order_receive_method => 'Способ получения';

  @override
  String get market_order_delivery_address => 'Адрес доставки';

  @override
  String get market_order_recipient_phone => 'Телефон получателя';

  @override
  String get market_order_cancel_action => 'Отменить заказ';

  @override
  String get market_order_cancel_title => 'Отменить заказ?';

  @override
  String get market_order_cancel_message =>
      'Товары вернутся на склад. Возврат средств оформляет оператор.';

  @override
  String get market_order_cancel_keep => 'Оставить заказ';

  @override
  String get market_order_summary_products => 'Заказ';

  @override
  String get market_order_summary_delivery => 'Доставка';

  @override
  String get market_order_summary_total => 'Итого:';

  @override
  String market_order_quantity(Object count) {
    return '$count штук';
  }

  @override
  String market_order_status(String status) {
    String _temp0 = intl.Intl.selectLogic(status, {
      'draft': 'Черновик',
      'awaitingPayment': 'Ожидает оплаты',
      'paid': 'Новый',
      'preparing': 'Обработка',
      'ready': 'Готово',
      'delivering': 'Доставка',
      'delivered': 'Выдано покупателю',
      'cancelled': 'Отменён',
      'refunded': 'Возвращено',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get market_orders_empty_title => 'Пока ничего нет';

  @override
  String get market_orders_empty_subtitle =>
      'Вы еще ничего не добавили в корзину';

  @override
  String get market_detail_about => 'О товаре';

  @override
  String get market_detail_show_more => 'Показать больше';

  @override
  String get market_detail_delivery => 'Как получить';

  @override
  String get market_detail_seller => 'О продавце';

  @override
  String market_detail_sold_this_month(Object count) {
    return '$count купили в этом месяце';
  }

  @override
  String get market_detail_delivery_free => 'бесплатно';

  @override
  String market_detail_distance_from_us(Object distance) {
    return 'Вы находитесь в $distance от нас';
  }

  @override
  String get market_detail_build_route => 'Построить маршрут';

  @override
  String get market_detail_buy_now => 'Купить сейчас';

  @override
  String get market_detail_add_to_cart => 'В корзину';

  @override
  String get market_detail_out_of_stock => 'Нет в наличии';

  @override
  String get market_distance_meter => 'м';

  @override
  String get market_distance_km => 'км';

  @override
  String get market_cart_total => 'Итого';

  @override
  String get market_cart_go_to_cart => 'Перейти в корзину';

  @override
  String get market_city_title => 'Локация';
}
