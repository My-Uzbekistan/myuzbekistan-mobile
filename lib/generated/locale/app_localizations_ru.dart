// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get nav_home => 'Главная';

  @override
  String get nav_map => 'Карта';

  @override
  String get nav_payment => 'Платеж';

  @override
  String get nav_transfer => 'Перевод';

  @override
  String get nav_more => 'Еще';

  @override
  String get action_all => 'Все';

  @override
  String get language => 'Язык';

  @override
  String get theme => 'Тема';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(
      lang,
      {
        'en': 'Английский',
        'ru': 'Русский',
        'uz': 'Узбекский',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(
      theme,
      {
        'system': 'Системный',
        'light': 'Светлая',
        'dark': 'Тёмная',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get guest => 'Привет Гость';

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
  String get getStartedDescription => 'Получите полный доступ к возможностям, а также сохраняйте свои любимые вещи';

  @override
  String get continueWithGoogle => 'Продолжить с Google';

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
}
