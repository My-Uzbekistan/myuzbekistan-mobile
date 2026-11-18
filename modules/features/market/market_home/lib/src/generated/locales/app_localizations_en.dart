// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureMarketHomeLocalizationsEn extends FeatureMarketHomeLocalizations {
  FeatureMarketHomeLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get market_home_title => 'Market';

  @override
  String get market_profile_title => 'Profile';

  @override
  String get market_search_hint => 'Find products';

  @override
  String get market_action_all => 'All';

  @override
  String get market_catalog => 'Catalog';

  @override
  String get market_currency_som => 'sum';

  @override
  String get market_page_failed_to_load => 'The page failed to load';

  @override
  String get market_something_went_wrong =>
      'Something went wrong. Please try again.';

  @override
  String get market_refresh => 'Refresh';

  @override
  String get market_search_history => 'Search history';

  @override
  String get market_search_suggestions => 'Frequently searched';

  @override
  String market_search_results_count(Object count) {
    return '$count results';
  }

  @override
  String get market_search_not_found_title => 'Nothing found';

  @override
  String get market_search_not_found_message =>
      'Nothing was found for this query, please try again with different words';

  @override
  String market_category_products_count(Object count) {
    return '$count products';
  }

  @override
  String get market_sort_title => 'Sorting';

  @override
  String get market_sort_popular => 'Most popular first';

  @override
  String get market_sort_cheap => 'Cheapest first';

  @override
  String get market_sort_expensive => 'Most expensive first';

  @override
  String get market_sort_rating => 'Highest rating';

  @override
  String get market_profile_orders => 'Orders';

  @override
  String get market_profile_purchased => 'Purchased items';

  @override
  String get market_profile_returns => 'Returns';

  @override
  String market_order_number(Object number) {
    return 'Order number: #$number';
  }

  @override
  String market_order_title(Object number) {
    return '#$number';
  }

  @override
  String get market_order_items_title => 'Products';

  @override
  String market_order_items_count(Object count) {
    return '$count products';
  }

  @override
  String get market_order_details => 'Order details';

  @override
  String get market_order_payment_method => 'Payment method';

  @override
  String get market_order_receive_method => 'Delivery method';

  @override
  String get market_order_delivery_address => 'Delivery address';

  @override
  String get market_order_recipient_phone => 'Recipient phone';

  @override
  String get market_order_cancel_action => 'Cancel order';

  @override
  String get market_order_cancel_title => 'Cancel the order?';

  @override
  String get market_order_cancel_message =>
      'The items will return to stock. The refund is handled by an operator.';

  @override
  String get market_order_cancel_keep => 'Keep order';

  @override
  String get market_order_summary_products => 'Order';

  @override
  String get market_order_summary_delivery => 'Delivery';

  @override
  String get market_order_summary_total => 'Total:';

  @override
  String market_order_quantity(Object count) {
    return '$count pcs';
  }

  @override
  String market_order_status(String status) {
    String _temp0 = intl.Intl.selectLogic(status, {
      'draft': 'Draft',
      'awaitingPayment': 'Awaiting payment',
      'paid': 'New',
      'preparing': 'Processing',
      'ready': 'Ready',
      'delivering': 'Delivery',
      'delivered': 'Handed to customer',
      'cancelled': 'Cancelled',
      'refunded': 'Refunded',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get market_orders_empty_title => 'Nothing here yet';

  @override
  String get market_orders_empty_subtitle =>
      'You haven\'t added anything to the cart yet';

  @override
  String get market_detail_about => 'About the item';

  @override
  String get market_detail_show_more => 'Show more';

  @override
  String get market_detail_delivery => 'How to get it';

  @override
  String get market_detail_seller => 'About the seller';

  @override
  String market_detail_sold_this_month(Object count) {
    return '$count bought this month';
  }

  @override
  String get market_detail_delivery_free => 'free';

  @override
  String market_detail_distance_from_us(Object distance) {
    return 'You are $distance away from us';
  }

  @override
  String get market_detail_build_route => 'Get directions';

  @override
  String get market_detail_buy_now => 'Buy now';

  @override
  String get market_detail_add_to_cart => 'Add to cart';

  @override
  String get market_detail_out_of_stock => 'Out of stock';

  @override
  String get market_distance_meter => 'm';

  @override
  String get market_distance_km => 'km';

  @override
  String get market_cart_total => 'Total';

  @override
  String get market_cart_go_to_cart => 'Go to cart';

  @override
  String get market_city_title => 'Location';
}
