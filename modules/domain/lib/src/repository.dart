import 'dart:io';

import 'package:domain/src/models/onboarding_item.dart';

import 'models.dart';

abstract interface class Repository {
  Future<List<Categories>> loadCategories();

  Future<List<ContentCategories>> loadContents({int? regionId});

  Future<Temperature> loadWeather({int? regionId});

  Future<Favorite> loadFavourites({
    required int page,
    required int pageSize,
    String? search,
  });

  Future<List<Region>> loadRegions();

  Future<List<ServiceAction>> getServices();

  Future<List<MainPageContent>> loadContentsByCategory({
    required int categoryId,
    required int page,
    required int pageSize,
    int? regionId,
    String? search,
    Map<String, String>? sort,
  });

  Future<ContentDetail> loadContentDetail({required int contentId});

  /// Bosh sahifadagi "Shaharlar" bo'limi — `GET /api/cities`.
  Future<CitiesResult> loadCities();

  Future<CityDetail> loadCityDetail({
    required int cityId,
    double? lat,
    double? lon,
  });

  /// Bosh sahifa banner karuseli — `GET /api/banners`.
  Future<List<BannerItem>> loadBanners();

  Future<String?> loadHomeBackground();

  Future<String?> loadAiGuideLink();

  /// Havo sifati ko'rsatkichi — `GET /api/air-quality?lat=&lon=`.
  Future<AirQuality> loadAirQuality({required double lat, required double lon});

  /// Namoz vaqtlari — `GET /api/prayer-times?locationId=&date=`.
  Future<PrayerTimes> loadPrayerTimes({int? locationId, DateTime? date});

  /// Namoz vaqti hududlari — `GET /api/prayer-times/locations`.
  Future<List<PrayerLocation>> loadPrayerLocations();

  /// Yoqilgan namoz eslatmalari — `GET /api/prayer-times/reminders`.
  Future<PrayerReminders> loadPrayerReminders();

  /// Namoz eslatmalarini saqlash — `PUT /api/prayer-times/reminders`.
  Future<dynamic> updatePrayerReminders({
    required int locationId,
    required List<PrayerKey> prayers,
  });

  Future<void> createPin({required String pin, bool isChangePin});

  Future<void> removePin({required String pin});

  Future<dynamic> verifyPin({required String pin});

  Future<void> changePin({required String oldPin, required String newPin});

  Future<Token> authGoogle({
    required String idToken,
    String? fullName,
    String? photoUrl,
  });

  //AuthPhone sendCode
  Future<dynamic> sendCode({required String phoneNumber});

  Future<Token> authConfirmCode({
    required String phoneNumber,
    required String code,
  });

  Future<Token> authApple({
    required String idToken,
    String? fullName,
    String? photoUrl,
  });

  Future<dynamic> favoriteChange({
    required int contentId,
    required bool setFavorite,
  });

  Future<List<Currency>> loadCurrencies();

  Future<List<MoreItem>> loadAbout();

  Future<List<MoreItem>> loadMoreUseFull();

  Future<dynamic> deleteAccount();

  Future<String?> uploadProfilePicture({required File file});

  Future<UserInfoModel> getUserInfo();

  Future<dynamic> setFirebaseToken({required String token});

  Future<dynamic> updateNotificationSettings({required bool pushEnabled});

  Future<List<NotificationItem>> getNotifications();

  Future<int> getNotificationUnreadCount();

  Future<NotificationItem> getNotificationById({required int id});

  Future<dynamic> seenNotification({required int id});

  Future<List<ReviewModel>> getReviews({required int contentId});

  Future<Map<int, int>> getRatingCount({required int contentId});

  Future<dynamic> addReview({
    required int contentId,
    required String comment,
    required int rating,
  });

  Future<List<CatalogItemModel>> getCatalogV3({
    int page = 1,
    int pageSize = 50,
    String? search,
    int? catalogStatus,
  });

  Future<List<OnboardingItem>> getActiveOnboardings();

  Future<dynamic> onboardingTrackView({required int id});

  Future<dynamic> onboardingTrackClick({required int id});

  Future<ClaimStatus?> giftActive();
  Future<List<ClaimHistory>> giftHistory();
  Future<ClaimHistory> giftActivate();
}
