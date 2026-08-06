// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureTravelLocalizationsRu extends FeatureTravelLocalizations {
  FeatureTravelLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get nav_payment => 'Платеж';

  @override
  String get nav_services => 'Сервисы';

  @override
  String get language => 'Язык';

  @override
  String get theme => 'Тема';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'Английский',
      'ru': 'Русский',
      'uz': 'Узбекский',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(theme, {
      'system': 'Системный',
      'light': 'Светлая',
      'dark': 'Тёмная',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get guest => 'Привет Гость';

  @override
  String get action_all => 'Все';

  @override
  String currency_uzs(Object value) {
    return '$value сум';
  }

  @override
  String nPhotos(Object n) {
    return '$n фото';
  }

  @override
  String get getStarted => 'Начать';

  @override
  String get logout => 'Выйти';

  @override
  String get getStartedDescription =>
      'Получите полный доступ к возможностям, а также сохраняйте свои любимые вещи';

  @override
  String get continueWithGoogle => 'Продолжить с Google';

  @override
  String get continueWithApple => 'Продолжить с Apple';

  @override
  String get averageCheck => 'Средний рейтинг';

  @override
  String get search => 'Поиск';

  @override
  String get rating => 'Рейтинг';

  @override
  String get favorites => 'Избранное';

  @override
  String n_items(Object n) {
    return '$n элементов';
  }

  @override
  String get select_location => 'Выберите местоположение';

  @override
  String get about => 'О нас';

  @override
  String get uzbekistan => 'Узбекистан';

  @override
  String get exchange_rates => 'Курсы валют';

  @override
  String get uzbek_currency => '*Узбекская валюта (UZS) называется сум';

  @override
  String get exchange_banks => 'Обменные банки';

  @override
  String get loading_data => 'Загрузка данных';

  @override
  String get coming_soon => 'Вскоре!';

  @override
  String get coming_soon_message => 'Мы работаем над чем-то великим.';

  @override
  String get nothing_found => 'Ничего не найдено';

  @override
  String get nothing_found_message => 'Ничего не найдено. Попробуйте снова!';

  @override
  String get refresh => 'Обновить';

  @override
  String get pageFailedToLoad => 'Страница не загрузилась';

  @override
  String get something_went_wrong =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get generalEmergency => 'Аварийная служба';

  @override
  String get touristPolice => 'Туристическая полиция';

  @override
  String get fire => 'Пожарная служба';

  @override
  String get police => 'Полиция';

  @override
  String get medical => 'Скорая помощь';

  @override
  String get gasEmergency => 'Газовая аварийная служба';

  @override
  String get emergencyContacts => 'Экстренные контакты';

  @override
  String get usefulTips => 'Полезные советы';

  @override
  String get logoutConfirmation => 'Вы хотите выйти из системы?';

  @override
  String get deleteAccountConfirmation => 'Вы хотите удалить аккаунт?';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get cancel => 'Отмена';

  @override
  String get warning => 'Предупреждение';

  @override
  String get guest_chose => 'Выбор гостей';

  @override
  String get distanceKm => 'км';

  @override
  String get distanceM => 'м';

  @override
  String prayerTime(String time) {
    String _temp0 = intl.Intl.selectLogic(time, {
      'fajr': 'Фаджр',
      'sunrise': 'Восход',
      'dhuhr': 'Зухр',
      'asr': 'Аср',
      'maghrib': 'Магриб',
      'isha': 'Иша',
      'other': 'Намаз',
    });
    return '$_temp0';
  }

  @override
  String get prayerTimeTitle => 'Время намаза';

  @override
  String get notifications => 'Оповещения';

  @override
  String get whatAmenitiesAwait => 'Какие удобства вас ждут';

  @override
  String get viewAllAmenities => 'Смотреть все удобства';

  @override
  String get contacts => 'Контакты';

  @override
  String get readMore => 'Читать полностью';

  @override
  String get aboutPlace => 'О месте';

  @override
  String get moreDetails => 'Подробнее';

  @override
  String get location => 'Расположение';

  @override
  String get buildRoute => 'Построить маршрут';

  @override
  String get feedbackImportant => 'Ваше мнение очень важно для нас, спасибо!';

  @override
  String get leaveFeedback => 'Оставьте свой отзыв';

  @override
  String reviewsCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отзывов',
      many: '$count отзывов',
      few: '$count отзыва',
      one: '$count отзыв',
      zero: '0 отзывов',
    );
    return '$_temp0';
  }

  @override
  String get sendFeedback => 'Отправить отзыв';

  @override
  String get map_open_in => 'Открыть с помощью';

  @override
  String get workingHours => 'Рабочее время';

  @override
  String get writeReviewInFewSentences =>
      'Напиши отзыв в нескольких предложениях';

  @override
  String get catalogMyEsim => 'My eSIM';

  @override
  String get currency_som => 'сум';

  @override
  String get home_events => 'Мероприятия';

  @override
  String get home_cities => 'Города';

  @override
  String get home_cities_subtitle => 'Куда хотите сходить в выходные?';

  @override
  String get home_city_badge => 'Хотите посетить';

  @override
  String get home_search_hint => 'Куда хотите поехать?';

  @override
  String get home_currency_calculator => 'Калькулятор валют';

  @override
  String get catalogTravelQuiz => 'Travel Quiz';

  @override
  String get catalogAviaTickets => 'Авиабилеты';

  @override
  String get catalogChargers => 'Зарядки';

  @override
  String get catalogPoster => 'Афиша';

  @override
  String get catalogTrainTickets => 'ЖД билеты';

  @override
  String get catalogHotels => 'Отели';

  @override
  String get catalogCottages => 'Дачи';

  @override
  String get catalogInsurance => 'Страховка';

  @override
  String get catalogItemStatusNew => 'Новое';

  @override
  String get catalogItemStatusSoon => 'Скоро';

  @override
  String get investment_search_title => 'Что ищете?';

  @override
  String get investment_top_contents_title => 'Рекомендуем';

  @override
  String get investments_category_title => 'Все';

  @override
  String investment_amount(Object amount, String currency) {
    String _temp0 = intl.Intl.selectLogic(currency, {
      'UZS': 'от $amount сум',
      'USD': 'от $amount USD',
      'other': '$amount',
    });
    return '$_temp0';
  }

  @override
  String get investment_page_sort_ask => 'Сначала дешевле';

  @override
  String get investment_page_sort_desk => 'Сначала дороже';

  @override
  String get investment_page_sort_popular => 'Популярное';

  @override
  String get investment_page_sort => 'Сортировка';

  @override
  String get investment_page_sort_price => 'Валюта';

  @override
  String get investment_page_sort_title => 'Фильтр';

  @override
  String get investment_search_page_initial => 'Введите запрос для поиска...';

  @override
  String get action_cancel => 'Отмена';

  @override
  String get action_detail => 'Подробно';

  @override
  String get gift_page_title => 'Вам доступен\nподарок';

  @override
  String get gift_page_subtitle => 'Нажмите, чтобы забрать';

  @override
  String get gift_page_action => 'Забрать приз';

  @override
  String gift_second_page_title_minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Возвращайтесь через $count минут',
      many: 'Возвращайтесь через $count минут',
      few: 'Возвращайтесь через $count минуты',
      one: 'Возвращайтесь через $count минуту',
    );
    return '$_temp0';
  }

  @override
  String gift_second_page_title_hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Возвращайтесь через $count часов',
      many: 'Возвращайтесь через $count часов',
      few: 'Возвращайтесь через $count часа',
      one: 'Возвращайтесь через $count час',
    );
    return '$_temp0';
  }

  @override
  String gift_second_page_title_day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Возвращайтесь через $count дней',
      many: 'Возвращайтесь через $count дней',
      few: 'Возвращайтесь через $count дня',
      one: 'Возвращайтесь через $count день',
    );
    return '$_temp0';
  }

  @override
  String get gift_second_page_subtitle => 'Мы готовим ваш подарок';

  @override
  String get gift_history => 'История призов';

  @override
  String get mb => 'МБ';

  @override
  String get gb => 'ГБ';

  @override
  String get claim_dialog_caption =>
      'Вы получили бонус на свой мобильный номер';

  @override
  String get claim_warning_page_title => 'Только для абонентов Uztelecom';

  @override
  String get claim_warning_page_caption =>
      'Для получения подарка необходимо пройти регистрацию на номер Uztelecom';

  @override
  String get premiumConnect => 'Подключить Premium';

  @override
  String get premiumCancelAnytime => 'Отменить можно в любое время.';

  @override
  String get premiumTerms => 'Условия использования';

  @override
  String get premiumFeatureAiTitle => 'Безлимитные AI-сервисы';

  @override
  String get premiumFeatureAiDesc =>
      'Caloria AI, Trip Planer, Travel Cam AI и многое другое';

  @override
  String get premiumFeatureEsimTitle => 'Промокод eSIM';

  @override
  String get premiumFeatureEsimDesc => 'Скидка на золотой номер';

  @override
  String get premiumFeatureDiscountTitle => 'Раздел скидок';

  @override
  String get premiumFeatureDiscountDesc => 'Эксклюзивные скидки от партнёров';

  @override
  String get premiumFeatureProfileTitle => 'Фото профиля';

  @override
  String get premiumFeatureProfileDesc => 'Персонализируйте свой профиль';

  @override
  String premiumMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count месяцев',
      many: '$count месяцев',
      few: '$count месяца',
      one: '$count месяц',
    );
    return '$_temp0';
  }

  @override
  String premiumDiscountBadge(Object percent) {
    return 'скидка -$percent%';
  }

  @override
  String get premiumCancelSubscription => 'Отменить подписку';

  @override
  String premiumSubscriptionTitle(Object plan) {
    return 'Подписка $plan';
  }

  @override
  String get statusActive => 'Активна';

  @override
  String get premiumStartDate => 'Дата начала';

  @override
  String get premiumExpiryDate => 'Срок действия';

  @override
  String get premiumDaysRemaining => 'Осталось времени';

  @override
  String premiumDaysValue(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дней',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get premiumServiceLocked =>
      'Эта услуга и многое другое доступно в Premium';

  @override
  String get premiumLearnMore => 'Узнать подробнее';

  @override
  String get premiumLimitReachedTitle => 'У вас закончились бесплатные лимиты';

  @override
  String get premiumLimitReachedDesc =>
      'Для неограниченного доступа ко всем услугам, вам необходимо подключить Premium';

  @override
  String get premiumSuccessTitle => 'Вы подключили подписку';

  @override
  String get premiumSuccessSubtitle =>
      'Вам доступны все преимущества Premium подписки';

  @override
  String get premiumCancelConfirmTitle => 'Отменить подписку?';

  @override
  String get premiumCancelConfirmMessage =>
      'Premium подписка будет отменена, и все возможности станут недоступны.';

  @override
  String get premiumCancelConfirmAction => 'Да, отменить';

  @override
  String get premiumCancelDismiss => 'Нет';

  @override
  String get contractDetailsTitle => 'Детали договора';

  @override
  String contractTitle(Object number) {
    return 'Номер договора №$number';
  }

  @override
  String get contractInfoSection => 'Информация о договоре';

  @override
  String get contractDate => 'Дата договора';

  @override
  String get contractCurrency => 'Валюта';

  @override
  String get contractDiscussionEndDate => 'Дата окончания обсуждения';

  @override
  String get contractTotalAmount => 'Общая сумма';

  @override
  String get contractEndDate => 'Дата окончания';

  @override
  String get contractOqsAmount => 'Сумма ОКС';

  @override
  String get contractBasis => 'Основание';

  @override
  String get contractAdvanceAmount => 'Сумма аванса';

  @override
  String get contractRegion => 'Регион';

  @override
  String get contractPaymentTerms => 'Условия оплаты';

  @override
  String get contractAdvancePaymentDay => 'День оплаты аванса';

  @override
  String get contractPaymentPeriod => 'Срок оплаты';

  @override
  String get contractDeliveryPeriod => 'Срок поставки';

  @override
  String contractDaysValue(Object days) {
    return '$days дн.';
  }

  @override
  String get contractProducts => 'Продукты';

  @override
  String get contractProductName => 'Наименование продукта';

  @override
  String get contractCode => 'Код';

  @override
  String get contractQuantity => 'Количество';

  @override
  String get contractPrice => 'Цена';

  @override
  String get contractAdvance => 'Аванс';

  @override
  String get contractDescription => 'Описание';

  @override
  String get contractProductProperties => 'Характеристики продукта';

  @override
  String get contractUnitOfMeasure => 'Единица измерения';

  @override
  String get contractGoods => 'Товары';

  @override
  String get contractStartingPrice => 'Начальная цена за единицу';

  @override
  String get contractTotalPrice => 'Общая цена';

  @override
  String get contractGoodQuantity => 'Количество товара';

  @override
  String get contractGoodSpec => 'Спецификация товара';

  @override
  String get contractType => 'Тип';

  @override
  String get contractGoodDescription => 'Описание товара';

  @override
  String get contractPaymentInfo => 'Информация об оплате';

  @override
  String get contractPrepaymentPeriod => 'Срок предоплаты';

  @override
  String get contractAdvancePercent => 'Процент аванса';

  @override
  String contractWorkDaysValue(Object days) {
    return '$days раб. дн.';
  }

  @override
  String get contractCustomerAddress => 'Адрес заказчика';
}
