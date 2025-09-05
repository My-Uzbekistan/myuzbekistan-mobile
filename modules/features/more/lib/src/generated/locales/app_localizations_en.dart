// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureMoreLocalizationsEn extends FeatureMoreLocalizations {
  FeatureMoreLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'App language';

  @override
  String get theme => 'App theme';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'English',
      'ru': 'Russian',
      'uz': 'Uzbek',
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
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(theme, {
      'system': 'System',
      'light': 'Light',
      'dark': 'Dark',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get guest => 'Guest';

  @override
  String get action_all => 'All';

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
  String get getStartedDescription =>
      'Get full access to opportunities, as well as keep your favorite things';

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
  String get logout => 'Logout';

  @override
  String get logout_confirm_title => 'Exit the app';

  @override
  String get exit => 'Exit';

  @override
  String get logoutConfirmation => 'You are about to exit the app';

  @override
  String get deleteAccountConfirmation =>
      'Your account and all data, such as saved places and bank cards, will be deleted.';

  @override
  String get delete_account_confirm_title => 'Delete account?';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get warning => 'Warning';

  @override
  String get guest_chose => 'Guest selection';

  @override
  String get distanceKm => 'km';

  @override
  String get distanceM => 'm';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get notification => 'Notifications';

  @override
  String get pin_code => 'PIN code';

  @override
  String get biometric_auth => 'Biometric login';

  @override
  String get prayer_time_widget => 'Prayer time widget';

  @override
  String get about_app => 'About App';

  @override
  String get log_in => 'Sign in';

  @override
  String get version => 'Version';

  @override
  String get privacy_policy => 'Privacy policy';

  @override
  String get licenses => 'Licenses';

  @override
  String get pin_code_create_title => 'Create PIN code';

  @override
  String get pin_code_repeat => 'Repeat the code';

  @override
  String get pinMismatch => 'PIN does not match';

  @override
  String get resetPinTitle => 'Reset PIN';

  @override
  String get resetPinMessage =>
      'All data will be permanently deleted without the possibility of recovery. A new registration will be required.';

  @override
  String get resetPinAction => 'Reset\nCode';

  @override
  String get changePinTitle => 'Change PIN';

  @override
  String get enter_new_code => 'Enter new code';

  @override
  String get delete_code => 'Delete code';

  @override
  String get delete_pin_title => 'Delete PIN code';

  @override
  String get delete_pin_message =>
      'PIN login will be disabled. You can create a new PIN at any time';

  @override
  String get pincode_created => 'PIN code created successfully';

  @override
  String get pincode_deleted => 'PIN code deleted';

  @override
  String get enter_code => 'Enter code';

  @override
  String get authPrompt => 'Please authenticate to access the application';

  @override
  String get fiscalReceipt => 'Fiscal receipt';
}
