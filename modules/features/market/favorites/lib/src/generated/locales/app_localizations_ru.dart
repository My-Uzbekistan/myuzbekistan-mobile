// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureFavoritesLocalizationsRu extends FeatureFavoritesLocalizations {
  FeatureFavoritesLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get favorites_title => 'Избранное';

  @override
  String get favorites_empty => 'В избранном пусто';

  @override
  String get favorites_empty_message =>
      'Отмечайте понравившиеся товары сердечком — они соберутся здесь';

  @override
  String get favorites_currency_som => 'сум';

  @override
  String get favorites_page_failed_to_load => 'Страница не загрузилась';

  @override
  String get favorites_something_went_wrong =>
      'Что-то пошло не так. Пожалуйста, попробуйте ещё раз.';

  @override
  String get favorites_refresh => 'Обновить';
}
