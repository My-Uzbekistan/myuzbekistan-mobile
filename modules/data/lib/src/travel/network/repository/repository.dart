import 'dart:io';

import 'package:data/src/travel/models/review/review_dto.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../../../models/items_response.dart';
import '../../models/places/content_dto_model.dart';
import '../api/service.dart';

@Injectable(as: Repository)
class RepositoryImp implements Repository {
  final RestService _restService;
  CancelToken favoriteCanceledToken = CancelToken();
  final SecurityStorage securityStorage;

  RepositoryImp(RestService service, this.securityStorage)
    : _restService = service;

  @override
  Future<List<Categories>> loadCategories() async {
    return _restService.loadCategories().call((data) {
      final categories = data
          .map((e) => Categories(id: e.id, name: e.name, icon: e.icon))
          .toList();
      return categories;
    });
  }

  @override
  Future<List<ContentCategories>> loadContents({int? regionId}) {
    return _restService
        .loadMainData(regionId: regionId)
        .parseListAsync(
          mapper: (dto) => dto.toDomain(),
          fromJson: ContentCategoriesDto.fromJson,
        );
  }

  @override
  Future<Temperature> loadWeather({int? regionId}) {
    return _restService.loadWeather(regionId: regionId).call((data) {
      return data.toDomain();
    });
  }

  @override
  Future<Favorite> loadFavourites({
    required int page,
    required int pageSize,
    String? search,
  }) {
    favoriteCanceledToken.cancel();
    favoriteCanceledToken = CancelToken();
    return _restService
        .loadFavourites(
          page: page,
          pageSize: pageSize,
          search: search,
          cancelToken: favoriteCanceledToken,
        )
        .call((data) => data.toDomain());
  }

  @override
  Future<List<Region>> loadRegions() {
    return _restService.loadRegions().call(
      (data) => data.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<MainPageContent>> loadContentsByCategory({
    required int categoryId,
    required int page,
    required int pageSize,
    String? search,
  }) {
    return _restService
        .loadContentsByCategory(
          categoryId: categoryId,
          page: page,
          pageSize: pageSize,
          search: search,
        )
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future<ContentDetail> loadContentDetail({required int contentId}) {
    return _restService
        .loadContentById(contentId: contentId)
        .call((data) => data.toDomain());
  }

  @override
  Future<Token> authGoogle({
    required String idToken,
    String? fullName,
    String? photoUrl,
  }) {
    return _restService
        .authGoogle({
          "IdToken": idToken,
          "userName": fullName,
          "photoUrl": photoUrl,
        })
        .call((data) => data.toDomain());
  }

  @override
  Future<Token> authApple({
    required String idToken,
    String? fullName,
    String? photoUrl,
  }) {
    return _restService
        .authApple({
          "IdToken": idToken,
          "userName": fullName,
          "photoUrl": photoUrl,
        })
        .call((data) => data.toDomain());
  }

  @override
  Future favoriteChange({required int contentId, required bool setFavorite}) {
    return setFavorite
        ? _restService.addFavorite(contentId: contentId).call()
        : _restService.deleteFavorite(contentId: contentId).call();
  }

  @override
  Future<List<Currency>> loadCurrencies() {
    return _restService.getCurrency().call(
      (data) => data.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<MoreItem>> loadAbout() {
    return _restService.loadAbouts().call(
      (data) => data.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<MoreItem>> loadMoreUseFull() {
    return _restService.loadMoreUseFull().call(
      (data) => data.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future deleteAccount() {
    return _restService.deleteAccount().call();
  }

  // {
  // "token":"12312",
  // "osVersion":"ios-16",
  // "model":"Iphone 16",
  // "appVersion":"1.1"
  // }
  @override
  Future<dynamic> setFirebaseToken({required String token}) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String osVersion = "";
    String model = "";

    if (Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      osVersion = info.systemVersion;
      model = info.utsname.machine;
    } else if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      osVersion = info.version.release;
      model = info.model;
    }
    final info = await PackageInfo.fromPlatform();

    return _restService.setFirebaseToken({
      "token": token,
      "osVersion": osVersion,
      "model": model,
      "appVersion": info.version,
    }).call();
  }

  @override
  Future<void> createPin({
    required String pin,
    bool isChangePin = false,
  }) async {
    if (isChangePin) {
      return _restService.changePin({
        "OldPin": securityStorage.getPin().orEmpty(),
        "NewPin": pin,
      }).call();
    }
    return _restService.createPin({"Pin": pin}).call();
  }

  @override
  Future<dynamic> verifyPin({required String pin}) {
    return _restService.verifyPin({"Pin": pin}).call();
  }

  @override
  Future<void> changePin({required String oldPin, required String newPin}) {
    return _restService.changePin({"OldPin": oldPin, "NewPin": newPin}).call();
  }

  @override
  Future<void> removePin({required String pin}) {
    return _restService.removePin({"Pin": pin}).call();
  }

  @override
  Future<List<NotificationItem>> getNotifications() {
    return _restService.getNotifications().call(
      (data) => data.items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<NotificationItem> getNotificationById({required int id}) {
    return _restService.getNotificationById(id).call((data) => data.toDomain());
  }

  @override
  Future<dynamic> seenNotification({required int id}) {
    return _restService.seenNotification(id).call();
  }

  @override
  Future addReview({
    required int contentId,
    required String comment,
    required int rating,
  }) {
    return _restService.addReview({
      "ContentId": contentId,
      "Comment": comment,
      "Rating": rating,
    }).call();
  }

  @override
  Future<List<ReviewModel>> getReviews({required int contentId}) {
    return _restService
        .getReviews(contentId)
        .call(
          (data) => data.items
              .map(
                (e) => ReviewModel(
                  userId: e.userId,
                  comment: e.comment.orEmpty(),
                  rating: e.rating,
                  id: e.id,
                  userName: e.userName,
                  avatar: e.avatar,
                  createdAt: e.createdAt,
                ),
              )
              .toList(),
        );
  }

  @override
  Future<Map<int, int>> getRatingCount({required int contentId}) {
    return _restService
        .getReviewsCounts(contentId)
        .call((data) => _ratingFromJson(data));
  }

  @override
  Future<List<CatalogItemModel>> getCatalog() async {

    return _restService.getCatalog().call((data)=>data.map((e) => e.toDomain()).toList());
    await Future.delayed(Duration(seconds: 2));
    return Future.value([
      CatalogItemModel(
        icon: "https://picsum.photos/200/300",
        color: Color(0xff04A5FE),
        title: "My eSIM",
        status: CatalogStatus.newService,
        actionType: CatalogActionType.inner,
        authRequired: true,
        action: "https://esimapp.myuz.uz",
      ),
      CatalogItemModel(
        icon: "https://picsum.photos/200/300",
        color: Color(0xff37A8C7),
        title: "Travel Cam AI",
        status: CatalogStatus.active,
        actionType: CatalogActionType.inner,
        action: "https://travel-cam-ai.vercel.app?lang=uz",
      ),

      CatalogItemModel(
        icon: "https://picsum.photos/200/300",
        color: Color(0xff14CB7D),
        title: "Travel Quiz",
        status: CatalogStatus.active,
        actionType: CatalogActionType.inner,
        action: "https://myuzb.uz/notifications?notificationId=1234",
      ),
      CatalogItemModel(
        icon: "https://picsum.photos/200/300",
        title: "Авиабилеты",
        status: CatalogStatus.upcoming,
        actionType: CatalogActionType.inner,
      ),
    ]);
  }
}

Map<int, int> _ratingFromJson(Map<String, dynamic>? json) {
  final defaultMap = {5: 0, 4: 0, 3: 0, 2: 0, 1: 0, 0: 0};

  if (json == null) return defaultMap;

  final parsed = json.map(
    (key, value) => MapEntry(int.parse(key), value as int),
  );
  for (final entry in defaultMap.entries) {
    parsed.putIfAbsent(entry.key, () => entry.value);
  }

  return parsed;
}
