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
  FeatureMoreLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureMoreLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureMoreLocalizations>(
      context,
      FeatureMoreLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureMoreLocalizations> delegate =
      _FeatureMoreLocalizationsDelegate();

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

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык приложения'**
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

  /// No description provided for @langItemDefault.
  ///
  /// In ru, this message translates to:
  /// **'{lang, select, en{English} ru{Русский} uz{O\'zbekcha} other{} }'**
  String langItemDefault(String lang);

  /// No description provided for @themeModes.
  ///
  /// In ru, this message translates to:
  /// **'{theme, select, system{Системная} light{Светлая} dark{Тёмная} other{}}'**
  String themeModes(String theme);

  /// Текст для гостевого пользователя
  ///
  /// In ru, this message translates to:
  /// **'Гость'**
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

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти из приложения'**
  String get logout;

  /// No description provided for @logout_confirm_title.
  ///
  /// In ru, this message translates to:
  /// **'Выйти из приложения?'**
  String get logout_confirm_title;

  /// No description provided for @exit.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get exit;

  /// No description provided for @logoutConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Вы собираетесь выйти из приложения'**
  String get logoutConfirmation;

  /// No description provided for @deleteAccountConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Ваша учетная запись и все данные, такие как, сохраненные места и банковские карты будут удалены'**
  String get deleteAccountConfirmation;

  /// No description provided for @delete_account_confirm_title.
  ///
  /// In ru, this message translates to:
  /// **'Удалить учетную запись?'**
  String get delete_account_confirm_title;

  /// No description provided for @deleteAccount.
  ///
  /// In ru, this message translates to:
  /// **'Удалить учетную запись'**
  String get deleteAccount;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get delete;

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

  /// No description provided for @continueAsGuest.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить как гость'**
  String get continueAsGuest;

  /// No description provided for @notification.
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get notification;

  /// No description provided for @pin_code.
  ///
  /// In ru, this message translates to:
  /// **'PIN-код'**
  String get pin_code;

  /// No description provided for @biometric_auth.
  ///
  /// In ru, this message translates to:
  /// **'Вход со сканером'**
  String get biometric_auth;

  /// No description provided for @prayer_time_widget.
  ///
  /// In ru, this message translates to:
  /// **'Виджет времени намаза'**
  String get prayer_time_widget;

  /// No description provided for @about_app.
  ///
  /// In ru, this message translates to:
  /// **'О приложении'**
  String get about_app;

  /// No description provided for @log_in.
  ///
  /// In ru, this message translates to:
  /// **'Авторизоваться'**
  String get log_in;

  /// No description provided for @version.
  ///
  /// In ru, this message translates to:
  /// **'Версия'**
  String get version;

  /// No description provided for @privacy_policy.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get privacy_policy;

  /// No description provided for @licenses.
  ///
  /// In ru, this message translates to:
  /// **'Лицензии'**
  String get licenses;

  /// No description provided for @pin_code_create_title.
  ///
  /// In ru, this message translates to:
  /// **'Придумайте код доступа'**
  String get pin_code_create_title;

  /// No description provided for @pin_code_repeat.
  ///
  /// In ru, this message translates to:
  /// **'Повторите'**
  String get pin_code_repeat;

  /// No description provided for @pinMismatch.
  ///
  /// In ru, this message translates to:
  /// **'Код не совпадает'**
  String get pinMismatch;

  /// No description provided for @resetPinTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить PIN-код'**
  String get resetPinTitle;

  /// No description provided for @resetPinMessage.
  ///
  /// In ru, this message translates to:
  /// **'Все данные будут удалены без возможности восстановления. Потребуется новая регистрация.'**
  String get resetPinMessage;

  /// No description provided for @resetPinAction.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить\nкод'**
  String get resetPinAction;

  /// No description provided for @changePinTitle.
  ///
  /// In ru, this message translates to:
  /// **'Изменить PIN-код'**
  String get changePinTitle;

  /// No description provided for @enter_new_code.
  ///
  /// In ru, this message translates to:
  /// **'Введите новый код'**
  String get enter_new_code;

  /// No description provided for @delete_code.
  ///
  /// In ru, this message translates to:
  /// **'Удалить код'**
  String get delete_code;

  /// No description provided for @delete_pin_title.
  ///
  /// In ru, this message translates to:
  /// **'Удалить PIN-код'**
  String get delete_pin_title;

  /// No description provided for @delete_pin_message.
  ///
  /// In ru, this message translates to:
  /// **'Вход по PIN будет отключён. Вы сможете создать новый PIN в любой момент'**
  String get delete_pin_message;

  /// No description provided for @pincode_created.
  ///
  /// In ru, this message translates to:
  /// **'PIN-код успешно создан'**
  String get pincode_created;

  /// No description provided for @pincode_deleted.
  ///
  /// In ru, this message translates to:
  /// **'PIN-код удалён'**
  String get pincode_deleted;

  /// No description provided for @enter_code.
  ///
  /// In ru, this message translates to:
  /// **'Введите код'**
  String get enter_code;

  /// No description provided for @authPrompt.
  ///
  /// In ru, this message translates to:
  /// **'Пройдите аутентификацию для доступа к приложению'**
  String get authPrompt;

  /// No description provided for @fiscalReceipt.
  ///
  /// In ru, this message translates to:
  /// **'Фискальный чек'**
  String get fiscalReceipt;
}

class _FeatureMoreLocalizationsDelegate
    extends LocalizationsDelegate<FeatureMoreLocalizations> {
  const _FeatureMoreLocalizationsDelegate();

  @override
  Future<FeatureMoreLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureMoreLocalizations>(
      lookupFeatureMoreLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureMoreLocalizationsDelegate old) => false;
}

FeatureMoreLocalizations lookupFeatureMoreLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureMoreLocalizationsEn();
    case 'ru':
      return FeatureMoreLocalizationsRu();
    case 'uz':
      return FeatureMoreLocalizationsUz();
  }

  throw FlutterError(
    'FeatureMoreLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
