// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class CoreAppLocalizationsRu extends CoreAppLocalizations {
  CoreAppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get keyboard_action_done => 'Done';

  @override
  String get unexpected_error => 'Неожиданная ошибка, попробуйте ещё раз!';

  @override
  String get unexpected_error_title => 'Неожиданная ошибка';

  @override
  String get action_add => 'Добавить';

  @override
  String get action_close => 'Закрыть';

  @override
  String get action_done => 'Готово';

  @override
  String get action_edit => 'Изменить';

  @override
  String get action_more => 'Подробнее';

  @override
  String get no_internet =>
      'Нет подключения к интернету. Проверьте соединение и попробуйте ещё раз';

  @override
  String get no_internet_title => 'Нет интернета';

  @override
  String get action_retry => 'Повторить';

  @override
  String get action_open_settings => 'Перейти в настройки';
}
