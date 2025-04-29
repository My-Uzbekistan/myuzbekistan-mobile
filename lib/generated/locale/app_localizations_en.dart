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
  String get continueWithApple => 'Continue with Apple';

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

  @override
  String get loading_data => 'Loading data';

  @override
  String get coming_soon => 'Coming soon!';

  @override
  String get coming_soon_message => 'We are working on something great.';

  @override
  String get nothing_found => 'Nothing found';

  @override
  String get nothing_found_message => 'No results found. Try searching again!';

  @override
  String get refresh => 'Refresh';

  @override
  String get pageFailedToLoad => 'Page failed to load';

  @override
  String get something_went_wrong => 'Something went wrong. Please try again.';

  @override
  String get generalEmergency => 'General Emergency';

  @override
  String get touristPolice => 'Tourist police';

  @override
  String get fire => 'Fire';

  @override
  String get police => 'Police';

  @override
  String get medical => 'Medical';

  @override
  String get gasEmergency => 'Gas Emergency';

  @override
  String get emergencyContacts => 'Emergency Contacts';

  @override
  String get usefulTips => 'Useful tips';

  @override
  String get logoutConfirmation => 'Do you want to log out?';

  @override
  String get deleteAccountConfirmation => 'Do you want to delete the account?';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get cancel => 'Cancel';

  @override
  String get warning => 'Warning';
}
