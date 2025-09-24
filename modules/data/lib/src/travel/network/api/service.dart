import 'package:data/src/models/items_response.dart';
import 'package:data/src/travel/models/notification/notification_item_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared/shared.dart';

import '../../models/about_dto.dart';
import '../../models/catalog/catalog_dto.dart';
import '../../models/categories_dto.dart';
import '../../models/currency_dto.dart';
import '../../models/detail/content_dto.dart';
import '../../models/favorite_dto.dart';
import '../../models/places/content_dto_model.dart';
import '../../models/regions.dart';
import '../../models/review/review_dto.dart';
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

  @GET("v2/categories/{categoryId}/contents")
  Future<List<MainPageContentDto>> loadContentsByCategory({
    @Path("categoryId") required int categoryId,
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("search") String? search,
  });

  @GET("favorites")
  Future<FavoriteDto> loadFavourites({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("search") String? search,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("v2/categories/main-page")
  Future<dynamic> loadMainData({@Query("regionId") int? regionId});

  @GET("weather/region")
  Future<TemperatureDto> loadWeather({@Query("regionId") int? regionId});

  @GET("v2/contents/{contentId}")
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

  @POST("pin/create")
  Future<void> createPin(@Body() Map<String, dynamic> body);

  @POST("pin/verify")
  Future<dynamic> verifyPin(@Body() Map<String, dynamic> body);

  @POST("pin/change")
  Future<dynamic> changePin(@Body() Map<String, dynamic> body);

  @DELETE("pin/remove")
  Future<dynamic> removePin(@Body() Map<String, dynamic> body);

  @POST("notifications/firebase-token")
  Future<dynamic> setFirebaseToken(@Body() Map<String, dynamic> body);

  @GET("notifications")
  Future<ItemsResponse<NotificationItemDto>> getNotifications();

  @GET("notifications/{id}")
  Future<NotificationItemDto> getNotificationById(@Path("id") int id);

  @POST("notifications/{id}/seen")
  Future<dynamic> seenNotification(@Path("id") int id);

  @GET("reviews/content/{contentId}")
  Future<ItemsResponse<ReviewDto>> getReviews(@Path("contentId") int contentId);

  @GET("reviews/{contentId}/counts")
  Future<dynamic> getReviewsCounts(@Path("contentId") int contentId);

  @POST("reviews")
  Future<dynamic> addReview(@Body() Map<String, dynamic> body);

  @GET("catalogs")
  Future<List<CatalogDto>> getCatalog();
}
