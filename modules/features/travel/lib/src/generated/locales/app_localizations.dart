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

  /// No description provided for @prayerTime.
  ///
  /// In ru, this message translates to:
  /// **'{time, select, fajr{Фаджр} sunrise{Восход} dhuhr{Зухр} asr{Аср} maghrib{Магриб} isha{Иша} other{Намаз}}'**
  String prayerTime(String time);

  /// No description provided for @prayerTimeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Время намаза'**
  String get prayerTimeTitle;

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
