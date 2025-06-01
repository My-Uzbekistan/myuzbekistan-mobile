
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared/shared.dart';

import '../../models/about_dto.dart';
import '../../models/categories_dto.dart';
import '../../models/currency_dto.dart';
import '../../models/detail/content_dto.dart';
import '../../models/favorite_dto.dart';
import '../../models/places/content_dto_model.dart';
import '../../models/regions.dart';
import '../../models/token_dto.dart';


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
      @Query("search") String? search});

  @GET("favorites")
  Future<FavoriteDto> loadFavourites({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("search") String? search,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("categories/main-page")
  Future<List<ContentCategoriesDto>> loadMainData(
      {@Query("regionId") int? regionId});

  @GET("weather/region")
  Future<TemperatureDto> loadWeather({@Query("regionId") int? regionId});

  @GET("contents/{contentId}")
  Future<ContentDto> loadContentById({
    @Path("contentId") required int contentId,
  });

  @POST("auth/google-login")
  Future<TokenDto> authGoogle(@Body() Map<String, dynamic> body);

  @POST("auth/apple-login")
  Future<TokenDto> authApple(@Body() Map<String, dynamic> body);

  @POST("favorites")
  Future<dynamic> addFavorite({@Query("contentId") required int contentId});

  @DELETE("favorites")
  Future<dynamic> deleteFavorite({@Query("contentId") required int contentId});

  @DELETE("auth/delete")
  Future<dynamic> deleteAccount();

  @GET("more/currency")
  Future<List<CurrencyDto>> getCurrency();

  @GET("more/about")
  Future<List<MoreItemDto>> loadAbouts();

  @GET("more/useful")
  Future<List<MoreItemDto>> loadMoreUseFull();
}
