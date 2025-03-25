// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get nav_home => 'Home';

  @override
  String get nav_map => 'Map';

  @override
  String get nav_payment => 'Payment';

  @override
  String get nav_transfer => 'Transfer';

  @override
  String get nav_more => 'More';

  @override
  String get action_all => 'All';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(
      lang,
      {
        'en': 'English',
        'ru': 'Russian',
        'uz': 'Uzbek',
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
        'system': 'System',
        'light': 'Light',
        'dark': 'Dark',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get guest => 'Hello Guest';

  @override
  String currency_uzs(Object value) {
    return '$value uzs';
  }

  @override
  String nPhotos(Object n) {
    return '$n photos';
  }

  @override
  String get getStarted => 'Get Started';

  @override
  String get logout => 'Logout';

  @override
  String get getStartedDescription => 'Get full access to opportunities, as well as keep your favorite things';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get averageCheck => 'Average check';

  @override
  String get search => 'Search';

  @override
  String get rating => 'Rating';

  @override
  String get favorites => 'Favorites';

  @override
  String n_items(Object n) {
    return '$n items';
  }

  @override
  String get select_location => 'Select location';

  @override
  String get about => 'About';

  @override
  String get uzbekistan => 'Uzbekistan';

  @override
  String get exchange_rates => 'Exchange rates';

  @override
  String get uzbek_currency => '*The Uzbek currency (UZS) is called SOUM';

  @override
  String get exchange_banks => 'Exchange banks';
}
