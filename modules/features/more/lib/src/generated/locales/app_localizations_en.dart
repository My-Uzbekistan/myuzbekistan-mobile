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
  String get selectLanguageTitle => 'Select interface language';

  @override
  String get welcomeTitle => 'Welcome';

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
  String get emergencyContacts => 'Emergency numbers';

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
  String get prayer_time_widget => 'Prayer widget';

  @override
  String get iq_air_widget => 'IQAir widget';

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
  String get pinUpdated => 'PIN code has been successfully updated.';

  @override
  String get enter_code => 'Enter code';

  @override
  String get authPrompt => 'Please authenticate to access the application';

  @override
  String get auth_phone_page_title => 'Enter your number';

  @override
  String get auth_phone_page_hint => 'Phone number';

  @override
  String get auth_phone_sms_hint => 'We\'ll send you an SMS code';

  @override
  String get auth_phone_invalid_format => 'Invalid number format';

  @override
  String get action_continue => 'Continue';

  @override
  String get accept_terms => 'By clicking the button, you agree to the terms';

  @override
  String get terms => 'Terms of the User Agreement';

  @override
  String get auth_page_action_phone => 'Continue with phone';

  @override
  String get premium => 'Premium';

  @override
  String get premiumActiveSubtitle => 'Premium subscription active';

  @override
  String get changePhotoTitle => 'Profile photo';

  @override
  String get takePhotoFromCamera => 'Take a photo';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String get photoUpdated => 'Profile photo updated';

  @override
  String get photoUploadError => 'Failed to upload photo. Please try again';

  @override
  String get premiumRequiredForPhoto =>
      'This feature is for Premium users only';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get edit => 'Edit';

  @override
  String get security => 'Security';

  @override
  String get contactUs => 'Contact us';

  @override
  String get save => 'Save';

  @override
  String get firstName => 'First name';

  @override
  String get lastName => 'Last name';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get registrationMethod => 'Registration method:';

  @override
  String get viaGoogle => 'Via Google';

  @override
  String get scannerLogin => 'Scanner login';

  @override
  String get scannerLoginPrompt => 'Confirm to enable scanner login';

  @override
  String get biometricNotAvailable =>
      'Scanner login is not available on your device';

  @override
  String get devices => 'Devices';

  @override
  String get thisDevice => 'This device';

  @override
  String get activeSessions => 'Active sessions';

  @override
  String get terminateOtherSessions => 'End all other sessions';

  @override
  String get terminateConfirmTitle => 'Are you sure you want to end this?';

  @override
  String get terminateOtherSessionsMessage =>
      'This action will end the session on all other devices';

  @override
  String get terminateSessionMessage =>
      'This device will be signed out of the app';

  @override
  String get terminate => 'End';

  @override
  String get deviceOnline => 'online';

  @override
  String get unknownDevice => 'Unknown device';

  @override
  String get deviceOffline => 'Offline';

  @override
  String get deviceIpAddress => 'IP address';

  @override
  String get deviceLocation => 'Location';

  @override
  String get signOutFromDevice => 'Sign out of device';

  @override
  String get noActiveSessions => 'No other active sessions';

  @override
  String premiumActiveUntil(String date) {
    return 'Active until $date';
  }

  @override
  String get premiumBuySubscription => 'Get a subscription';

  @override
  String get webViewExitTitle => 'Do you really want to leave?';

  @override
  String get webViewExitMessage =>
      'The page will close and the entered data will not be saved.';

  @override
  String get yes => 'Yes';

  @override
  String get nearbyPlaces => 'Nearby places notifications';

  @override
  String get nearbyPlacesDisclosureTitle => 'Discover places around you';

  @override
  String get nearbyPlacesDisclosureBody =>
      'Get a heads-up when you walk past a museum, restaurant or sight worth seeing. To do this, MyUzbekistan uses your location even when the app is closed or not in use.';

  @override
  String get nearbyPlacesDisclosureDistance =>
      'Your location is used only to find places near you';

  @override
  String get nearbyPlacesDisclosureLimit =>
      'No more than 2 notifications a day, never at night';

  @override
  String get nearbyPlacesDisclosureTurnOff =>
      'Turn it off anytime in the More tab';

  @override
  String get nearbyPlacesDisclosureHint =>
      'To work when the app is closed, this feature needs “Always” location access.';

  @override
  String get nearbyPlacesDisclosureContinue => 'Continue';

  @override
  String get nearbyPlacesDisclosureLater => 'Not now';

  @override
  String get nearbyPlacesPermissionDenied =>
      'To use this feature, open MyUzbekistan → Location in your phone settings and choose “Always”.';

  @override
  String get nearbyPlacesTrackingTitle => 'Nearby places';

  @override
  String get nearbyPlacesTrackingText =>
      'We\'ll let you know about interesting places nearby';

  @override
  String get pin_invalid => 'Invalid PIN';
}
