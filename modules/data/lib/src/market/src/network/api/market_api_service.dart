import 'package:data/src/market/src/models/checkout/checkout_dto.dart';
import 'package:data/src/market/src/models/checkout_detail/checkout_detail_dto.dart';
import 'package:data/src/market/src/models/delivery_method/delivery_method_dto.dart';
import 'package:data/src/market/src/models/market_address/market_address_dto.dart';
import 'package:data/src/market/src/models/cart/cart_dto.dart';
import 'package:data/src/market/src/models/cart_count/cart_count_dto.dart';
import 'package:data/src/market/src/models/market_category/market_category_dto.dart';
import 'package:data/src/market/src/models/market_city/market_city_dto.dart';
import 'package:data/src/market/src/models/market_home/market_home_dto.dart';
import 'package:data/src/market/src/models/market_order/market_order_dto.dart';
import 'package:data/src/market/src/models/market_product/market_product_dto.dart';
import 'package:data/src/market/src/models/market_product_detail/market_product_detail_dto.dart';
import 'package:data/src/market/src/models/market_product_list/market_product_list_dto.dart';
import 'package:data/src/market/src/models/market_search_history/market_search_history_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:shared/shared.dart';

part 'market_api_service.g.dart';

@injectable
@RestApi()
abstract class MarketApiService {
  @factoryMethod
  factory MarketApiService(Dio dio) = _MarketApiService;

  @GET("market/home")
  Future<MarketHomeDto> home({@Query("cityId") int? cityId});

  @GET("market/categories")
  Future<List<MarketCategoryDto>> categories();

  @GET("market/cities")
  Future<List<MarketCityDto>> cities();

  @GET("market/products")
  Future<MarketProductListDto> products({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("sort") required String sort,
    @Query("search") String? search,
    @Query("categoryId") int? categoryId,
    @Query("block") String? block,
    @Query("cityId") int? cityId,
  });

  @GET("market/products/{productId}")
  Future<MarketProductDetailDto> productDetail({
    @Path("productId") required int productId,
    @Query("lat") double? lat,
    @Query("lon") double? lon,
  });

  @GET("market/search/history")
  Future<List<MarketSearchHistoryDto>> searchHistory();

  @GET("market/search/suggestions")
  Future<List<String>> searchSuggestions();

  @DELETE("market/search/history/{searchId}")
  Future<void> deleteSearchHistory(@Path("searchId") int searchId);

  @DELETE("market/search/history")
  Future<void> clearSearchHistory();

  @GET("market/favorites")
  Future<List<MarketProductDto>> favorites();

  @POST("market/favorites/{productId}")
  Future<void> addFavorite(@Path("productId") int productId);

  @DELETE("market/favorites/{productId}")
  Future<void> removeFavorite(@Path("productId") int productId);

  @GET("market/cart")
  Future<CartDto> cart();

  @GET("market/cart/count")
  Future<CartCountDto> cartCount();

  @POST("market/cart/items")
  Future<void> addToCart(@Body() Map<String, dynamic> body);

  @PUT("market/cart/items/{productId}")
  Future<void> changeCartQuantity({
    @Path("productId") required int productId,
    @Body() required Map<String, dynamic> body,
  });

  @PATCH("market/cart/items/{productId}")
  Future<void> selectCartItem({
    @Path("productId") required int productId,
    @Body() required Map<String, dynamic> body,
  });

  @PATCH("market/cart/select-all")
  Future<void> selectAllCartItems(@Body() Map<String, dynamic> body);

  @DELETE("market/cart/items/{productId}")
  Future<void> removeCartItem(@Path("productId") int productId);

  @DELETE("market/cart/selected")
  Future<void> removeSelectedCartItems();

  @DELETE("market/cart")
  Future<void> clearCart();

  @GET("market/checkout")
  Future<CheckoutDto> checkout();

  @GET("market/checkout/details")
  Future<List<CheckoutDetailDto>> checkoutDetails({
    @Query("deliveryMethodId") int? deliveryMethodId,
    @Query("addressId") int? addressId,
    @Query("phone") String? phone,
  });

  @GET("market/delivery-methods")
  Future<List<DeliveryMethodDto>> deliveryMethods({
    @Query("sellerId") int? sellerId,
  });

  @GET("market/addresses")
  Future<List<MarketAddressDto>> addresses();

  @POST("market/addresses")
  Future<MarketAddressDto> addAddress(@Body() Map<String, dynamic> body);

  @PUT("market/addresses/{addressId}")
  Future<MarketAddressDto> editAddress({
    @Path("addressId") required int addressId,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE("market/addresses/{addressId}")
  Future<void> deleteAddress(@Path("addressId") int addressId);

  @POST("market/orders")
  Future<dynamic> createOrder(@Body() Map<String, dynamic> body);

  @GET("market/orders")
  Future<List<MarketOrderDto>> orders();

  @GET("market/orders/{orderId}")
  Future<MarketOrderDto> order(@Path("orderId") int orderId);

  @POST("market/orders/{orderId}/cancel")
  Future<dynamic> cancelOrder(@Path("orderId") int orderId);
}
