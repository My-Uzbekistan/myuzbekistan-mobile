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

  Future<List<MainPageContent>> loadContentsByCategory({
    required int categoryId,
    required int page,
    required int pageSize,
    String? search,
  });

  Future<ContentDetail> loadContentDetail({required int contentId});

  Future<void> createPin({required String pin});
  Future<void> removePin({required String pin});

  Future<dynamic> verifyPin({required String pin});

  Future<void> changePin({required String oldPin, required String newPin});

  Future<Token> authGoogle({
    required String idToken,
    String? fullName,
    String? photoUrl,
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
  Future<dynamic> setFirebaseToken({required String token});

  Future<List<NotificationItem>> getNotifications();
  Future<NotificationItem> getNotificationById({required int id});
  Future<dynamic> seenNotification({required int id});



}
