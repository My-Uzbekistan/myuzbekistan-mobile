// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureFavoritesLocalizationsUz extends FeatureFavoritesLocalizations {
  FeatureFavoritesLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get favorites_title => 'Saralangan';

  @override
  String get favorites_empty => 'Saralanganlar bo\'sh';

  @override
  String get favorites_empty_message =>
      'Yoqqan mahsulotlarni yurakcha bilan belgilang — ular shu yerda to\'planadi';

  @override
  String get favorites_currency_som => 'so\'m';

  @override
  String get favorites_page_failed_to_load => 'Sahifa yuklanmadi';

  @override
  String get favorites_something_went_wrong =>
      'Nimadir xato ketdi. Iltimos, qayta urinib ko\'ring.';

  @override
  String get favorites_refresh => 'Yangilash';
}
