import 'package:core/core.dart';
import 'package:core/src/domain/models/Token.dart';

abstract interface class Repository {
  Future<List<Categories>> loadCategories();

  Future<List<ContentCategories>> loadContents({int? regionId});

  Future<Favorite> loadFavourites(
      {required int page, required int pageSize, String? search});

  Future<List<Region>> loadRegions();

  Future<List<MainPageContent>> loadContentsByCategory(
      {required int categoryId, required int page, required int pageSize, String? search});

  Future<ContentDetail> loadContentDetail(
      {required int contentId,});

  Future<Token> authGoogle({required String idToken});

  Future<dynamic> favoriteChange({required int contentId, required bool setFavorite});

  Future<List<Currency>> loadCurrencies();
  Future<List<MoreItem>> loadAbout();
  Future<List<MoreItem>> loadMoreUseFull();

}
