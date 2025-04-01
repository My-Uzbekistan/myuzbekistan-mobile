import 'package:core/src/data/dto_models/about_dto.dart';
import 'package:core/src/data/dto_models/categories_dto.dart';
import 'package:core/src/data/dto_models/currency_dto.dart';
import 'package:core/src/data/dto_models/detail/content_dto.dart';
import 'package:core/src/data/dto_models/places/content_dto_model.dart';
import 'package:core/src/data/dto_models/regions.dart';
import 'package:core/src/data/dto_models/token_dto.dart';
import 'package:core/src/domain/models/content_detail.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto_models/favorite_dto.dart';

part 'service.g.dart';

@injectable
@RestApi()
abstract class RestService {
  @factoryMethod
  factory RestService(Dio dio) = _RestService;

  @GET("categories")
  Future<List<CategoriesDto>> loadCategories();

  @GET("regions")
  Future<List<RegionsDto>> loadRegions();

  @GET("categories/{categoryId}/contents")
  Future<List<MainPageContentDto>> loadContentsByCategory(
      {@Path("categoryId") required int categoryId,
      @Query("page") required int page,
      @Query("pageSize") required int pageSize,
      @Query("content_by_category") String? search});

  @GET("favorites")
  Future<FavoriteDto> loadFavourites({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("content_by_category") String? search,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("categories/main-page")
  Future<List<ContentCategoriesDto>> loadMainData(
      {@Query("regionId") int? regionId});

  @GET("contents/{contentId}")
  Future<ContentDto> loadContentById({
    @Path("contentId") required int contentId,
  });

  @POST("auth/google-login")
  Future<TokenDto> authGoogle(@Body() Map<String, dynamic> body);

  @POST("favorites")
  Future<dynamic> addFavorite({@Query("contentId") required int contentId});

  @DELETE("favorites")
  Future<dynamic> deleteFavorite({@Query("contentId") required int contentId});


  @GET("more/currency")
  Future<List<CurrencyDto>> getCurrency();

  @GET("more/about")
  Future<List<MoreItemDto>> loadAbouts();

  @GET("more/useful")
  Future<List<MoreItemDto>> loadMoreUseFull();


}
