import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureMarketHomeLocalizations
/// returned by `FeatureMarketHomeLocalizations.of(context)`.
///
/// Applications need to include `FeatureMarketHomeLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureMarketHomeLocalizations.localizationsDelegates,
///   supportedLocales: FeatureMarketHomeLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureMarketHomeLocalizations.supportedLocales
/// property.
abstract class FeatureMarketHomeLocalizations {
  FeatureMarketHomeLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureMarketHomeLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureMarketHomeLocalizations>(
      context,
      FeatureMarketHomeLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureMarketHomeLocalizations> delegate =
      _FeatureMarketHomeLocalizationsDelegate();

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

  /// No description provided for @market_home_title.
  ///
  /// In ru, this message translates to:
  /// **'Маркет'**
  String get market_home_title;

  /// No description provided for @market_profile_title.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get market_profile_title;

  /// No description provided for @market_search_hint.
  ///
  /// In ru, this message translates to:
  /// **'Найти товары'**
  String get market_search_hint;

  /// No description provided for @market_action_all.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get market_action_all;

  /// No description provided for @market_catalog.
  ///
  /// In ru, this message translates to:
  /// **'Каталог'**
  String get market_catalog;

  /// No description provided for @market_currency_som.
  ///
  /// In ru, this message translates to:
  /// **'сум'**
  String get market_currency_som;

  /// No description provided for @market_page_failed_to_load.
  ///
  /// In ru, this message translates to:
  /// **'Страница не загрузилась'**
  String get market_page_failed_to_load;

  /// No description provided for @market_something_went_wrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте еще раз.'**
  String get market_something_went_wrong;

  /// No description provided for @market_refresh.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get market_refresh;

  /// No description provided for @market_search_history.
  ///
  /// In ru, this message translates to:
  /// **'История поиска'**
  String get market_search_history;

  /// No description provided for @market_search_suggestions.
  ///
  /// In ru, this message translates to:
  /// **'Часто ищут'**
  String get market_search_suggestions;

  /// No description provided for @market_search_results_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} результатов'**
  String market_search_results_count(Object count);

  /// No description provided for @market_search_not_found_title.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get market_search_not_found_title;

  /// No description provided for @market_search_not_found_message.
  ///
  /// In ru, this message translates to:
  /// **'По этому запросу ничего не найдено, пожалуйста, попробуйте еще раз с другими словами'**
  String get market_search_not_found_message;

  /// No description provided for @market_category_products_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} товаров'**
  String market_category_products_count(Object count);

  /// No description provided for @market_sort_title.
  ///
  /// In ru, this message translates to:
  /// **'Сортировка'**
  String get market_sort_title;

  /// No description provided for @market_sort_popular.
  ///
  /// In ru, this message translates to:
  /// **'Сначала популярные'**
  String get market_sort_popular;

  /// No description provided for @market_sort_cheap.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дешевле'**
  String get market_sort_cheap;

  /// No description provided for @market_sort_expensive.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дороже'**
  String get market_sort_expensive;

  /// No description provided for @market_sort_rating.
  ///
  /// In ru, this message translates to:
  /// **'Высокий рейтинг'**
  String get market_sort_rating;

  /// No description provided for @market_profile_orders.
  ///
  /// In ru, this message translates to:
  /// **'Заказы'**
  String get market_profile_orders;

  /// No description provided for @market_profile_purchased.
  ///
  /// In ru, this message translates to:
  /// **'Купленные товары'**
  String get market_profile_purchased;

  /// No description provided for @market_profile_returns.
  ///
  /// In ru, this message translates to:
  /// **'Возвраты'**
  String get market_profile_returns;

  /// No description provided for @market_order_number.
  ///
  /// In ru, this message translates to:
  /// **'Номер заказа: #{number}'**
  String market_order_number(Object number);

  /// No description provided for @market_order_title.
  ///
  /// In ru, this message translates to:
  /// **'#{number}'**
  String market_order_title(Object number);

  /// No description provided for @market_order_items_title.
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get market_order_items_title;

  /// No description provided for @market_order_items_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} товара'**
  String market_order_items_count(Object count);

  /// No description provided for @market_order_details.
  ///
  /// In ru, this message translates to:
  /// **'Детали заказа'**
  String get market_order_details;

  /// No description provided for @market_order_payment_method.
  ///
  /// In ru, this message translates to:
  /// **'Способ оплаты'**
  String get market_order_payment_method;

  /// No description provided for @market_order_receive_method.
  ///
  /// In ru, this message translates to:
  /// **'Способ получения'**
  String get market_order_receive_method;

  /// No description provided for @market_order_delivery_address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес доставки'**
  String get market_order_delivery_address;

  /// No description provided for @market_order_recipient_phone.
  ///
  /// In ru, this message translates to:
  /// **'Телефон получателя'**
  String get market_order_recipient_phone;

  /// No description provided for @market_order_cancel_action.
  ///
  /// In ru, this message translates to:
  /// **'Отменить заказ'**
  String get market_order_cancel_action;

  /// No description provided for @market_order_cancel_title.
  ///
  /// In ru, this message translates to:
  /// **'Отменить заказ?'**
  String get market_order_cancel_title;

  /// No description provided for @market_order_cancel_message.
  ///
  /// In ru, this message translates to:
  /// **'Товары вернутся на склад. Возврат средств оформляет оператор.'**
  String get market_order_cancel_message;

  /// No description provided for @market_order_cancel_keep.
  ///
  /// In ru, this message translates to:
  /// **'Оставить заказ'**
  String get market_order_cancel_keep;

  /// No description provided for @market_order_summary_products.
  ///
  /// In ru, this message translates to:
  /// **'Заказ'**
  String get market_order_summary_products;

  /// No description provided for @market_order_summary_delivery.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get market_order_summary_delivery;

  /// No description provided for @market_order_summary_total.
  ///
  /// In ru, this message translates to:
  /// **'Итого:'**
  String get market_order_summary_total;

  /// No description provided for @market_order_quantity.
  ///
  /// In ru, this message translates to:
  /// **'{count} штук'**
  String market_order_quantity(Object count);

  /// No description provided for @market_order_status.
  ///
  /// In ru, this message translates to:
  /// **'{status, select, draft{Черновик} awaitingPayment{Ожидает оплаты} paid{Новый} preparing{Обработка} ready{Готово} delivering{Доставка} delivered{Выдано покупателю} cancelled{Отменён} refunded{Возвращено} other{}}'**
  String market_order_status(String status);

  /// No description provided for @market_orders_empty_title.
  ///
  /// In ru, this message translates to:
  /// **'Пока ничего нет'**
  String get market_orders_empty_title;

  /// No description provided for @market_orders_empty_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы еще ничего не добавили в корзину'**
  String get market_orders_empty_subtitle;

  /// No description provided for @market_detail_about.
  ///
  /// In ru, this message translates to:
  /// **'О товаре'**
  String get market_detail_about;

  /// No description provided for @market_detail_show_more.
  ///
  /// In ru, this message translates to:
  /// **'Показать больше'**
  String get market_detail_show_more;

  /// No description provided for @market_detail_delivery.
  ///
  /// In ru, this message translates to:
  /// **'Как получить'**
  String get market_detail_delivery;

  /// No description provided for @market_detail_seller.
  ///
  /// In ru, this message translates to:
  /// **'О продавце'**
  String get market_detail_seller;

  /// No description provided for @market_detail_sold_this_month.
  ///
  /// In ru, this message translates to:
  /// **'{count} купили в этом месяце'**
  String market_detail_sold_this_month(Object count);

  /// No description provided for @market_detail_delivery_free.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно'**
  String get market_detail_delivery_free;

  /// No description provided for @market_detail_distance_from_us.
  ///
  /// In ru, this message translates to:
  /// **'Вы находитесь в {distance} от нас'**
  String market_detail_distance_from_us(Object distance);

  /// No description provided for @market_detail_build_route.
  ///
  /// In ru, this message translates to:
  /// **'Построить маршрут'**
  String get market_detail_build_route;

  /// No description provided for @market_detail_buy_now.
  ///
  /// In ru, this message translates to:
  /// **'Купить сейчас'**
  String get market_detail_buy_now;

  /// No description provided for @market_detail_add_to_cart.
  ///
  /// In ru, this message translates to:
  /// **'В корзину'**
  String get market_detail_add_to_cart;

  /// No description provided for @market_detail_out_of_stock.
  ///
  /// In ru, this message translates to:
  /// **'Нет в наличии'**
  String get market_detail_out_of_stock;

  /// No description provided for @market_distance_meter.
  ///
  /// In ru, this message translates to:
  /// **'м'**
  String get market_distance_meter;

  /// No description provided for @market_distance_km.
  ///
  /// In ru, this message translates to:
  /// **'км'**
  String get market_distance_km;

  /// No description provided for @market_cart_total.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get market_cart_total;

  /// No description provided for @market_cart_go_to_cart.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в корзину'**
  String get market_cart_go_to_cart;

  /// No description provided for @market_city_title.
  ///
  /// In ru, this message translates to:
  /// **'Локация'**
  String get market_city_title;
}

class _FeatureMarketHomeLocalizationsDelegate
    extends LocalizationsDelegate<FeatureMarketHomeLocalizations> {
  const _FeatureMarketHomeLocalizationsDelegate();

  @override
  Future<FeatureMarketHomeLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureMarketHomeLocalizations>(
      lookupFeatureMarketHomeLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureMarketHomeLocalizationsDelegate old) => false;
}

FeatureMarketHomeLocalizations lookupFeatureMarketHomeLocalizations(
  Locale locale,
) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureMarketHomeLocalizationsEn();
    case 'ru':
      return FeatureMarketHomeLocalizationsRu();
    case 'uz':
      return FeatureMarketHomeLocalizationsUz();
  }

  throw FlutterError(
    'FeatureMarketHomeLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
