import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureFinanceLocalizations
/// returned by `FeatureFinanceLocalizations.of(context)`.
///
/// Applications need to include `FeatureFinanceLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureFinanceLocalizations.localizationsDelegates,
///   supportedLocales: FeatureFinanceLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureFinanceLocalizations.supportedLocales
/// property.
abstract class FeatureFinanceLocalizations {
  FeatureFinanceLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureFinanceLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureFinanceLocalizations>(
      context,
      FeatureFinanceLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureFinanceLocalizations> delegate =
      _FeatureFinanceLocalizationsDelegate();

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

  /// No description provided for @currency.
  ///
  /// In ru, this message translates to:
  /// **'{amount} сум'**
  String currency(Object amount);

  /// No description provided for @pay.
  ///
  /// In ru, this message translates to:
  /// **'Оплатить'**
  String get pay;

  /// No description provided for @paymentAmount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма платежа'**
  String get paymentAmount;

  /// No description provided for @addCard.
  ///
  /// In ru, this message translates to:
  /// **'Добавить карту'**
  String get addCard;

  /// No description provided for @cardAddSmsSent.
  ///
  /// In ru, this message translates to:
  /// **'Отправили SMS с кодом подтверждения для добавления банковской карты'**
  String get cardAddSmsSent;

  /// No description provided for @payment_success.
  ///
  /// In ru, this message translates to:
  /// **'Оплата прошла успешно'**
  String get payment_success;

  /// No description provided for @payment_method.
  ///
  /// In ru, this message translates to:
  /// **'Payment method'**
  String get payment_method;

  /// No description provided for @my_cards_title.
  ///
  /// In ru, this message translates to:
  /// **'Мои карты'**
  String get my_cards_title;

  /// No description provided for @payment_history_title.
  ///
  /// In ru, this message translates to:
  /// **'История'**
  String get payment_history_title;

  /// No description provided for @payment_qr_title.
  ///
  /// In ru, this message translates to:
  /// **'QR Платёж'**
  String get payment_qr_title;

  /// No description provided for @card_number_label.
  ///
  /// In ru, this message translates to:
  /// **'Номер карты'**
  String get card_number_label;

  /// No description provided for @card_expiry_label.
  ///
  /// In ru, this message translates to:
  /// **'Срок действия'**
  String get card_expiry_label;

  /// No description provided for @card_expiry_hint.
  ///
  /// In ru, this message translates to:
  /// **'ММ/ГГ'**
  String get card_expiry_hint;

  /// No description provided for @card_holder_label.
  ///
  /// In ru, this message translates to:
  /// **'Имя на карте'**
  String get card_holder_label;

  /// No description provided for @card_holder_hint.
  ///
  /// In ru, this message translates to:
  /// **'Владелец'**
  String get card_holder_hint;

  /// No description provided for @phone_number_label.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phone_number_label;

  /// No description provided for @resend_in_seconds.
  ///
  /// In ru, this message translates to:
  /// **'Отправить снова через {time} сек'**
  String resend_in_seconds(Object time);

  /// No description provided for @action_resend.
  ///
  /// In ru, this message translates to:
  /// **'Отправить снова'**
  String get action_resend;

  /// No description provided for @payment_details.
  ///
  /// In ru, this message translates to:
  /// **'Детали платежа'**
  String get payment_details;

  /// No description provided for @editing.
  ///
  /// In ru, this message translates to:
  /// **'Редактирование'**
  String get editing;

  /// No description provided for @alert_title_delete_card.
  ///
  /// In ru, this message translates to:
  /// **'Удалить карту?'**
  String get alert_title_delete_card;

  /// No description provided for @action_delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get action_delete;

  /// No description provided for @action_cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get action_cancel;

  /// No description provided for @nearest_places.
  ///
  /// In ru, this message translates to:
  /// **'Ближайшие места'**
  String get nearest_places;

  /// No description provided for @currency_calculator.
  ///
  /// In ru, this message translates to:
  /// **'Калькулятор валют'**
  String get currency_calculator;

  /// No description provided for @show_all_places.
  ///
  /// In ru, this message translates to:
  /// **'Список мест'**
  String get show_all_places;
}

class _FeatureFinanceLocalizationsDelegate
    extends LocalizationsDelegate<FeatureFinanceLocalizations> {
  const _FeatureFinanceLocalizationsDelegate();

  @override
  Future<FeatureFinanceLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureFinanceLocalizations>(
      lookupFeatureFinanceLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureFinanceLocalizationsDelegate old) => false;
}

FeatureFinanceLocalizations lookupFeatureFinanceLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureFinanceLocalizationsEn();
    case 'ru':
      return FeatureFinanceLocalizationsRu();
    case 'uz':
      return FeatureFinanceLocalizationsUz();
  }

  throw FlutterError(
    'FeatureFinanceLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
