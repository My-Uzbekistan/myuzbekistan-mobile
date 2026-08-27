import 'package:data/src/museum/src/models/museum_card/museum_card_dto.dart';
import 'package:data/src/museum/src/models/museum_city/museum_city_dto.dart';
import 'package:data/src/museum/src/models/museum_detail/museum_detail_dto.dart';
import 'package:data/src/museum/src/models/museum_home/museum_home_dto.dart';
import 'package:data/src/museum/src/models/museum_list/museum_list_dto.dart';
import 'package:data/src/museum/src/models/museum_order/museum_order_dto.dart';
import 'package:data/src/museum/src/models/museum_reviews/museum_reviews_dto.dart';
import 'package:data/src/museum/src/models/museum_tariff/museum_tariff_dto.dart';
import 'package:data/src/museum/src/models/museum_tickets/museum_tickets_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:shared/shared.dart';

part 'museum_api_service.g.dart';

@injectable
@RestApi()
abstract class MuseumApiService {
  @factoryMethod
  factory MuseumApiService(Dio dio) = _MuseumApiService;

  @GET("museums/home")
  Future<MuseumHomeDto> home({
    @Query("lat") double? lat,
    @Query("lon") double? lon,
  });

  @GET("museums")
  Future<MuseumListDto> museums({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("search") String? search,
    @Query("city") String? city,
    @Query("sort") String? sort,
    @Query("lat") double? lat,
    @Query("lon") double? lon,
  });

  @GET("museums/cities")
  Future<List<MuseumCityDto>> cities();

  @GET("museums/{museumId}")
  Future<MuseumDetailDto> detail({
    @Path("museumId") required String museumId,
    @Query("lat") double? lat,
    @Query("lon") double? lon,
  });

  @GET("museums/{museumId}/tariffs")
  Future<List<MuseumTariffDto>> tariffs(@Path("museumId") String museumId);

  @POST("museums/orders")
  Future<MuseumOrderDto> createOrder(@Body() Map<String, dynamic> body);

  @POST("museums/orders/{orderId}/issue")
  Future<MuseumOrderDto> issueTickets(@Path("orderId") int orderId);

  @GET("museums/tickets")
  Future<MuseumTicketsDto> tickets({@Query("state") String? state});

  @GET("museums/orders")
  Future<List<MuseumOrderDto>> orders();

  @GET("museums/orders/{orderId}")
  Future<MuseumOrderDto> order(@Path("orderId") int orderId);

  @GET("museums/favorites")
  Future<List<MuseumCardDto>> favorites();

  @POST("museums/{museumId}/favorite")
  Future<void> addFavorite(@Path("museumId") String museumId);

  @DELETE("museums/{museumId}/favorite")
  Future<void> removeFavorite(@Path("museumId") String museumId);

  @GET("museums/search/history")
  Future<List<String>> searchHistory();

  @DELETE("museums/search/history")
  Future<void> deleteSearchHistory({@Query("id") int? id});

  @GET("museums/{museumId}/reviews")
  Future<MuseumReviewsDto> reviews({
    @Path("museumId") required String museumId,
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
  });

  @GET("museums/{museumId}/reviews/counts")
  Future<Map<String, int>> reviewCounts(@Path("museumId") String museumId);

  @POST("museums/{museumId}/reviews")
  Future<dynamic> addReview({
    @Path("museumId") required String museumId,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE("museums/{museumId}/reviews")
  Future<dynamic> deleteReview(@Path("museumId") String museumId);
}
