// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeatureMoreLocalizationsRu extends FeatureMoreLocalizations {
  FeatureMoreLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get language => 'Язык приложения';

  @override
  String get theme => 'Тема приложения';

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
  String langItemDefault(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'English',
      'ru': 'Русский',
      'uz': 'O\'zbekcha',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get selectLanguageTitle => 'Выберите язык интерфейса';

  @override
  String get welcomeTitle => 'Добро пожаловать';

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(theme, {
      'system': 'Системная',
      'light': 'Светлая',
      'dark': 'Тёмная',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get guest => 'Гость';

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
  String get logout => 'Выйти из приложения';

  @override
  String get logout_confirm_title => 'Выйти из приложения?';

  @override
  String get exit => 'Выйти';

  @override
  String get logoutConfirmation => 'Вы собираетесь выйти из приложения';

  @override
  String get deleteAccountConfirmation =>
      'Ваша учетная запись и все данные, такие как, сохраненные места и банковские карты будут удалены';

  @override
  String get delete_account_confirm_title => 'Удалить учетную запись?';

  @override
  String get deleteAccount => 'Удалить учетную запись';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get warning => 'Предупреждение';

  @override
  String get guest_chose => 'Выбор гостей';

  @override
  String get distanceKm => 'км';

  @override
  String get distanceM => 'м';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String get notification => 'Уведомления';

  @override
  String get pin_code => 'PIN-код';

  @override
  String get biometric_auth => 'Вход со сканером';

  @override
  String get prayer_time_widget => 'Виджет намаза';

  @override
  String get iq_air_widget => 'Виджет IQAir';

  @override
  String get about_app => 'О приложении';

  @override
  String get log_in => 'Авторизоваться';

  @override
  String get version => 'Версия';

  @override
  String get privacy_policy => 'Политика конфиденциальности';

  @override
  String get licenses => 'Лицензии';

  @override
  String get pin_code_create_title => 'Придумайте код доступа';

  @override
  String get pin_code_repeat => 'Повторите';

  @override
  String get pinMismatch => 'Код не совпадает';

  @override
  String get resetPinTitle => 'Сбросить PIN-код';

  @override
  String get resetPinMessage =>
      'Все данные будут удалены без возможности восстановления. Потребуется новая регистрация.';

  @override
  String get resetPinAction => 'Сбросить\nкод';

  @override
  String get changePinTitle => 'Изменить PIN-код';

  @override
  String get enter_new_code => 'Введите новый код';

  @override
  String get delete_code => 'Удалить код';

  @override
  String get delete_pin_title => 'Удалить PIN-код';

  @override
  String get delete_pin_message =>
      'Вход по PIN будет отключён. Вы сможете создать новый PIN в любой момент';

  @override
  String get pincode_created => 'PIN-код успешно создан';

  @override
  String get pincode_deleted => 'PIN-код удалён';

  @override
  String get pinUpdated => 'PIN-код успешно обновлён.';

  @override
  String get enter_code => 'Введите код';

  @override
  String get authPrompt => 'Пройдите аутентификацию для доступа к приложению';

  @override
  String get auth_phone_page_title => 'Введите ваш номер';

  @override
  String get auth_phone_page_hint => 'Номер телефона';

  @override
  String get auth_phone_sms_hint => 'Мы вышлем вам SMS-код';

  @override
  String get auth_phone_invalid_format => 'Неверный формат номера';

  @override
  String get action_continue => 'Продолжить';

  @override
  String get accept_terms => 'Нажимая на кнопку, вы принимаете terms';

  @override
  String get terms => 'условия пользовательского соглашения';

  @override
  String get auth_page_action_phone => 'Войти по номеру телефона';

  @override
  String get premium => 'Premium';

  @override
  String get premiumActiveSubtitle => 'Premium подписка активна';

  @override
  String get changePhotoTitle => 'Фото профиля';

  @override
  String get takePhotoFromCamera => 'Сделать фото';

  @override
  String get chooseFromGallery => 'Выбрать из галереи';

  @override
  String get photoUpdated => 'Фото профиля обновлено';

  @override
  String get photoUploadError => 'Не удалось загрузить фото. Повторите попытку';

  @override
  String get premiumRequiredForPhoto =>
      'Эта функция доступна только для Premium';

  @override
  String get upgrade => 'Улучшить';

  @override
  String get edit => 'Редактировать';

  @override
  String get security => 'Безопасность';

  @override
  String get contactUs => 'Связаться с нами';

  @override
  String get save => 'Сохранить';

  @override
  String get firstName => 'Имя';

  @override
  String get lastName => 'Фамилия';

  @override
  String get phoneNumber => 'Номер телефона';

  @override
  String get registrationMethod => 'Способ регистрации:';

  @override
  String get viaGoogle => 'Через Google';

  @override
  String get scannerLogin => 'Вход со сканером';

  @override
  String get scannerLoginPrompt =>
      'Подтвердите, чтобы включить вход со сканером';

  @override
  String get biometricNotAvailable =>
      'Вход со сканером недоступен на вашем устройстве';

  @override
  String get devices => 'Устройства';

  @override
  String get thisDevice => 'Это устройство';

  @override
  String get activeSessions => 'Активные сеансы';

  @override
  String get terminateOtherSessions => 'Завершить все остальные сеансы';

  @override
  String get terminateConfirmTitle => 'Вы уверены, что хотите это завершить?';

  @override
  String get terminateOtherSessionsMessage =>
      'Это действие завершит работу всех остальных устройств';

  @override
  String get terminateSessionMessage => 'Это устройство выйдет из приложения';

  @override
  String get terminate => 'Завершить';

  @override
  String get deviceOnline => 'online';

  @override
  String get unknownDevice => 'Неизвестное устройство';

  @override
  String get deviceOffline => 'Не в сети';

  @override
  String get deviceIpAddress => 'IP-адрес';

  @override
  String get deviceLocation => 'Геопозиция';

  @override
  String get signOutFromDevice => 'Выйти из устройства';

  @override
  String get noActiveSessions => 'Других активных сеансов нет';

  @override
  String premiumActiveUntil(String date) {
    return 'Активен до $date';
  }

  @override
  String get premiumBuySubscription => 'Приобретите подписку';

  @override
  String get webViewExitTitle => 'Вы действительно хотите выйти?';

  @override
  String get webViewExitMessage =>
      'Страница закроется, введённые данные не сохранятся.';

  @override
  String get yes => 'Да';
}
