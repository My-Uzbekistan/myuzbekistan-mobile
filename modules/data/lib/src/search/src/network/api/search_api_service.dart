import 'package:data/src/search/src/models/search_history_item/search_history_item_dto.dart';
import 'package:data/src/search/src/models/search_result/search_result_dto.dart';
import 'package:data/src/search/src/models/search_suggestion/search_suggestion_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:shared/shared.dart';

part 'search_api_service.g.dart';

@injectable
@RestApi()
abstract class SearchApiService {
  @factoryMethod
  factory SearchApiService(Dio dio) = _SearchApiService;

  @GET("search")
  Future<SearchResultDto> search({
    @Query("query") required String query,
    @Query("limit") int? limit,
    @Query("lat") double? lat,
    @Query("lon") double? lon,
  });

  @GET("search/suggestions")
  Future<List<SearchSuggestionDto>> suggestions({
    @Query("query") required String query,
    @Query("limit") int? limit,
  });

  @GET("search/popular")
  Future<List<String>> popular({@Query("limit") int? limit});

  @GET("search/history")
  Future<List<SearchHistoryItemDto>> history({@Query("limit") int? limit});

  @DELETE("search/history")
  Future<dynamic> clearHistory();

  @DELETE("search/history/{historyId}")
  Future<dynamic> deleteHistory(@Path("historyId") int historyId);
}
