// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class FeatureTravelLocalizationsUz extends FeatureTravelLocalizations {
  FeatureTravelLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get nav_payment => 'To\'lov';

  @override
  String get nav_services => 'Xizmatlar';

  @override
  String get language => 'Ilova tili';

  @override
  String get theme => 'Dizayn mavzusi';

  @override
  String lanItem(String lang) {
    String _temp0 = intl.Intl.selectLogic(lang, {
      'en': 'Inglizcha',
      'ru': 'Ruscha',
      'uz': 'O\'zbekcha',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String themeModes(String theme) {
    String _temp0 = intl.Intl.selectLogic(theme, {
      'system': 'Tizim mavzusi',
      'light': 'Yorug\' mavzu',
      'dark': 'Qorong\'i mavzu',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get guest => 'Salom Mehmon';

  @override
  String get action_all => 'Barchasi';

  @override
  String currency_uzs(Object value) {
    return '$value so\'m';
  }

  @override
  String nPhotos(Object n) {
    return '$n ta rasm';
  }

  @override
  String get getStarted => 'Boshlash';

  @override
  String get logout => 'Chiqish';

  @override
  String get getStartedDescription =>
      'Imkoniyatlardan to‘liq foydalanish uchun tizimga kiring va oʻzingiz yoqtirgan narsalarni ham saqlab oling';

  @override
  String get continueWithGoogle => 'Google orqali kirish';

  @override
  String get continueWithApple => 'Apple orqali kirish';

  @override
  String get averageCheck => 'O‘rtacha baxo';

  @override
  String get search => 'Qidiruv';

  @override
  String get rating => 'Reyting';

  @override
  String get favorites => 'Tanlanganlar';

  @override
  String n_items(Object n) {
    return '$n ta element';
  }

  @override
  String get select_location => 'Joylashuvni tanlang';

  @override
  String get about => 'Haqida';

  @override
  String get uzbekistan => 'O\'zbekiston';

  @override
  String get exchange_rates => 'Valyuta kurslari';

  @override
  String get uzbek_currency => '*O‘zbekiston valyutasi (UZS) so‘m deb ataladi';

  @override
  String get exchange_banks => 'Valyuta ayirboshlash banklari';

  @override
  String get loading_data => 'Ma\'lumot yuklanmoqda';

  @override
  String get coming_soon => 'Tez kunlarda!';

  @override
  String get coming_soon_message => 'Biz ajoyib narsa ustida ishlayapmiz.';

  @override
  String get nothing_found => 'Hech narsa topilmadi';

  @override
  String get nothing_found_message => 'Hech narsa topilmadi. Qayta qidiring!';

  @override
  String get refresh => 'Yangilash';

  @override
  String get pageFailedToLoad => 'Sahifa yuklanmadi';

  @override
  String get something_went_wrong =>
      'Nimadir xato ketdi. Iltimos, qayta urinib ko‘ring.';

  @override
  String get generalEmergency => 'Favqulodda yordam';

  @override
  String get touristPolice => 'Turistlar politsiyasi';

  @override
  String get fire => 'Yong‘in xizmati';

  @override
  String get police => 'Politsiya';

  @override
  String get medical => 'Tez yordam';

  @override
  String get gasEmergency => 'Gaz xizmati';

  @override
  String get emergencyContacts => 'Favqulodda kontaktlar';

  @override
  String get usefulTips => 'Foydali maslahatlar';

  @override
  String get logoutConfirmation => 'Tizimdan chiqishni xohlaysizmi?';

  @override
  String get deleteAccountConfirmation => 'Accountni o\'chirishni xohlaysizmi?';

  @override
  String get deleteAccount => 'Accountni o\'chirish';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get warning => 'Ogohlantirish';

  @override
  String get guest_chose => 'Mehmonlar tanlovi';

  @override
  String get distanceKm => 'km';

  @override
  String get distanceM => 'm';

  @override
  String prayerTime(String time) {
    String _temp0 = intl.Intl.selectLogic(time, {
      'fajr': 'Bomdod',
      'sunrise': 'Quyosh',
      'dhuhr': 'Peshin',
      'asr': 'Asr',
      'maghrib': 'Shom',
      'isha': 'Xufton',
      'other': 'Namoz',
    });
    return '$_temp0';
  }

  @override
  String get prayerTimeTitle => 'Namoz vaqti';

  @override
  String get notifications => 'Xabarnomalar';

  @override
  String get whatAmenitiesAwait => 'Qanday qulayliklar kutmoqda';

  @override
  String get viewAllAmenities => 'Barcha qulayliklarni ko‘rish';

  @override
  String get contacts => 'Kontaktlar';

  @override
  String get readMore => 'Ko\'proq ma\'lumot';

  @override
  String get aboutPlace => 'Joy haqida';

  @override
  String get moreDetails => 'Batafsil';

  @override
  String get location => 'Joylashuv';

  @override
  String get buildRoute => 'Yo\'nalishni ko\'rish';

  @override
  String get feedbackImportant => 'Fikringiz biz uchun juda muhim, tashakkur!';

  @override
  String get leaveFeedback => 'Fikringizni qoldiring';

  @override
  String reviewsCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta sharh',
      one: '1 ta sharh',
      zero: '0 ta sharh',
    );
    return '$_temp0';
  }

  @override
  String get sendFeedback => 'Yuborish';

  @override
  String get map_open_in => 'Quyidagi orqali ochish';

  @override
  String get workingHours => 'Ish vaqti';

  @override
  String get writeReviewInFewSentences => 'Bir necha jumlada fikr bildiring';

  @override
  String get catalogMyEsim => 'My eSIM';

  @override
  String get currency_som => 'so\'m';

  @override
  String get home_events => 'Tadbirlar';

  @override
  String get home_cities => 'Shaharlar';

  @override
  String get home_cities_subtitle => 'Dam olish kunlari qayerga bormoqchisiz?';

  @override
  String get home_city_badge => 'Bormoqchimisiz';

  @override
  String get home_search_hint => 'Qayerga sayohat qilmoqchisiz?';

  @override
  String get home_currency_calculator => 'Valyuta kalkulyatori';

  @override
  String get catalogTravelQuiz => 'Travel Quiz';

  @override
  String get catalogAviaTickets => 'Aviabiletlar';

  @override
  String get catalogChargers => 'Zaryadlovchilar';

  @override
  String get catalogPoster => 'Afishalar';

  @override
  String get catalogTrainTickets => 'Poyezd chiptalari';

  @override
  String get catalogHotels => 'Mehmonxonalar';

  @override
  String get catalogCottages => 'Dachalar';

  @override
  String get catalogInsurance => 'Sug‘urta';

  @override
  String get catalogItemStatusNew => 'Yangi';

  @override
  String get catalogItemStatusSoon => 'Tez orada';

  @override
  String get investment_search_title => 'Nimani qidiryapsiz?';

  @override
  String get investment_top_contents_title => 'Tavfsiya etamiz';

  @override
  String get investments_category_title => 'Barchasi';

  @override
  String investment_amount(Object amount, String currency) {
    String _temp0 = intl.Intl.selectLogic(currency, {
      'UZS': '$amount so\'m dan',
      'USD': '$amount USD dan',
      'other': '$amount',
    });
    return '$_temp0';
  }

  @override
  String get investment_page_sort_ask => 'Avval arzon';

  @override
  String get investment_page_sort_desk => 'Avval qimmat';

  @override
  String get investment_page_sort_popular => 'Mashhur';

  @override
  String get investment_page_sort => 'Saralash';

  @override
  String get investment_page_sort_price => 'Valyuta';

  @override
  String get investment_page_sort_title => 'Filtr';

  @override
  String get investment_search_page_initial => 'Qidiruv so‘rovini kiriting...';

  @override
  String get action_cancel => 'Yopish';

  @override
  String get action_detail => 'Batafsil';

  @override
  String get gift_page_title => 'Sizga sovg‘a mavjud';

  @override
  String get gift_page_subtitle => 'Olish uchun bosing';

  @override
  String get gift_page_action => 'Sovg‘ani olish';

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
      other: '$count soatda qayting',
      one: '1 soatda qayting',
    );
    return '$_temp0';
  }

  @override
  String gift_second_page_title_day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kunda qayting',
      one: '1 kunda qayting',
    );
    return '$_temp0';
  }

  @override
  String get gift_second_page_subtitle => 'Sovg‘angiz tayyorlanmoqda';

  @override
  String get gift_history => 'Sovg‘alar tarixi';

  @override
  String get mb => 'MB';

  @override
  String get gb => 'GB';

  @override
  String get claim_dialog_caption => 'Sizning mobil raqamingizga bonus berildi';

  @override
  String get claim_warning_page_title => 'Faqat Uztelecom abonentlari uchun';

  @override
  String get claim_warning_page_caption =>
      'Sovg‘ani olish uchun Uztelecom raqamiga ro‘yxatdan o‘tish kerak';

  @override
  String get premiumConnect => 'Premiumni ulash';

  @override
  String get premiumCancelAnytime => 'Istagan vaqtda bekor qilish mumkin.';

  @override
  String get premiumTerms => 'Foydalanish shartlari';

  @override
  String get premiumFeatureAiTitle => 'Cheksiz AI xizmatlar';

  @override
  String get premiumFeatureAiDesc =>
      'Caloria AI, Trip Planer, Travel Cam AI va barchasi';

  @override
  String get premiumFeatureEsimTitle => 'eSIM promokod';

  @override
  String get premiumFeatureEsimDesc => 'Oltin raqam uchun chegirma';

  @override
  String get premiumFeatureDiscountTitle => 'Chegirmalar bo‘limi';

  @override
  String get premiumFeatureDiscountDesc =>
      'Hamkor xizmatlardan eksklyuziv chegirmalar';

  @override
  String get premiumFeatureProfileTitle => 'Profil rasmi';

  @override
  String get premiumFeatureProfileDesc => 'Profilingizni shaxsiylashtiring';

  @override
  String premiumMonths(num count) {
    return '$count oy';
  }

  @override
  String premiumDiscountBadge(Object percent) {
    return 'chegirma -$percent%';
  }

  @override
  String get premiumCancelSubscription => 'Obunani bekor qilish';

  @override
  String premiumSubscriptionTitle(Object plan) {
    return '$plan obuna';
  }

  @override
  String get statusActive => 'Faol';

  @override
  String get premiumStartDate => 'Boshlanish sanasi';

  @override
  String get premiumExpiryDate => 'Amal qilish muddati';

  @override
  String get premiumDaysRemaining => 'Qolgan muddat';

  @override
  String premiumDaysValue(num count) {
    return '$count kun';
  }

  @override
  String get premiumServiceLocked =>
      'Bu xizmat va yana ko‘plari Premiumda mavjud';

  @override
  String get premiumLearnMore => 'Batafsil ma’lumot';

  @override
  String get premiumLimitReachedTitle => 'Bepul limitlaringiz tugadi';

  @override
  String get premiumLimitReachedDesc =>
      'Barcha xizmatlardan cheksiz foydalanish uchun Premiumni ulashingiz kerak';

  @override
  String get premiumSuccessTitle => 'Obunani uladingiz';

  @override
  String get premiumSuccessSubtitle =>
      'Premium obunaning barcha imkoniyatlari siz uchun ochiq';

  @override
  String get premiumCancelConfirmTitle => 'Obunani bekor qilasizmi?';

  @override
  String get premiumCancelConfirmMessage =>
      'Premium obuna bekor qilinadi va barcha imkoniyatlar yopiladi.';

  @override
  String get premiumCancelConfirmAction => 'Ha, bekor qilish';

  @override
  String get premiumCancelDismiss => 'Yo‘q';

  @override
  String get contractDetailsTitle => 'Shartnoma detali';

  @override
  String contractTitle(Object number) {
    return 'Shartnoma raqami №$number';
  }

  @override
  String get contractInfoSection => 'Shartnoma ma\'lumotlari';

  @override
  String get contractDate => 'Shartnoma sanasi';

  @override
  String get contractCurrency => 'Valyuta';

  @override
  String get contractDiscussionEndDate => 'Muhokama tugash sanasi';

  @override
  String get contractTotalAmount => 'Umumiy summa';

  @override
  String get contractEndDate => 'Tugash sanasi';

  @override
  String get contractOqsAmount => 'OQS summasi';

  @override
  String get contractBasis => 'Asos';

  @override
  String get contractAdvanceAmount => 'Avans summasi';

  @override
  String get contractRegion => 'Viloyat';

  @override
  String get contractPaymentTerms => 'To\'lov shartlari';

  @override
  String get contractAdvancePaymentDay => 'Avans to\'lov kuni';

  @override
  String get contractPaymentPeriod => 'To\'lov muddati';

  @override
  String get contractDeliveryPeriod => 'Yetkazib berish muddati';

  @override
  String contractDaysValue(Object days) {
    return '$days kun';
  }

  @override
  String get contractProducts => 'Mahsulotlar';

  @override
  String get contractProductName => 'Mahsulot nomi';

  @override
  String get contractCode => 'Kodi';

  @override
  String get contractQuantity => 'Miqdori';

  @override
  String get contractPrice => 'Narxi';

  @override
  String get contractAdvance => 'Avans';

  @override
  String get contractDescription => 'Tavsif';

  @override
  String get contractProductProperties => 'Mahsulot xususiyatlari';

  @override
  String get contractUnitOfMeasure => 'O\'lchov birligi';

  @override
  String get contractGoods => 'Tovarlar';

  @override
  String get contractStartingPrice => 'Birlik uchun boshlang\'ich narx';

  @override
  String get contractTotalPrice => 'Umumiy narx';

  @override
  String get contractGoodQuantity => 'Tovar miqdori';

  @override
  String get contractGoodSpec => 'Tovar spetsifikatsiyasi';

  @override
  String get contractType => 'Turi';

  @override
  String get contractGoodDescription => 'Tovar tavsifi';

  @override
  String get contractPaymentInfo => 'To\'lov haqida ma\'lumot';

  @override
  String get contractPrepaymentPeriod => 'Oldindan to\'lov muddati';

  @override
  String get contractAdvancePercent => 'Avans to\'lov foizi';

  @override
  String contractWorkDaysValue(Object days) {
    return '$days ish kuni';
  }

  @override
  String get contractCustomerAddress => 'Buyurtmachining manzili';
}
