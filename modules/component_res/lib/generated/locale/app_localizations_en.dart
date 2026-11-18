// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class CoreAppLocalizationsEn extends CoreAppLocalizations {
  CoreAppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get keyboard_action_done => 'Done';

  @override
  String get unexpected_error => 'Unexpected error, please try again!';

  @override
  String get unexpected_error_title => 'Unexpected error';

  @override
  String get action_add => 'Add';

  @override
  String get action_close => 'Close';

  @override
  String get action_done => 'Done';

  @override
  String get action_edit => 'Edit';

  @override
  String get action_more => 'Read more';

  @override
  String get no_internet =>
      'No internet connection. Check your connection and try again';

  @override
  String get no_internet_title => 'No internet';

  @override
  String get action_retry => 'Retry';

  @override
  String get action_open_settings => 'Open settings';
}
