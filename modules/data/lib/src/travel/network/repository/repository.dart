
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import '../api/service.dart';


@Injectable(as: Repository)
class RepositoryImp implements Repository {
  final RestService _restService;
  CancelToken favoriteCanceledToken = CancelToken();

  RepositoryImp(RestService service) : _restService = service;

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
  Future<List<ContentCategories>> loadContents({int? regionId}) async {
    return _restService.loadMainData(regionId: regionId).call((data) {
      return data.map((e) => e.toDomain()).toList();
    });
  }

  @override
  Future<Temperature> loadWeather({int? regionId}) {
    return _restService.loadWeather(regionId: regionId).call((data) {
      return data.toDomain();
    });
  }
  @override
  Future<Favorite> loadFavourites(
      {required int page, required int pageSize, String? search}) {
    favoriteCanceledToken.cancel();
    favoriteCanceledToken = CancelToken();
    return _restService
        .loadFavourites(
            page: page,
            pageSize: pageSize,
            search: search,
            cancelToken: favoriteCanceledToken)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<Region>> loadRegions() {
    return _restService
        .loadRegions()
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future<List<MainPageContent>> loadContentsByCategory(
      {required int categoryId,
      required int page,
      required int pageSize,
      String? search}) {
    return _restService
        .loadContentsByCategory(
            categoryId: categoryId,
            page: page,
            pageSize: pageSize,
            search: search)
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future<ContentDetail> loadContentDetail({
    required int contentId,
  }) {
    return _restService
        .loadContentById(contentId: contentId)
        .call((data) => data.toDomain());
  }

  @override
  Future<Token> authGoogle(
      {required String idToken, String? fullName, String? photoUrl}) {
    return _restService.authGoogle({
      "IdToken": idToken,
      "userName": fullName,
      "photoUrl": photoUrl
    }).call((data) => data.toDomain());
  }

  @override
  Future<Token> authApple(
      {required String idToken, String? fullName, String? photoUrl}) {
    return _restService.authApple({
      "IdToken": idToken,
      "userName": fullName,
      "photoUrl": photoUrl
    }).call((data) => data.toDomain());
  }

  @override
  Future favoriteChange({required int contentId, required bool setFavorite}) {
    return setFavorite
        ? _restService.addFavorite(contentId: contentId).call()
        : _restService.deleteFavorite(contentId: contentId).call();
  }

  @override
  Future<List<Currency>> loadCurrencies() {
    return _restService
        .getCurrency()
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future<List<MoreItem>> loadAbout() {
    return _restService
        .loadAbouts()
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future<List<MoreItem>> loadMoreUseFull() {
    return _restService
        .loadMoreUseFull()
        .call((data) => data.map((e) => e.toDomain()).toList());
  }

  @override
  Future deleteAccount() {
    return _restService.deleteAccount().call();
  }
}

extension FutureExtension<T> on Future<T> {
  Future<M> call<M>([M? Function(T)? converter]) async {
    try {
      final result = await this;
      if (converter != null) return converter.call(result) as M;
      return result as M;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }
}
