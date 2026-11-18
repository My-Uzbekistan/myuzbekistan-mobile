import '../models/cart.dart';
import '../models/cart_count.dart';
import '../models/checkout.dart';
import '../models/checkout_detail.dart';
import '../models/delivery_method.dart';
import '../models/market_address.dart';
import '../models/market_category.dart';
import '../models/market_city.dart';
import '../models/market_geo_address.dart';
import '../models/market_home.dart';
import '../models/market_order.dart';
import '../models/market_pickup_point.dart';
import '../models/market_product.dart';
import '../models/market_product_detail.dart';
import '../models/market_product_list.dart';
import '../models/market_product_sort.dart';
import '../models/market_search_history.dart';

abstract class MarketRepository {
  Future<MarketHome> home();

  Future<List<MarketCategory>> categories();

  Future<List<MarketCity>> cities();

  int? selectedCityId();

  Future<void> selectCity({required int cityId});

  Future<MarketProductList> products({
    required int page,
    required int pageSize,
    MarketProductSort sort = MarketProductSort.popular,
    String? search,
    int? categoryId,
    String? block,
  });

  Future<MarketProductDetail> productDetail({
    required int productId,
    double? latitude,
    double? longitude,
  });

  Future<List<MarketSearchHistory>> searchHistory();

  Future<List<String>> searchSuggestions();

  Future<void> deleteSearchHistory({required int searchId});

  Future<void> clearSearchHistory();

  Future<List<MarketProduct>> favorites();

  Future<void> addFavorite({required int productId});

  Future<void> removeFavorite({required int productId});

  Future<Cart> cart();

  Future<CartCount> cartCount();

  Future<void> addToCart({required int productId, required int quantity});

  Future<void> changeCartQuantity({
    required int productId,
    required int quantity,
  });

  Future<void> selectCartItem({
    required int productId,
    required bool isSelected,
  });

  Future<void> selectAllCartItems({required bool isSelected});

  Future<void> removeCartItem({required int productId});

  Future<void> removeSelectedCartItems();

  Future<void> clearCart();

  Future<Checkout> checkout();

  Future<List<CheckoutDetail>> checkoutDetails({
    int? deliveryMethodId,
    int? addressId,
    String? phone,
  });

  Future<List<DeliveryMethod>> deliveryMethods({int? sellerId});

  Future<List<MarketPickupPoint>> pickupPoints({int? deliveryMethodId});

  Future<List<MarketAddress>> addresses();

  Future<MarketAddress> addAddress({
    required String line,
    String? district,
    double? latitude,
    double? longitude,
    bool isDefault = false,
    String? phone,
  });

  Future<MarketAddress> editAddress({
    required int addressId,
    required String line,
    String? district,
    double? latitude,
    double? longitude,
    bool isDefault = false,
    String? phone,
  });

  Future<void> deleteAddress({required int addressId});

  Future<MarketGeoAddress> geoAddress({
    required double latitude,
    required double longitude,
  });

  Future<dynamic> createOrder({
    required int deliveryMethodId,
    required String recipientPhone,
    int? addressId,
    int? pickupPointId,
    String? recipientName,
    String? comment,
  });

  Future<List<MarketOrder>> orders();

  Future<MarketOrder> order({required int id});

  Future<dynamic> cancelOrder({required int id});
}
