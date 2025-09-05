import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of CoreAppLocalizations
/// returned by `CoreAppLocalizations.of(context)`.
///
/// Applications need to include `CoreAppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locale/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: CoreAppLocalizations.localizationsDelegates,
///   supportedLocales: CoreAppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the CoreAppLocalizations.supportedLocales
/// property.
abstract class CoreAppLocalizations {
  CoreAppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static CoreAppLocalizations? of(BuildContext context) {
    return Localizations.of<CoreAppLocalizations>(
        context, CoreAppLocalizations);
  }

  static const LocalizationsDelegate<CoreAppLocalizations> delegate =
      _CoreAppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
    Locale('uz')
  ];

  /// No description provided for @keyboard_action_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get keyboard_action_done;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error, please try again!'**
  String get unexpected_error;

  /// No description provided for @unexpected_error_title.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error'**
  String get unexpected_error_title;

  /// No description provided for @action_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get action_add;

  /// No description provided for @action_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get action_close;

  /// No description provided for @action_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get action_done;

  /// No description provided for @action_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get action_edit;

  /// No description provided for @action_more.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get action_more;
}

class _CoreAppLocalizationsDelegate
    extends LocalizationsDelegate<CoreAppLocalizations> {
  const _CoreAppLocalizationsDelegate();

  @override
  Future<CoreAppLocalizations> load(Locale locale) {
    return SynchronousFuture<CoreAppLocalizations>(
        lookupCoreAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_CoreAppLocalizationsDelegate old) => false;
}

CoreAppLocalizations lookupCoreAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return CoreAppLocalizationsEn();
    case 'ru':
      return CoreAppLocalizationsRu();
    case 'uz':
      return CoreAppLocalizationsUz();
  }

  throw FlutterError(
      'CoreAppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
