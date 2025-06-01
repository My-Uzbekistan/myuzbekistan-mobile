import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureMoreLocalizations
/// returned by `FeatureMoreLocalizations.of(context)`.
///
/// Applications need to include `FeatureMoreLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureMoreLocalizations.localizationsDelegates,
///   supportedLocales: FeatureMoreLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureMoreLocalizations.supportedLocales
/// property.
abstract class FeatureMoreLocalizations {
  FeatureMoreLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureMoreLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureMoreLocalizations>(context, FeatureMoreLocalizations);
  }

  static const LocalizationsDelegate<FeatureMoreLocalizations> delegate = _FeatureMoreLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
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

  /// No description provided for @nav_home.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get nav_home;

  /// No description provided for @nav_map.
  ///
  /// In ru, this message translates to:
  /// **'Карта'**
  String get nav_map;

  /// No description provided for @nav_transfer.
  ///
  /// In ru, this message translates to:
  /// **'Перевод'**
  String get nav_transfer;

  /// No description provided for @nav_payment.
  ///
  /// In ru, this message translates to:
  /// **'Платеж'**
  String get nav_payment;

  /// No description provided for @nav_more.
  ///
  /// In ru, this message translates to:
  /// **'Еще'**
  String get nav_more;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In ru, this message translates to:
  /// **'Тема'**
  String get theme;

  /// No description provided for @lanItem.
  ///
  /// In ru, this message translates to:
  /// **'{lang, select, en{Английский} ru{Русский} uz{Узбекский} other{} }'**
  String lanItem(String lang);

  /// No description provided for @themeModes.
  ///
  /// In ru, this message translates to:
  /// **'{theme, select, system{Системный} light{Светлая} dark{Тёмная} other{}}'**
  String themeModes(String theme);

  /// Текст для гостевого пользователя
  ///
  /// In ru, this message translates to:
  /// **'Привет Гость'**
  String get guest;

  /// No description provided for @action_all.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get action_all;

  /// No description provided for @currency_uzs.
  ///
  /// In ru, this message translates to:
  /// **'{value} сум'**
  String currency_uzs(Object value);

  /// No description provided for @nPhotos.
  ///
  /// In ru, this message translates to:
  /// **'{n} фото'**
  String nPhotos(Object n);

  /// No description provided for @getStarted.
  ///
  /// In ru, this message translates to:
  /// **'Начать'**
  String get getStarted;

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logout;

  /// No description provided for @getStartedDescription.
  ///
  /// In ru, this message translates to:
  /// **'Получите полный доступ к возможностям, а также сохраняйте свои любимые вещи'**
  String get getStartedDescription;

  /// No description provided for @continueWithGoogle.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить с Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithApple.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить с Apple'**
  String get continueWithApple;

  /// No description provided for @averageCheck.
  ///
  /// In ru, this message translates to:
  /// **'Средний рейтинг'**
  String get averageCheck;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @rating.
  ///
  /// In ru, this message translates to:
  /// **'Рейтинг'**
  String get rating;

  /// No description provided for @favorites.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorites;

  /// No description provided for @n_items.
  ///
  /// In ru, this message translates to:
  /// **'{n} элементов'**
  String n_items(Object n);

  /// No description provided for @select_location.
  ///
  /// In ru, this message translates to:
  /// **'Выберите местоположение'**
  String get select_location;

  /// No description provided for @about.
  ///
  /// In ru, this message translates to:
  /// **'О нас'**
  String get about;

  /// No description provided for @uzbekistan.
  ///
  /// In ru, this message translates to:
  /// **'Узбекистан'**
  String get uzbekistan;

  /// No description provided for @exchange_rates.
  ///
  /// In ru, this message translates to:
  /// **'Курсы валют'**
  String get exchange_rates;

  /// No description provided for @uzbek_currency.
  ///
  /// In ru, this message translates to:
  /// **'*Узбекская валюта (UZS) называется сум'**
  String get uzbek_currency;

  /// No description provided for @exchange_banks.
  ///
  /// In ru, this message translates to:
  /// **'Обменные банки'**
  String get exchange_banks;

  /// No description provided for @loading_data.
  ///
  /// In ru, this message translates to:
  /// **'Загрузка данных'**
  String get loading_data;

  /// No description provided for @coming_soon.
  ///
  /// In ru, this message translates to:
  /// **'Вскоре!'**
  String get coming_soon;

  /// No description provided for @coming_soon_message.
  ///
  /// In ru, this message translates to:
  /// **'Мы работаем над чем-то великим.'**
  String get coming_soon_message;

  /// No description provided for @nothing_found.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get nothing_found;

  /// No description provided for @nothing_found_message.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено. Попробуйте снова!'**
  String get nothing_found_message;

  /// No description provided for @refresh.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get refresh;

  /// No description provided for @pageFailedToLoad.
  ///
  /// In ru, this message translates to:
  /// **'Страница не загрузилась'**
  String get pageFailedToLoad;

  /// No description provided for @something_went_wrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте еще раз.'**
  String get something_went_wrong;

  /// No description provided for @generalEmergency.
  ///
  /// In ru, this message translates to:
  /// **'Аварийная служба'**
  String get generalEmergency;

  /// No description provided for @touristPolice.
  ///
  /// In ru, this message translates to:
  /// **'Туристическая полиция'**
  String get touristPolice;

  /// No description provided for @fire.
  ///
  /// In ru, this message translates to:
  /// **'Пожарная служба'**
  String get fire;

  /// No description provided for @police.
  ///
  /// In ru, this message translates to:
  /// **'Полиция'**
  String get police;

  /// No description provided for @medical.
  ///
  /// In ru, this message translates to:
  /// **'Скорая помощь'**
  String get medical;

  /// No description provided for @gasEmergency.
  ///
  /// In ru, this message translates to:
  /// **'Газовая аварийная служба'**
  String get gasEmergency;

  /// No description provided for @emergencyContacts.
  ///
  /// In ru, this message translates to:
  /// **'Экстренные контакты'**
  String get emergencyContacts;

  /// No description provided for @usefulTips.
  ///
  /// In ru, this message translates to:
  /// **'Полезные советы'**
  String get usefulTips;

  /// No description provided for @logoutConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Вы хотите выйти из системы?'**
  String get logoutConfirmation;

  /// No description provided for @deleteAccountConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Вы хотите удалить аккаунт?'**
  String get deleteAccountConfirmation;

  /// No description provided for @deleteAccount.
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт'**
  String get deleteAccount;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @warning.
  ///
  /// In ru, this message translates to:
  /// **'Предупреждение'**
  String get warning;

  /// No description provided for @guest_chose.
  ///
  /// In ru, this message translates to:
  /// **'Выбор гостей'**
  String get guest_chose;

  /// No description provided for @distanceKm.
  ///
  /// In ru, this message translates to:
  /// **'км'**
  String get distanceKm;

  /// No description provided for @distanceM.
  ///
  /// In ru, this message translates to:
  /// **'м'**
  String get distanceM;
}

class _FeatureMoreLocalizationsDelegate extends LocalizationsDelegate<FeatureMoreLocalizations> {
  const _FeatureMoreLocalizationsDelegate();

  @override
  Future<FeatureMoreLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureMoreLocalizations>(lookupFeatureMoreLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureMoreLocalizationsDelegate old) => false;
}

FeatureMoreLocalizations lookupFeatureMoreLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FeatureMoreLocalizationsEn();
    case 'ru': return FeatureMoreLocalizationsRu();
    case 'uz': return FeatureMoreLocalizationsUz();
  }

  throw FlutterError(
    'FeatureMoreLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
