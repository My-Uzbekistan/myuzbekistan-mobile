import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeatureTravelLocalizations
/// returned by `FeatureTravelLocalizations.of(context)`.
///
/// Applications need to include `FeatureTravelLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeatureTravelLocalizations.localizationsDelegates,
///   supportedLocales: FeatureTravelLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeatureTravelLocalizations.supportedLocales
/// property.
abstract class FeatureTravelLocalizations {
  FeatureTravelLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeatureTravelLocalizations? of(BuildContext context) {
    return Localizations.of<FeatureTravelLocalizations>(
      context,
      FeatureTravelLocalizations,
    );
  }

  static const LocalizationsDelegate<FeatureTravelLocalizations> delegate =
      _FeatureTravelLocalizationsDelegate();

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

  /// No description provided for @nav_payment.
  ///
  /// In ru, this message translates to:
  /// **'Платеж'**
  String get nav_payment;

  /// No description provided for @nav_services.
  ///
  /// In ru, this message translates to:
  /// **'Сервисы'**
  String get nav_services;

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

  /// No description provided for @prayerTimeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Время намаза'**
  String get prayerTimeTitle;

  /// No description provided for @prayerLocation.
  ///
  /// In ru, this message translates to:
  /// **'Локация'**
  String get prayerLocation;

  /// No description provided for @notifications.
  ///
  /// In ru, this message translates to:
  /// **'Оповещения'**
  String get notifications;

  /// No description provided for @whatAmenitiesAwait.
  ///
  /// In ru, this message translates to:
  /// **'Какие удобства вас ждут'**
  String get whatAmenitiesAwait;

  /// No description provided for @viewAllAmenities.
  ///
  /// In ru, this message translates to:
  /// **'Смотреть все удобства'**
  String get viewAllAmenities;

  /// No description provided for @contacts.
  ///
  /// In ru, this message translates to:
  /// **'Контакты'**
  String get contacts;

  /// No description provided for @readMore.
  ///
  /// In ru, this message translates to:
  /// **'Читать полностью'**
  String get readMore;

  /// No description provided for @aboutPlace.
  ///
  /// In ru, this message translates to:
  /// **'О месте'**
  String get aboutPlace;

  /// No description provided for @moreDetails.
  ///
  /// In ru, this message translates to:
  /// **'Подробнее'**
  String get moreDetails;

  /// No description provided for @location.
  ///
  /// In ru, this message translates to:
  /// **'Расположение'**
  String get location;

  /// No description provided for @buildRoute.
  ///
  /// In ru, this message translates to:
  /// **'Построить маршрут'**
  String get buildRoute;

  /// No description provided for @feedbackImportant.
  ///
  /// In ru, this message translates to:
  /// **'Ваше мнение очень важно для нас, спасибо!'**
  String get feedbackImportant;

  /// No description provided for @leaveFeedback.
  ///
  /// In ru, this message translates to:
  /// **'Оставьте свой отзыв'**
  String get leaveFeedback;

  /// No description provided for @leaveReview.
  ///
  /// In ru, this message translates to:
  /// **'Оставить отзыв'**
  String get leaveReview;

  /// No description provided for @reviewsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, =0{0 отзывов} one{{count} отзыв} few{{count} отзыва} many{{count} отзывов} other{{count} отзывов}}'**
  String reviewsCount(num count);

  /// No description provided for @sendFeedback.
  ///
  /// In ru, this message translates to:
  /// **'Отправить отзыв'**
  String get sendFeedback;

  /// No description provided for @map_open_in.
  ///
  /// In ru, this message translates to:
  /// **'Открыть с помощью'**
  String get map_open_in;

  /// No description provided for @workingHours.
  ///
  /// In ru, this message translates to:
  /// **'Рабочее время'**
  String get workingHours;

  /// No description provided for @reviews.
  ///
  /// In ru, this message translates to:
  /// **'Отзывы'**
  String get reviews;

  /// No description provided for @showMore.
  ///
  /// In ru, this message translates to:
  /// **'Показать больше'**
  String get showMore;

  /// No description provided for @open.
  ///
  /// In ru, this message translates to:
  /// **'Открыто'**
  String get open;

  /// No description provided for @closed.
  ///
  /// In ru, this message translates to:
  /// **'Закрыто'**
  String get closed;

  /// No description provided for @distanceFromUs.
  ///
  /// In ru, this message translates to:
  /// **'Вы находитесь в {distance} от нас'**
  String distanceFromUs(Object distance);

  /// No description provided for @expand.
  ///
  /// In ru, this message translates to:
  /// **'Развернуть'**
  String get expand;

  /// No description provided for @writeReviewInFewSentences.
  ///
  /// In ru, this message translates to:
  /// **'Напиши отзыв в нескольких предложениях'**
  String get writeReviewInFewSentences;

  /// No description provided for @catalogMyEsim.
  ///
  /// In ru, this message translates to:
  /// **'My eSIM'**
  String get catalogMyEsim;

  /// No description provided for @currency_som.
  ///
  /// In ru, this message translates to:
  /// **'сум'**
  String get currency_som;

  /// No description provided for @home_events.
  ///
  /// In ru, this message translates to:
  /// **'Мероприятия'**
  String get home_events;

  /// No description provided for @home_cities.
  ///
  /// In ru, this message translates to:
  /// **'Города'**
  String get home_cities;

  /// No description provided for @home_cities_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Куда хотите сходить в выходные?'**
  String get home_cities_subtitle;

  /// No description provided for @home_city_badge.
  ///
  /// In ru, this message translates to:
  /// **'Хотите посетить'**
  String get home_city_badge;

  /// No description provided for @home_search_hint.
  ///
  /// In ru, this message translates to:
  /// **'Куда хотите поехать?'**
  String get home_search_hint;

  /// No description provided for @home_currency_calculator.
  ///
  /// In ru, this message translates to:
  /// **'Калькулятор валют'**
  String get home_currency_calculator;

  /// No description provided for @catalogTravelQuiz.
  ///
  /// In ru, this message translates to:
  /// **'Travel Quiz'**
  String get catalogTravelQuiz;

  /// No description provided for @catalogAviaTickets.
  ///
  /// In ru, this message translates to:
  /// **'Авиабилеты'**
  String get catalogAviaTickets;

  /// No description provided for @catalogChargers.
  ///
  /// In ru, this message translates to:
  /// **'Зарядки'**
  String get catalogChargers;

  /// No description provided for @catalogPoster.
  ///
  /// In ru, this message translates to:
  /// **'Афиша'**
  String get catalogPoster;

  /// No description provided for @catalogTrainTickets.
  ///
  /// In ru, this message translates to:
  /// **'ЖД билеты'**
  String get catalogTrainTickets;

  /// No description provided for @catalogHotels.
  ///
  /// In ru, this message translates to:
  /// **'Отели'**
  String get catalogHotels;

  /// No description provided for @catalogCottages.
  ///
  /// In ru, this message translates to:
  /// **'Дачи'**
  String get catalogCottages;

  /// No description provided for @catalogInsurance.
  ///
  /// In ru, this message translates to:
  /// **'Страховка'**
  String get catalogInsurance;

  /// No description provided for @catalogItemStatusNew.
  ///
  /// In ru, this message translates to:
  /// **'Новое'**
  String get catalogItemStatusNew;

  /// No description provided for @catalogItemStatusPremium.
  ///
  /// In ru, this message translates to:
  /// **'Premium'**
  String get catalogItemStatusPremium;

  /// No description provided for @catalogItemStatusSoon.
  ///
  /// In ru, this message translates to:
  /// **'Скоро'**
  String get catalogItemStatusSoon;

  /// No description provided for @investment_search_title.
  ///
  /// In ru, this message translates to:
  /// **'Что ищете?'**
  String get investment_search_title;

  /// No description provided for @investment_top_contents_title.
  ///
  /// In ru, this message translates to:
  /// **'Рекомендуем'**
  String get investment_top_contents_title;

  /// No description provided for @investments_category_title.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get investments_category_title;

  /// No description provided for @investment_amount.
  ///
  /// In ru, this message translates to:
  /// **'{currency, select, UZS{от {amount} сум} USD{от {amount} USD} other{{amount}}}'**
  String investment_amount(Object amount, String currency);

  /// No description provided for @investment_page_sort_ask.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дешевле'**
  String get investment_page_sort_ask;

  /// No description provided for @investment_page_sort_desk.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дороже'**
  String get investment_page_sort_desk;

  /// No description provided for @investment_page_sort_popular.
  ///
  /// In ru, this message translates to:
  /// **'Популярное'**
  String get investment_page_sort_popular;

  /// No description provided for @investment_page_sort.
  ///
  /// In ru, this message translates to:
  /// **'Сортировка'**
  String get investment_page_sort;

  /// No description provided for @investment_page_sort_price.
  ///
  /// In ru, this message translates to:
  /// **'Валюта'**
  String get investment_page_sort_price;

  /// No description provided for @investment_page_sort_title.
  ///
  /// In ru, this message translates to:
  /// **'Фильтр'**
  String get investment_page_sort_title;

  /// No description provided for @investment_search_page_initial.
  ///
  /// In ru, this message translates to:
  /// **'Введите запрос для поиска...'**
  String get investment_search_page_initial;

  /// No description provided for @action_cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get action_cancel;

  /// No description provided for @action_detail.
  ///
  /// In ru, this message translates to:
  /// **'Подробно'**
  String get action_detail;

  /// No description provided for @gift_page_title.
  ///
  /// In ru, this message translates to:
  /// **'Вам доступен\nподарок'**
  String get gift_page_title;

  /// No description provided for @gift_page_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите, чтобы забрать'**
  String get gift_page_subtitle;

  /// No description provided for @gift_page_action.
  ///
  /// In ru, this message translates to:
  /// **'Забрать приз'**
  String get gift_page_action;

  /// No description provided for @gift_second_page_title_minute.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Возвращайтесь через {count} минуту} few{Возвращайтесь через {count} минуты} many{Возвращайтесь через {count} минут} other{Возвращайтесь через {count} минут}}'**
  String gift_second_page_title_minute(num count);

  /// No description provided for @gift_second_page_title_hour.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Возвращайтесь через {count} час} few{Возвращайтесь через {count} часа} many{Возвращайтесь через {count} часов} other{Возвращайтесь через {count} часов}}'**
  String gift_second_page_title_hour(num count);

  /// No description provided for @gift_second_page_title_day.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{Возвращайтесь через {count} день} few{Возвращайтесь через {count} дня} many{Возвращайтесь через {count} дней} other{Возвращайтесь через {count} дней}}'**
  String gift_second_page_title_day(num count);

  /// No description provided for @gift_second_page_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Мы готовим ваш подарок'**
  String get gift_second_page_subtitle;

  /// No description provided for @gift_history.
  ///
  /// In ru, this message translates to:
  /// **'История призов'**
  String get gift_history;

  /// No description provided for @mb.
  ///
  /// In ru, this message translates to:
  /// **'МБ'**
  String get mb;

  /// No description provided for @gb.
  ///
  /// In ru, this message translates to:
  /// **'ГБ'**
  String get gb;

  /// No description provided for @claim_dialog_caption.
  ///
  /// In ru, this message translates to:
  /// **'Вы получили бонус на свой мобильный номер'**
  String get claim_dialog_caption;

  /// No description provided for @claim_warning_page_title.
  ///
  /// In ru, this message translates to:
  /// **'Только для абонентов Uztelecom'**
  String get claim_warning_page_title;

  /// No description provided for @claim_warning_page_caption.
  ///
  /// In ru, this message translates to:
  /// **'Для получения подарка необходимо пройти регистрацию на номер Uztelecom'**
  String get claim_warning_page_caption;

  /// No description provided for @premiumOnboardingTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подключите MyUzbekistan Premium'**
  String get premiumOnboardingTitle;

  /// No description provided for @premiumOnboardingSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Активируйте премиум-подписку, чтобы пользоваться всеми возможностями приложения'**
  String get premiumOnboardingSubtitle;

  /// No description provided for @premiumStatusTitle.
  ///
  /// In ru, this message translates to:
  /// **'MyUzbekistan Premium'**
  String get premiumStatusTitle;

  /// No description provided for @premiumConnect.
  ///
  /// In ru, this message translates to:
  /// **'Подключить Premium'**
  String get premiumConnect;

  /// No description provided for @premiumCancelAnytime.
  ///
  /// In ru, this message translates to:
  /// **'Отменить можно в любое время.'**
  String get premiumCancelAnytime;

  /// No description provided for @premiumTerms.
  ///
  /// In ru, this message translates to:
  /// **'Условия использования'**
  String get premiumTerms;

  /// No description provided for @premiumFeatureAiTitle.
  ///
  /// In ru, this message translates to:
  /// **'Безлимитные AI-сервисы'**
  String get premiumFeatureAiTitle;

  /// No description provided for @premiumFeatureAiDesc.
  ///
  /// In ru, this message translates to:
  /// **'Caloria AI, Trip Planer, Travel Cam AI и многое другое'**
  String get premiumFeatureAiDesc;

  /// No description provided for @premiumFeatureEsimTitle.
  ///
  /// In ru, this message translates to:
  /// **'Промокод eSIM'**
  String get premiumFeatureEsimTitle;

  /// No description provided for @premiumFeatureEsimDesc.
  ///
  /// In ru, this message translates to:
  /// **'Скидка на золотой номер'**
  String get premiumFeatureEsimDesc;

  /// No description provided for @premiumFeatureDiscountTitle.
  ///
  /// In ru, this message translates to:
  /// **'Раздел скидок'**
  String get premiumFeatureDiscountTitle;

  /// No description provided for @premiumFeatureDiscountDesc.
  ///
  /// In ru, this message translates to:
  /// **'Эксклюзивные скидки от партнёров'**
  String get premiumFeatureDiscountDesc;

  /// No description provided for @premiumFeatureProfileTitle.
  ///
  /// In ru, this message translates to:
  /// **'Фото профиля'**
  String get premiumFeatureProfileTitle;

  /// No description provided for @premiumFeatureProfileDesc.
  ///
  /// In ru, this message translates to:
  /// **'Персонализируйте свой профиль'**
  String get premiumFeatureProfileDesc;

  /// No description provided for @premiumMonths.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} месяц} few{{count} месяца} many{{count} месяцев} other{{count} месяцев}}'**
  String premiumMonths(num count);

  /// No description provided for @premiumDiscountBadge.
  ///
  /// In ru, this message translates to:
  /// **'скидка -{percent}%'**
  String premiumDiscountBadge(Object percent);

  /// No description provided for @premiumCancelSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Отменить подписку'**
  String get premiumCancelSubscription;

  /// No description provided for @premiumSubscriptionTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подписка {plan}'**
  String premiumSubscriptionTitle(Object plan);

  /// No description provided for @statusActive.
  ///
  /// In ru, this message translates to:
  /// **'Активна'**
  String get statusActive;

  /// No description provided for @premiumStartDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата начала'**
  String get premiumStartDate;

  /// No description provided for @premiumExpiryDate.
  ///
  /// In ru, this message translates to:
  /// **'Срок действия'**
  String get premiumExpiryDate;

  /// No description provided for @premiumDaysRemaining.
  ///
  /// In ru, this message translates to:
  /// **'Осталось времени'**
  String get premiumDaysRemaining;

  /// No description provided for @premiumDaysValue.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} день} few{{count} дня} many{{count} дней} other{{count} дней}}'**
  String premiumDaysValue(num count);

  /// No description provided for @premiumServiceLocked.
  ///
  /// In ru, this message translates to:
  /// **'Эта услуга и многое другое доступно в Premium'**
  String get premiumServiceLocked;

  /// No description provided for @premiumLearnMore.
  ///
  /// In ru, this message translates to:
  /// **'Узнать подробнее'**
  String get premiumLearnMore;

  /// No description provided for @premiumLimitReachedTitle.
  ///
  /// In ru, this message translates to:
  /// **'У вас закончились бесплатные лимиты'**
  String get premiumLimitReachedTitle;

  /// No description provided for @premiumLimitReachedDesc.
  ///
  /// In ru, this message translates to:
  /// **'Для неограниченного доступа ко всем услугам, вам необходимо подключить Premium'**
  String get premiumLimitReachedDesc;

  /// No description provided for @premiumSuccessTitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы подключили подписку'**
  String get premiumSuccessTitle;

  /// No description provided for @premiumSuccessSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Вам доступны все преимущества Premium подписки'**
  String get premiumSuccessSubtitle;

  /// No description provided for @premiumCancelConfirmTitle.
  ///
  /// In ru, this message translates to:
  /// **'Отменить подписку?'**
  String get premiumCancelConfirmTitle;

  /// No description provided for @premiumCancelConfirmMessage.
  ///
  /// In ru, this message translates to:
  /// **'Premium подписка будет отменена, и все возможности станут недоступны.'**
  String get premiumCancelConfirmMessage;

  /// No description provided for @premiumCancelConfirmAction.
  ///
  /// In ru, this message translates to:
  /// **'Да, отменить'**
  String get premiumCancelConfirmAction;

  /// No description provided for @premiumCancelDismiss.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get premiumCancelDismiss;

  /// No description provided for @contractDetailsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Детали договора'**
  String get contractDetailsTitle;

  /// No description provided for @contractTitle.
  ///
  /// In ru, this message translates to:
  /// **'Номер договора №{number}'**
  String contractTitle(Object number);

  /// No description provided for @contractInfoSection.
  ///
  /// In ru, this message translates to:
  /// **'Информация о договоре'**
  String get contractInfoSection;

  /// No description provided for @contractDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата договора'**
  String get contractDate;

  /// No description provided for @contractCurrency.
  ///
  /// In ru, this message translates to:
  /// **'Валюта'**
  String get contractCurrency;

  /// No description provided for @contractDiscussionEndDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата окончания обсуждения'**
  String get contractDiscussionEndDate;

  /// No description provided for @contractTotalAmount.
  ///
  /// In ru, this message translates to:
  /// **'Общая сумма'**
  String get contractTotalAmount;

  /// No description provided for @contractEndDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата окончания'**
  String get contractEndDate;

  /// No description provided for @contractOqsAmount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма ОКС'**
  String get contractOqsAmount;

  /// No description provided for @contractBasis.
  ///
  /// In ru, this message translates to:
  /// **'Основание'**
  String get contractBasis;

  /// No description provided for @contractAdvanceAmount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма аванса'**
  String get contractAdvanceAmount;

  /// No description provided for @contractRegion.
  ///
  /// In ru, this message translates to:
  /// **'Регион'**
  String get contractRegion;

  /// No description provided for @contractPaymentTerms.
  ///
  /// In ru, this message translates to:
  /// **'Условия оплаты'**
  String get contractPaymentTerms;

  /// No description provided for @contractAdvancePaymentDay.
  ///
  /// In ru, this message translates to:
  /// **'День оплаты аванса'**
  String get contractAdvancePaymentDay;

  /// No description provided for @contractPaymentPeriod.
  ///
  /// In ru, this message translates to:
  /// **'Срок оплаты'**
  String get contractPaymentPeriod;

  /// No description provided for @contractDeliveryPeriod.
  ///
  /// In ru, this message translates to:
  /// **'Срок поставки'**
  String get contractDeliveryPeriod;

  /// No description provided for @contractDaysValue.
  ///
  /// In ru, this message translates to:
  /// **'{days} дн.'**
  String contractDaysValue(Object days);

  /// No description provided for @contractProducts.
  ///
  /// In ru, this message translates to:
  /// **'Продукты'**
  String get contractProducts;

  /// No description provided for @contractProductName.
  ///
  /// In ru, this message translates to:
  /// **'Наименование продукта'**
  String get contractProductName;

  /// No description provided for @contractCode.
  ///
  /// In ru, this message translates to:
  /// **'Код'**
  String get contractCode;

  /// No description provided for @contractQuantity.
  ///
  /// In ru, this message translates to:
  /// **'Количество'**
  String get contractQuantity;

  /// No description provided for @contractPrice.
  ///
  /// In ru, this message translates to:
  /// **'Цена'**
  String get contractPrice;

  /// No description provided for @contractAdvance.
  ///
  /// In ru, this message translates to:
  /// **'Аванс'**
  String get contractAdvance;

  /// No description provided for @contractDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get contractDescription;

  /// No description provided for @contractProductProperties.
  ///
  /// In ru, this message translates to:
  /// **'Характеристики продукта'**
  String get contractProductProperties;

  /// No description provided for @contractUnitOfMeasure.
  ///
  /// In ru, this message translates to:
  /// **'Единица измерения'**
  String get contractUnitOfMeasure;

  /// No description provided for @contractGoods.
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get contractGoods;

  /// No description provided for @contractStartingPrice.
  ///
  /// In ru, this message translates to:
  /// **'Начальная цена за единицу'**
  String get contractStartingPrice;

  /// No description provided for @contractTotalPrice.
  ///
  /// In ru, this message translates to:
  /// **'Общая цена'**
  String get contractTotalPrice;

  /// No description provided for @contractGoodQuantity.
  ///
  /// In ru, this message translates to:
  /// **'Количество товара'**
  String get contractGoodQuantity;

  /// No description provided for @contractGoodSpec.
  ///
  /// In ru, this message translates to:
  /// **'Спецификация товара'**
  String get contractGoodSpec;

  /// No description provided for @contractType.
  ///
  /// In ru, this message translates to:
  /// **'Тип'**
  String get contractType;

  /// No description provided for @contractGoodDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание товара'**
  String get contractGoodDescription;

  /// No description provided for @contractPaymentInfo.
  ///
  /// In ru, this message translates to:
  /// **'Информация об оплате'**
  String get contractPaymentInfo;

  /// No description provided for @contractPrepaymentPeriod.
  ///
  /// In ru, this message translates to:
  /// **'Срок предоплаты'**
  String get contractPrepaymentPeriod;

  /// No description provided for @contractAdvancePercent.
  ///
  /// In ru, this message translates to:
  /// **'Процент аванса'**
  String get contractAdvancePercent;

  /// No description provided for @contractWorkDaysValue.
  ///
  /// In ru, this message translates to:
  /// **'{days} раб. дн.'**
  String contractWorkDaysValue(Object days);

  /// No description provided for @contractCustomerAddress.
  ///
  /// In ru, this message translates to:
  /// **'Адрес заказчика'**
  String get contractCustomerAddress;

  /// No description provided for @museum_home_title.
  ///
  /// In ru, this message translates to:
  /// **'Билеты в самые интересные места'**
  String get museum_home_title;

  /// No description provided for @museum_search_hint.
  ///
  /// In ru, this message translates to:
  /// **'Куда хотите поехать?'**
  String get museum_search_hint;

  /// No description provided for @museum_section_popular.
  ///
  /// In ru, this message translates to:
  /// **'Популярные'**
  String get museum_section_popular;

  /// No description provided for @museum_popular_badge.
  ///
  /// In ru, this message translates to:
  /// **'Хотите посетить'**
  String get museum_popular_badge;

  /// No description provided for @museum_section_recommended.
  ///
  /// In ru, this message translates to:
  /// **'Предложения для вас'**
  String get museum_section_recommended;

  /// No description provided for @museum_currency_som.
  ///
  /// In ru, this message translates to:
  /// **'сум'**
  String get museum_currency_som;

  /// No description provided for @museum_price_from.
  ///
  /// In ru, this message translates to:
  /// **'от {price}'**
  String museum_price_from(Object price);

  /// No description provided for @museum_reviews_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} отзывов'**
  String museum_reviews_count(Object count);

  /// No description provided for @museum_not_rated.
  ///
  /// In ru, this message translates to:
  /// **'Ещё не оценён'**
  String get museum_not_rated;

  /// No description provided for @museum_page_failed_to_load.
  ///
  /// In ru, this message translates to:
  /// **'Страница не загрузилась'**
  String get museum_page_failed_to_load;

  /// No description provided for @museum_something_went_wrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Пожалуйста, попробуйте снова.'**
  String get museum_something_went_wrong;

  /// No description provided for @museum_refresh.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get museum_refresh;

  /// No description provided for @museum_search_title.
  ///
  /// In ru, this message translates to:
  /// **'Билеты'**
  String get museum_search_title;

  /// No description provided for @museum_search_where.
  ///
  /// In ru, this message translates to:
  /// **'Куда?'**
  String get museum_search_where;

  /// No description provided for @museum_search_where_hint.
  ///
  /// In ru, this message translates to:
  /// **'Город или музей'**
  String get museum_search_where_hint;

  /// No description provided for @museum_search_action.
  ///
  /// In ru, this message translates to:
  /// **'Найти'**
  String get museum_search_action;

  /// No description provided for @museum_search_history.
  ///
  /// In ru, this message translates to:
  /// **'История поиска'**
  String get museum_search_history;

  /// No description provided for @museum_search_history_clear.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get museum_search_history_clear;

  /// No description provided for @museum_list_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} варианта'**
  String museum_list_count(Object count);

  /// No description provided for @museum_list_count_in_city.
  ///
  /// In ru, this message translates to:
  /// **'{count} варианта в городе {city}'**
  String museum_list_count_in_city(Object city, Object count);

  /// No description provided for @museum_sort_popular.
  ///
  /// In ru, this message translates to:
  /// **'Популярные'**
  String get museum_sort_popular;

  /// No description provided for @museum_sort_price_asc.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дешёвые'**
  String get museum_sort_price_asc;

  /// No description provided for @museum_sort_price_desc.
  ///
  /// In ru, this message translates to:
  /// **'Сначала дорогие'**
  String get museum_sort_price_desc;

  /// No description provided for @museum_sort_rating.
  ///
  /// In ru, this message translates to:
  /// **'По рейтингу'**
  String get museum_sort_rating;

  /// No description provided for @museum_sort_newest.
  ///
  /// In ru, this message translates to:
  /// **'Новые'**
  String get museum_sort_newest;

  /// No description provided for @museum_not_found_title.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get museum_not_found_title;

  /// No description provided for @museum_not_found_message.
  ///
  /// In ru, this message translates to:
  /// **'По этому запросу ничего не найдено, попробуйте другие слова'**
  String get museum_not_found_message;

  /// No description provided for @museum_detail_about.
  ///
  /// In ru, this message translates to:
  /// **'О месте'**
  String get museum_detail_about;

  /// No description provided for @museum_detail_contacts.
  ///
  /// In ru, this message translates to:
  /// **'Контакты'**
  String get museum_detail_contacts;

  /// No description provided for @museum_detail_route.
  ///
  /// In ru, this message translates to:
  /// **'Построить маршрут'**
  String get museum_detail_route;

  /// No description provided for @museum_detail_location.
  ///
  /// In ru, this message translates to:
  /// **'Локация'**
  String get museum_detail_location;

  /// No description provided for @museum_detail_opening_hours.
  ///
  /// In ru, this message translates to:
  /// **'Часы работы'**
  String get museum_detail_opening_hours;

  /// No description provided for @museum_detail_reviews.
  ///
  /// In ru, this message translates to:
  /// **'Отзывы'**
  String get museum_detail_reviews;

  /// No description provided for @museum_detail_distance.
  ///
  /// In ru, this message translates to:
  /// **'Расстояние'**
  String get museum_detail_distance;

  /// No description provided for @museum_detail_buy.
  ///
  /// In ru, this message translates to:
  /// **'Купить билет'**
  String get museum_detail_buy;

  /// No description provided for @museum_detail_show_more.
  ///
  /// In ru, this message translates to:
  /// **'Показать больше'**
  String get museum_detail_show_more;

  /// No description provided for @museum_distance_km.
  ///
  /// In ru, this message translates to:
  /// **'{distance} км'**
  String museum_distance_km(Object distance);

  /// No description provided for @museum_purchase_title.
  ///
  /// In ru, this message translates to:
  /// **'Покупка билета'**
  String get museum_purchase_title;

  /// No description provided for @museum_purchase_total.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get museum_purchase_total;

  /// No description provided for @museum_purchase_pay.
  ///
  /// In ru, this message translates to:
  /// **'К оплате'**
  String get museum_purchase_pay;

  /// No description provided for @museum_purchase_valid_hours.
  ///
  /// In ru, this message translates to:
  /// **'Действует {hours} ч'**
  String museum_purchase_valid_hours(Object hours);

  /// No description provided for @museum_purchase_select_card.
  ///
  /// In ru, this message translates to:
  /// **'Выберите карту'**
  String get museum_purchase_select_card;

  /// No description provided for @museum_purchase_no_cards.
  ///
  /// In ru, this message translates to:
  /// **'Нет добавленных карт'**
  String get museum_purchase_no_cards;

  /// No description provided for @museum_purchase_add_card.
  ///
  /// In ru, this message translates to:
  /// **'Добавить карту'**
  String get museum_purchase_add_card;

  /// No description provided for @museum_purchase_items_required.
  ///
  /// In ru, this message translates to:
  /// **'Выберите хотя бы один билет'**
  String get museum_purchase_items_required;

  /// No description provided for @museum_purchase_pending_title.
  ///
  /// In ru, this message translates to:
  /// **'Оплата прошла'**
  String get museum_purchase_pending_title;

  /// No description provided for @museum_purchase_pending_message.
  ///
  /// In ru, this message translates to:
  /// **'Билеты оформляются, это займёт немного времени'**
  String get museum_purchase_pending_message;

  /// No description provided for @museum_purchase_no_tariffs.
  ///
  /// In ru, this message translates to:
  /// **'Тарифы недоступны'**
  String get museum_purchase_no_tariffs;

  /// No description provided for @museum_tickets_title_active.
  ///
  /// In ru, this message translates to:
  /// **'Мои билеты'**
  String get museum_tickets_title_active;

  /// No description provided for @museum_tickets_title_used.
  ///
  /// In ru, this message translates to:
  /// **'Использованные'**
  String get museum_tickets_title_used;

  /// No description provided for @museum_tickets_title_expired.
  ///
  /// In ru, this message translates to:
  /// **'Просроченные'**
  String get museum_tickets_title_expired;

  /// No description provided for @museum_tickets_count.
  ///
  /// In ru, this message translates to:
  /// **'{count} билета'**
  String museum_tickets_count(Object count);

  /// No description provided for @museum_ticket_location.
  ///
  /// In ru, this message translates to:
  /// **'Локация'**
  String get museum_ticket_location;

  /// No description provided for @museum_ticket_opened.
  ///
  /// In ru, this message translates to:
  /// **'Открыто'**
  String get museum_ticket_opened;

  /// No description provided for @museum_ticket_date.
  ///
  /// In ru, this message translates to:
  /// **'Дата'**
  String get museum_ticket_date;

  /// No description provided for @museum_ticket_number.
  ///
  /// In ru, this message translates to:
  /// **'Номер заказа'**
  String get museum_ticket_number;

  /// No description provided for @museum_ticket_amount.
  ///
  /// In ru, this message translates to:
  /// **'{count} билетов'**
  String museum_ticket_amount(Object count);

  /// No description provided for @museum_ticket_duration.
  ///
  /// In ru, this message translates to:
  /// **'за {hours} часа'**
  String museum_ticket_duration(Object hours);

  /// No description provided for @museum_ticket_issuing.
  ///
  /// In ru, this message translates to:
  /// **'Билеты оформляются'**
  String get museum_ticket_issuing;

  /// No description provided for @museum_tickets_empty_title.
  ///
  /// In ru, this message translates to:
  /// **'Билетов пока нет'**
  String get museum_tickets_empty_title;

  /// No description provided for @museum_tickets_empty_message.
  ///
  /// In ru, this message translates to:
  /// **'Купите билет, и он появится здесь'**
  String get museum_tickets_empty_message;

  /// No description provided for @museum_favorites_title.
  ///
  /// In ru, this message translates to:
  /// **'Избранные'**
  String get museum_favorites_title;

  /// No description provided for @museum_favorites_empty_title.
  ///
  /// In ru, this message translates to:
  /// **'Избранных пока нет'**
  String get museum_favorites_empty_title;

  /// No description provided for @museum_favorites_empty_message.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите на сердечко, чтобы сохранить место'**
  String get museum_favorites_empty_message;

  /// No description provided for @museum_auth_required.
  ///
  /// In ru, this message translates to:
  /// **'Войдите в аккаунт'**
  String get museum_auth_required;
}

class _FeatureTravelLocalizationsDelegate
    extends LocalizationsDelegate<FeatureTravelLocalizations> {
  const _FeatureTravelLocalizationsDelegate();

  @override
  Future<FeatureTravelLocalizations> load(Locale locale) {
    return SynchronousFuture<FeatureTravelLocalizations>(
      lookupFeatureTravelLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeatureTravelLocalizationsDelegate old) => false;
}

FeatureTravelLocalizations lookupFeatureTravelLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeatureTravelLocalizationsEn();
    case 'ru':
      return FeatureTravelLocalizationsRu();
    case 'uz':
      return FeatureTravelLocalizationsUz();
  }

  throw FlutterError(
    'FeatureTravelLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
