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
  String get basket_checkout_phone_add => 'Add phone number';

  @override
  String get basket_checkout_phone_label => 'Phone number';

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

  @override
  String get basket_checkout_store_address => 'Store address';

  @override
  String get basket_checkout_delivery_address => 'Delivery address';

  @override
  String get basket_checkout_my_addresses => 'My addresses';

  @override
  String get basket_checkout_address_new => 'New address';

  @override
  String get basket_checkout_pickup_closest => 'Closest';

  @override
  String basket_checkout_pickup_distance(Object distance) {
    return '$distance km';
  }

  @override
  String get basket_checkout_pickup_empty => 'No stores available yet';

  @override
  String get basket_checkout_delivery_empty => 'No pickup method available';

  @override
  String get basket_checkout_delivery_unavailable =>
      'No delivery method is available for this region. Try again later';

  @override
  String get basket_checkout_delivery_no_region =>
      'The address is not marked on the map — the delivery region could not be determined. Edit the address and pick a point on the map';

  @override
  String get basket_checkout_delivery_select => 'Choose a delivery method';

  @override
  String get basket_map_title => 'Select a delivery address';

  @override
  String get basket_map_add => 'Add';

  @override
  String get basket_map_save => 'Save';

  @override
  String get basket_map_address_empty => 'Point not detected';

  @override
  String get basket_map_delete_title => 'Delete location?';

  @override
  String get basket_map_delete_message =>
      'Are you sure you want to delete this location?';
}
