import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureFavoritesLocalizations
/// returned by `FeatureFavoritesLocalizations.of(context)`.
///
/// Applications need to include `FeatureFavoritesLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureFavoritesLocalizations.localizationsDelegates,
///   supportedLocales: FeatureFavoritesLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureFavoritesLocalizations.supportedLocales
/// property.
abstract class FeatureFavoritesLocalizations {
  FeatureFavoritesLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureFavoritesLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureFavoritesLocalizations>(
      context,
      FeatureFavoritesLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureFavoritesLocalizations> delegate =
      _FeatureFavoritesLocalizationsDelegate();

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
    Locale('uz'),
  ];

  /// No description provided for @favorites_title.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorites_title;

  /// No description provided for @favorites_empty.
  ///
  /// In ru, this message translates to:
  /// **'В избранном пусто'**
  String get favorites_empty;

  /// No description provided for @favorites_empty_message.
  ///
  /// In ru, this message translates to:
  /// **'Отмечайте понравившиеся товары сердечком — они соберутся здесь'**
  String get favorites_empty_message;

  /// No description provided for @favorites_currency_som.
  ///
  /// In ru, this message translates to:
  /// **'сум'**
  String get favorites_currency_som;

  /// No description provided for @favorites_page_failed_to_load.
  ///
  /// In ru, this message translates to:
  /// **'Страница не загрузилась'**
  String get favorites_page_failed_to_load;

  /// No description provided for @favorites_something_went_wrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте ещё раз.'**
  String get favorites_something_went_wrong;

  /// No description provided for @favorites_refresh.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get favorites_refresh;
}

class _FeatureFavoritesLocalizationsDelegate
    extends LocalizationsDelegate<FeatureFavoritesLocalizations> {
  const _FeatureFavoritesLocalizationsDelegate();

  @override
  Future<FeatureFavoritesLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureFavoritesLocalizations>(
      lookupFeatureFavoritesLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureFavoritesLocalizationsDelegate old) => false;
}

FeatureFavoritesLocalizations lookupFeatureFavoritesLocalizations(
  Locale locale,
) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureFavoritesLocalizationsEn();
    case 'ru':
      return FeatureFavoritesLocalizationsRu();
    case 'uz':
      return FeatureFavoritesLocalizationsUz();
  }

  throw FlutterError(
    'FeatureFavoritesLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
