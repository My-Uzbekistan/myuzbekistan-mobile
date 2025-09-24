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
}
