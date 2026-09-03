// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeatureTravelLocalizationsEn extends FeatureTravelLocalizations {
  FeatureTravelLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get nav_payment => 'Payment';

  @override
  String get nav_services => 'Services';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

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
  String get guest => 'Hello Guest';

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
  String get logout => 'Logout';

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

  @override
  String get guest_chose => 'Guest selection';

  @override
  String get distanceKm => 'km';

  @override
  String get distanceM => 'm';

  @override
  String get prayerTimeTitle => 'Prayer Times';

  @override
  String get prayerLocation => 'Location';

  @override
  String get notifications => 'Notifications';

  @override
  String get whatAmenitiesAwait => 'What amenities await you';

  @override
  String get viewAllAmenities => 'View all amenities';

  @override
  String get contacts => 'Contacts';

  @override
  String get readMore => 'Read more';

  @override
  String get aboutPlace => 'About the place';

  @override
  String get moreDetails => 'More details';

  @override
  String get location => 'Location';

  @override
  String get buildRoute => 'Get directions';

  @override
  String get feedbackImportant =>
      'Your feedback is very important to us, thank you!';

  @override
  String get leaveFeedback => 'Leave your feedback';

  @override
  String get leaveReview => 'Leave a review';

  @override
  String reviewsCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reviews',
      one: '1 review',
      zero: '0 reviews',
    );
    return '$_temp0';
  }

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get map_open_in => 'Open In';

  @override
  String get workingHours => 'Working hours';

  @override
  String get reviews => 'Reviews';

  @override
  String get showMore => 'Show more';

  @override
  String get open => 'Open';

  @override
  String get closed => 'Closed';

  @override
  String distanceFromUs(Object distance) {
    return 'You are $distance away from us';
  }

  @override
  String get expand => 'Expand';

  @override
  String get writeReviewInFewSentences => 'Write a review in a few sentences';

  @override
  String get catalogMyEsim => 'My eSIM';

  @override
  String get currency_som => 'sum';

  @override
  String get home_events => 'Events';

  @override
  String get home_cities => 'Cities';

  @override
  String get home_cities_subtitle => 'Where to go on the weekend?';

  @override
  String get home_city_badge => 'Want to visit';

  @override
  String get home_search_hint => 'Where do you want to go?';

  @override
  String get home_currency_calculator => 'Currency calculator';

  @override
  String get catalogTravelQuiz => 'Travel Quiz';

  @override
  String get catalogAviaTickets => 'Flight tickets';

  @override
  String get catalogChargers => 'Chargers';

  @override
  String get catalogPoster => 'Poster';

  @override
  String get catalogTrainTickets => 'Train tickets';

  @override
  String get catalogHotels => 'Hotels';

  @override
  String get catalogCottages => 'Cottages';

  @override
  String get catalogInsurance => 'Insurance';

  @override
  String get catalogItemStatusNew => 'New';

  @override
  String get catalogItemStatusPremium => 'Premium';

  @override
  String get catalogItemStatusSoon => 'Soon';

  @override
  String get investment_search_title => 'Search';

  @override
  String get investment_top_contents_title => 'Recommended';

  @override
  String get investments_category_title => 'All';

  @override
  String investment_amount(Object amount, String currency) {
    String _temp0 = intl.Intl.selectLogic(currency, {
      'UZS': 'from $amount UZS',
      'USD': 'from $amount USD',
      'other': '$amount',
    });
    return '$_temp0';
  }

  @override
  String get investment_page_sort_ask => 'Lowest price';

  @override
  String get investment_page_sort_desk => 'Highest price';

  @override
  String get investment_page_sort_popular => 'Popular';

  @override
  String get investment_page_sort => 'Sorting';

  @override
  String get investment_page_sort_price => 'Currency';

  @override
  String get investment_page_sort_title => 'Filter';

  @override
  String get investment_search_page_initial => 'Enter search query...';

  @override
  String get action_cancel => 'Cancel';

  @override
  String get action_detail => 'In detail';

  @override
  String get gift_page_title => 'A gift is available for you';

  @override
  String get gift_page_subtitle => 'Tap to claim';

  @override
  String get gift_page_action => 'Claim the prize';

  @override
  String gift_second_page_title_minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Come back in $count minutes',
      one: 'Come back in 1 minute',
    );
    return '$_temp0';
  }

  @override
  String gift_second_page_title_hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Come back in $count hours',
      one: 'Come back in 1 hour',
    );
    return '$_temp0';
  }

  @override
  String gift_second_page_title_day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Come back in $count days',
      one: 'Come back in 1 day',
    );
    return '$_temp0';
  }

  @override
  String get gift_second_page_subtitle => 'We are preparing your gift';

  @override
  String get gift_empty_hint => 'You have no gifts yet';

  @override
  String get gift_history => 'Prize history';

  @override
  String get mb => 'MB';

  @override
  String get gb => 'GB';

  @override
  String get claim_dialog_caption =>
      'You received a bonus on your mobile number';

  @override
  String get claim_warning_page_title => 'Only for Uztelecom subscribers';

  @override
  String get claim_warning_page_caption =>
      'To receive the gift, you need to register with an Uztelecom number';

  @override
  String get premiumOnboardingTitle => 'Get MyUzbekistan Premium';

  @override
  String get premiumOnboardingSubtitle =>
      'Activate a premium subscription to unlock all features of the app';

  @override
  String get premiumStatusTitle => 'MyUzbekistan Premium';

  @override
  String get premiumConnect => 'Get Premium';

  @override
  String get premiumCancelAnytime => 'You can cancel anytime.';

  @override
  String get premiumTerms => 'Terms of use';

  @override
  String get premiumFeatureAiTitle => 'Unlimited AI services';

  @override
  String get premiumFeatureAiDesc =>
      'Caloria AI, Trip Planner, Travel Cam AI and more';

  @override
  String get premiumFeatureEsimTitle => 'eSIM promo code';

  @override
  String get premiumFeatureEsimDesc => 'Discount on a gold number';

  @override
  String get premiumFeatureDiscountTitle => 'Discounts section';

  @override
  String get premiumFeatureDiscountDesc => 'Exclusive discounts from partners';

  @override
  String get premiumFeatureProfileTitle => 'Profile photo';

  @override
  String get premiumFeatureProfileDesc => 'Personalize your profile';

  @override
  String premiumMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months',
      one: '$count month',
    );
    return '$_temp0';
  }

  @override
  String premiumDiscountBadge(Object percent) {
    return 'discount -$percent%';
  }

  @override
  String get premiumCancelSubscription => 'Cancel subscription';

  @override
  String premiumSubscriptionTitle(Object plan) {
    return '$plan subscription';
  }

  @override
  String get statusActive => 'Active';

  @override
  String get premiumStartDate => 'Start date';

  @override
  String get premiumExpiryDate => 'Valid until';

  @override
  String get premiumDaysRemaining => 'Time remaining';

  @override
  String premiumDaysValue(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String get premiumServiceLocked =>
      'This service and much more is available in Premium';

  @override
  String get premiumLearnMore => 'Learn more';

  @override
  String get premiumLimitReachedTitle => 'You\'ve run out of free limits';

  @override
  String get premiumLimitReachedDesc =>
      'For unlimited access to all services, you need to get Premium';

  @override
  String get premiumSuccessTitle => 'You\'ve activated the subscription';

  @override
  String get premiumSuccessSubtitle =>
      'All Premium subscription benefits are now available to you';

  @override
  String get premiumCancelConfirmTitle => 'Cancel subscription?';

  @override
  String get premiumCancelConfirmMessage =>
      'Your Premium subscription will be cancelled and all benefits will be lost.';

  @override
  String get premiumCancelConfirmAction => 'Yes, cancel';

  @override
  String get premiumCancelDismiss => 'No';

  @override
  String get contractDetailsTitle => 'Contract details';

  @override
  String contractTitle(Object number) {
    return 'Contract number №$number';
  }

  @override
  String get contractInfoSection => 'Contract information';

  @override
  String get contractDate => 'Contract date';

  @override
  String get contractCurrency => 'Currency';

  @override
  String get contractDiscussionEndDate => 'Discussion end date';

  @override
  String get contractTotalAmount => 'Total amount';

  @override
  String get contractEndDate => 'End date';

  @override
  String get contractOqsAmount => 'OQS amount';

  @override
  String get contractBasis => 'Basis';

  @override
  String get contractAdvanceAmount => 'Advance amount';

  @override
  String get contractRegion => 'Region';

  @override
  String get contractPaymentTerms => 'Payment terms';

  @override
  String get contractAdvancePaymentDay => 'Advance payment day';

  @override
  String get contractPaymentPeriod => 'Payment period';

  @override
  String get contractDeliveryPeriod => 'Delivery period';

  @override
  String contractDaysValue(Object days) {
    return '$days days';
  }

  @override
  String get contractProducts => 'Products';

  @override
  String get contractProductName => 'Product name';

  @override
  String get contractCode => 'Code';

  @override
  String get contractQuantity => 'Quantity';

  @override
  String get contractPrice => 'Price';

  @override
  String get contractAdvance => 'Advance';

  @override
  String get contractDescription => 'Description';

  @override
  String get contractProductProperties => 'Product properties';

  @override
  String get contractUnitOfMeasure => 'Unit of measure';

  @override
  String get contractGoods => 'Goods';

  @override
  String get contractStartingPrice => 'Starting price per unit';

  @override
  String get contractTotalPrice => 'Total price';

  @override
  String get contractGoodQuantity => 'Goods quantity';

  @override
  String get contractGoodSpec => 'Goods specification';

  @override
  String get contractType => 'Type';

  @override
  String get contractGoodDescription => 'Goods description';

  @override
  String get contractPaymentInfo => 'Payment information';

  @override
  String get contractPrepaymentPeriod => 'Prepayment period';

  @override
  String get contractAdvancePercent => 'Advance payment percent';

  @override
  String contractWorkDaysValue(Object days) {
    return '$days working days';
  }

  @override
  String get contractCustomerAddress => 'Customer address';

  @override
  String get museum_home_title => 'Tickets to the most interesting places';

  @override
  String get museum_search_hint => 'Where do you want to go?';

  @override
  String get museum_section_popular => 'Popular';

  @override
  String get museum_popular_badge => 'Want to visit';

  @override
  String get museum_section_recommended => 'Offers for you';

  @override
  String get museum_currency_som => 'sum';

  @override
  String museum_price_from(Object price) {
    return 'from $price';
  }

  @override
  String museum_reviews_count(Object count) {
    return '$count reviews';
  }

  @override
  String get museum_not_rated => 'Not rated yet';

  @override
  String get museum_page_failed_to_load => 'The page failed to load';

  @override
  String get museum_something_went_wrong =>
      'Something went wrong. Please try again.';

  @override
  String get museum_refresh => 'Refresh';

  @override
  String get museum_search_title => 'Tickets';

  @override
  String get museum_search_where => 'Where to?';

  @override
  String get museum_search_where_hint => 'City or museum';

  @override
  String get museum_search_action => 'Search';

  @override
  String get museum_search_history => 'Search history';

  @override
  String get museum_search_history_clear => 'Clear';

  @override
  String museum_list_count(Object count) {
    return '$count options';
  }

  @override
  String museum_list_count_in_city(Object city, Object count) {
    return '$count options in $city';
  }

  @override
  String get museum_sort_popular => 'Popular';

  @override
  String get museum_sort_price_asc => 'Cheapest first';

  @override
  String get museum_sort_price_desc => 'Most expensive first';

  @override
  String get museum_sort_rating => 'By rating';

  @override
  String get museum_sort_newest => 'Newest';

  @override
  String get museum_not_found_title => 'Nothing found';

  @override
  String get museum_not_found_message =>
      'Nothing was found for this query, try other words';

  @override
  String get museum_detail_about => 'About the place';

  @override
  String get museum_detail_contacts => 'Contacts';

  @override
  String get museum_detail_route => 'Build a route';

  @override
  String get museum_detail_location => 'Location';

  @override
  String get museum_detail_opening_hours => 'Opening hours';

  @override
  String get museum_detail_reviews => 'Reviews';

  @override
  String get museum_detail_distance => 'Distance';

  @override
  String get museum_detail_buy => 'Buy a ticket';

  @override
  String get museum_detail_show_more => 'Show more';

  @override
  String museum_distance_km(Object distance) {
    return '$distance km';
  }

  @override
  String get museum_purchase_title => 'Ticket purchase';

  @override
  String get museum_purchase_total => 'Total';

  @override
  String get museum_purchase_pay => 'Proceed to payment';

  @override
  String museum_purchase_valid_hours(Object hours) {
    return 'Valid for $hours h';
  }

  @override
  String get museum_purchase_select_card => 'Select a card';

  @override
  String get museum_purchase_no_cards => 'No cards added';

  @override
  String get museum_purchase_add_card => 'Add a card';

  @override
  String get museum_purchase_items_required => 'Select at least one ticket';

  @override
  String get museum_purchase_pending_title => 'Payment completed';

  @override
  String get museum_purchase_pending_message =>
      'Your tickets are being issued, it will take a moment';

  @override
  String get museum_purchase_no_tariffs => 'Tariffs are unavailable';

  @override
  String get museum_tickets_title_active => 'My tickets';

  @override
  String get museum_tickets_title_used => 'Used';

  @override
  String get museum_tickets_title_expired => 'Expired';

  @override
  String museum_tickets_count(Object count) {
    return '$count tickets';
  }

  @override
  String get museum_ticket_location => 'Location';

  @override
  String get museum_ticket_opened => 'Open';

  @override
  String get museum_ticket_date => 'Date';

  @override
  String get museum_ticket_number => 'Order number';

  @override
  String museum_ticket_amount(Object count) {
    return '$count tickets';
  }

  @override
  String museum_ticket_duration(Object hours) {
    return 'for $hours hours';
  }

  @override
  String get museum_ticket_issuing => 'Tickets are being issued';

  @override
  String get museum_tickets_empty_title => 'No tickets yet';

  @override
  String get museum_tickets_empty_message =>
      'Buy a ticket and it will appear here';

  @override
  String get museum_favorites_title => 'Favorites';

  @override
  String get museum_favorites_empty_title => 'No favorites yet';

  @override
  String get museum_favorites_empty_message => 'Tap the heart to save a place';

  @override
  String get museum_auth_required => 'Sign in to your account';
}
