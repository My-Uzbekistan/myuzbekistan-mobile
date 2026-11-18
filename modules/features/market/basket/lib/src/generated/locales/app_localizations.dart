import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureBasketLocalizations
/// returned by `FeatureBasketLocalizations.of(context)`.
///
/// Applications need to include `FeatureBasketLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureBasketLocalizations.localizationsDelegates,
///   supportedLocales: FeatureBasketLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureBasketLocalizations.supportedLocales
/// property.
abstract class FeatureBasketLocalizations {
  FeatureBasketLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureBasketLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureBasketLocalizations>(
      context,
      FeatureBasketLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureBasketLocalizations> delegate =
      _FeatureBasketLocalizationsDelegate();

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

  /// No description provided for @basket_title.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get basket_title;

  /// No description provided for @basket_select_all.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать все'**
  String get basket_select_all;

  /// No description provided for @basket_products_count.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, =0{0 товаров} one{{count} товар} few{{count} товара} many{{count} товаров} other{{count} товаров}}'**
  String basket_products_count(num count);

  /// No description provided for @basket_price_details.
  ///
  /// In ru, this message translates to:
  /// **'Детали цены'**
  String get basket_price_details;

  /// No description provided for @basket_total.
  ///
  /// In ru, this message translates to:
  /// **'Итого:'**
  String get basket_total;

  /// No description provided for @basket_checkout.
  ///
  /// In ru, this message translates to:
  /// **'К оформлению'**
  String get basket_checkout;

  /// No description provided for @basket_currency_som.
  ///
  /// In ru, this message translates to:
  /// **'сум'**
  String get basket_currency_som;

  /// No description provided for @basket_empty_title.
  ///
  /// In ru, this message translates to:
  /// **'Пока ничего нет'**
  String get basket_empty_title;

  /// No description provided for @basket_empty_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы еще ничего не добавили в корзину'**
  String get basket_empty_subtitle;

  /// No description provided for @basket_clear_title.
  ///
  /// In ru, this message translates to:
  /// **'Очистить корзину'**
  String get basket_clear_title;

  /// No description provided for @basket_clear_message.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены что хотите очистить корзину?'**
  String get basket_clear_message;

  /// No description provided for @basket_clear_confirm.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get basket_clear_confirm;

  /// No description provided for @basket_cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get basket_cancel;

  /// No description provided for @basket_page_failed_to_load.
  ///
  /// In ru, this message translates to:
  /// **'Страница не загрузилась'**
  String get basket_page_failed_to_load;

  /// No description provided for @basket_something_went_wrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте еще раз.'**
  String get basket_something_went_wrong;

  /// No description provided for @basket_refresh.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get basket_refresh;

  /// No description provided for @basket_checkout_title.
  ///
  /// In ru, this message translates to:
  /// **'Оформление заказа'**
  String get basket_checkout_title;

  /// No description provided for @basket_checkout_order_details.
  ///
  /// In ru, this message translates to:
  /// **'Детали заказа'**
  String get basket_checkout_order_details;

  /// No description provided for @basket_checkout_delivery_method.
  ///
  /// In ru, this message translates to:
  /// **'Способ получения'**
  String get basket_checkout_delivery_method;

  /// No description provided for @basket_checkout_address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес получения'**
  String get basket_checkout_address;

  /// No description provided for @basket_checkout_phone.
  ///
  /// In ru, this message translates to:
  /// **'Телефон получателя'**
  String get basket_checkout_phone;

  /// No description provided for @basket_checkout_phone_add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить номер телефона'**
  String get basket_checkout_phone_add;

  /// No description provided for @basket_checkout_phone_label.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get basket_checkout_phone_label;

  /// No description provided for @basket_checkout_products.
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get basket_checkout_products;

  /// No description provided for @basket_checkout_delivery.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get basket_checkout_delivery;

  /// No description provided for @basket_checkout_total.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get basket_checkout_total;

  /// No description provided for @basket_checkout_order.
  ///
  /// In ru, this message translates to:
  /// **'Заказать'**
  String get basket_checkout_order;

  /// No description provided for @basket_free_cancellation_title.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатная отмена'**
  String get basket_free_cancellation_title;

  /// No description provided for @basket_free_cancellation_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Отмените до {date} для полного возврата средств'**
  String basket_free_cancellation_subtitle(Object date);

  /// No description provided for @basket_checkout_delivery_free.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатно'**
  String get basket_checkout_delivery_free;

  /// No description provided for @basket_checkout_address_add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить адрес'**
  String get basket_checkout_address_add;

  /// No description provided for @basket_checkout_address_line.
  ///
  /// In ru, this message translates to:
  /// **'Адрес'**
  String get basket_checkout_address_line;

  /// No description provided for @basket_checkout_address_district.
  ///
  /// In ru, this message translates to:
  /// **'Район'**
  String get basket_checkout_address_district;

  /// No description provided for @basket_checkout_address_empty.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока нет сохраненных адресов'**
  String get basket_checkout_address_empty;

  /// No description provided for @basket_action_delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get basket_action_delete;

  /// No description provided for @basket_action_edit.
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get basket_action_edit;

  /// No description provided for @basket_checkout_store_address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес магазина'**
  String get basket_checkout_store_address;

  /// No description provided for @basket_checkout_delivery_address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес доставки'**
  String get basket_checkout_delivery_address;

  /// No description provided for @basket_checkout_my_addresses.
  ///
  /// In ru, this message translates to:
  /// **'Мои адреса'**
  String get basket_checkout_my_addresses;

  /// No description provided for @basket_checkout_address_new.
  ///
  /// In ru, this message translates to:
  /// **'Новый адрес'**
  String get basket_checkout_address_new;

  /// No description provided for @basket_checkout_pickup_closest.
  ///
  /// In ru, this message translates to:
  /// **'Самый близкий'**
  String get basket_checkout_pickup_closest;

  /// No description provided for @basket_checkout_pickup_distance.
  ///
  /// In ru, this message translates to:
  /// **'{distance} км'**
  String basket_checkout_pickup_distance(Object distance);

  /// No description provided for @basket_checkout_pickup_empty.
  ///
  /// In ru, this message translates to:
  /// **'Пока нет доступных магазинов'**
  String get basket_checkout_pickup_empty;

  /// No description provided for @basket_checkout_delivery_empty.
  ///
  /// In ru, this message translates to:
  /// **'Способ получения недоступен'**
  String get basket_checkout_delivery_empty;

  /// No description provided for @basket_checkout_delivery_unavailable.
  ///
  /// In ru, this message translates to:
  /// **'Для этого региона нет доступных способов получения. Попробуйте позже'**
  String get basket_checkout_delivery_unavailable;

  /// No description provided for @basket_checkout_delivery_no_region.
  ///
  /// In ru, this message translates to:
  /// **'Адрес не отмечен на карте — регион доставки не определён. Измените адрес и выберите точку на карте'**
  String get basket_checkout_delivery_no_region;

  /// No description provided for @basket_checkout_delivery_select.
  ///
  /// In ru, this message translates to:
  /// **'Выберите способ получения'**
  String get basket_checkout_delivery_select;

  /// No description provided for @basket_map_title.
  ///
  /// In ru, this message translates to:
  /// **'Выберите адресс доставки'**
  String get basket_map_title;

  /// No description provided for @basket_map_add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get basket_map_add;

  /// No description provided for @basket_map_save.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get basket_map_save;

  /// No description provided for @basket_map_address_empty.
  ///
  /// In ru, this message translates to:
  /// **'Точка не определена'**
  String get basket_map_address_empty;

  /// No description provided for @basket_map_delete_title.
  ///
  /// In ru, this message translates to:
  /// **'Удалить локацию?'**
  String get basket_map_delete_title;

  /// No description provided for @basket_map_delete_message.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены что хотите удалить эту локацию?'**
  String get basket_map_delete_message;
}

class _FeatureBasketLocalizationsDelegate
    extends LocalizationsDelegate<FeatureBasketLocalizations> {
  const _FeatureBasketLocalizationsDelegate();

  @override
  Future<FeatureBasketLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureBasketLocalizations>(
      lookupFeatureBasketLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureBasketLocalizationsDelegate old) => false;
}

FeatureBasketLocalizations lookupFeatureBasketLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureBasketLocalizationsEn();
    case 'ru':
      return FeatureBasketLocalizationsRu();
    case 'uz':
      return FeatureBasketLocalizationsUz();
  }

  throw FlutterError(
    'FeatureBasketLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
