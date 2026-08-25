// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureBasketLocalizationsEn extends FeatureBasketLocalizations {
  FeatureBasketLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get basket_title => 'Basket';

  @override
  String get basket_select_all => 'Select all';

  @override
  String basket_products_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count products',
      one: '$count product',
      zero: '0 products',
    );
    return '$_temp0';
  }

  @override
  String get basket_price_details => 'Price details';

  @override
  String get basket_total => 'Total:';

  @override
  String get basket_checkout => 'Checkout';

  @override
  String get basket_currency_som => 'sum';

  @override
  String get basket_empty_title => 'Nothing here yet';

  @override
  String get basket_empty_subtitle =>
      'You have not added anything to your basket yet';

  @override
  String get basket_clear_title => 'Clear basket';

  @override
  String get basket_clear_message =>
      'Are you sure you want to clear the basket?';

  @override
  String get basket_clear_confirm => 'Clear';

  @override
  String get basket_cancel => 'Cancel';

  @override
  String get basket_page_failed_to_load => 'The page did not load';

  @override
  String get basket_something_went_wrong =>
      'Something went wrong. Please try again.';

  @override
  String get basket_refresh => 'Refresh';

  @override
  String get basket_checkout_title => 'Order checkout';

  @override
  String get basket_checkout_order_details => 'Order details';

  @override
  String get basket_checkout_delivery_method => 'Pickup method';

  @override
  String get basket_checkout_address => 'Pickup address';

  @override
  String get basket_checkout_phone => 'Recipient phone';

  @override
  String get basket_checkout_products => 'Products';

  @override
  String get basket_checkout_delivery => 'Delivery';

  @override
  String get basket_checkout_total => 'Total';

  @override
  String get basket_checkout_order => 'Place order';

  @override
  String get basket_free_cancellation_title => 'Free cancellation';

  @override
  String basket_free_cancellation_subtitle(Object date) {
    return 'Cancel before $date for a full refund';
  }

  @override
  String get basket_checkout_delivery_free => 'Free';

  @override
  String get basket_checkout_address_add => 'Add address';

  @override
  String get basket_checkout_address_line => 'Address';

  @override
  String get basket_checkout_address_district => 'District';

  @override
  String get basket_checkout_address_empty => 'You have no saved addresses yet';

  @override
  String get basket_action_delete => 'Delete';

  @override
  String get basket_action_edit => 'Edit';
}
