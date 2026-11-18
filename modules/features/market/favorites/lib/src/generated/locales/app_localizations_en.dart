// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureFavoritesLocalizationsEn extends FeatureFavoritesLocalizations {
  FeatureFavoritesLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get favorites_title => 'Favourites';

  @override
  String get favorites_empty => 'Your favourites are empty';

  @override
  String get favorites_empty_message =>
      'Tap the heart on products you like — they will be collected here';

  @override
  String get favorites_currency_som => 'sum';

  @override
  String get favorites_page_failed_to_load => 'Page failed to load';

  @override
  String get favorites_something_went_wrong =>
      'Something went wrong. Please try again.';

  @override
  String get favorites_refresh => 'Refresh';
}
