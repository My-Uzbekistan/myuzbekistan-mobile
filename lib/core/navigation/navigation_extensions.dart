import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';

extension NavigationExtensions on BuildContext {
  void pushContentByCategoryPage(String categoryName, int categoryId) {
    pushNamedType(AppRoutePath.contentByCategory, queryParameters: {
      "categoryName": categoryName,
      "categoryId": "$categoryId",
    });
  }

  void pushFavoritesPage() {
    pushNamedType(AppRoutePath.contentByCategory, queryParameters: {
      "hasFavorites": "true",
    });
  }

  Future<T?> pushDetailPage<T>(int contentId) {
    return pushNamedType(AppRoutePath.detail, queryParameters: {
      "contentId": "$contentId",
    });
  }

  void goMain() {
    Navigator.of(this).popUntil((r) => r.isCurrent);
    go(AppRoutePath.shellHome.path);
  }

  Future<T?> pushSelectRegionPage<T>(
    List<Region> regions,
    int selectedRegionId,
  ) {
    return pushNamed(AppRoutePath.selectRegionPage.name,
        extra: regions,
        queryParameters: {"selectRegionId": selectedRegionId.toString()});
  }

  void pushAuthPage() {
    pushNamedType(AppRoutePath.authPage);
  }

  void pushProfilePage() {
    pushNamedType(AppRoutePath.profilePage);
  }

  void pushLangChangePage() {
    pushNamedType(AppRoutePath.changeLang);
  }

  void pushLangChangeTheme() {
    pushNamedType(AppRoutePath.changeTheme);
  }

  void pushImagePreview(List<String> images) {
    pushNamedType(AppRoutePath.imagePreviewPage, extra: images);
  }

  void pushCurrencies(List<Currency> currencies) {
    pushNamedType(AppRoutePath.currenciesPage, extra: currencies);
  }

  Future<T?> pushNamedType<T extends Object?>(
    AppRoutePath route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      pushNamed<T>(
        route.name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
}
