import 'package:data/src/market/src/network/api/market_api_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: MarketRepository)
class MarketRepositoryImpl extends MarketRepository {
  final MarketApiService service;
  final AppPreference preference;

  MarketRepositoryImpl(this.service, this.preference);

  @override
  Future<MarketHome> home() async {
    var home = await service
        .home(cityId: selectedCityId())
        .call((data) => data.toDomain());

    if (home.city == null && selectedCityId() != null) {
      home = await service.home().call((data) => data.toDomain());
    }

    final city = home.city;
    if (city != null && city.id != selectedCityId()) {
      await selectCity(cityId: city.id);
    }
    return home;
  }

  @override
  Future<List<MarketCategory>> categories() {
    return service.categories().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<MarketCity>> cities() {
    return service.cities().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  int? selectedCityId() => preference.getMarketCityId();

  @override
  Future<void> selectCity({required int cityId}) {
    return preference.setMarketCityId(cityId);
  }

  @override
  Future<MarketProductList> products({
    required int page,
    required int pageSize,
    MarketProductSort sort = MarketProductSort.popular,
    String? search,
    int? categoryId,
    String? block,
  }) {
    return service
        .products(
          page: page,
          pageSize: pageSize,
          sort: sort.name,
          search: search,
          categoryId: categoryId,
          block: block,
          cityId: selectedCityId(),
        )
        .call((data) => data.toDomain());
  }

  @override
  Future<MarketProductDetail> productDetail({
    required int productId,
    double? latitude,
    double? longitude,
  }) {
    return service
        .productDetail(productId: productId, lat: latitude, lon: longitude)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<MarketSearchHistory>> searchHistory() {
    return service.searchHistory().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<String>> searchSuggestions() {
    return service.searchSuggestions().call();
  }

  @override
  Future<void> deleteSearchHistory({required int searchId}) {
    return service.deleteSearchHistory(searchId).call();
  }

  @override
  Future<void> clearSearchHistory() {
    return service.clearSearchHistory().call();
  }

  @override
  Future<List<MarketProduct>> favorites() {
    return service.favorites().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<void> addFavorite({required int productId}) {
    return service.addFavorite(productId).call();
  }

  @override
  Future<void> removeFavorite({required int productId}) {
    return service.removeFavorite(productId).call();
  }

  @override
  Future<Cart> cart() {
    return service.cart().call((data) => data.toDomain());
  }

  @override
  Future<CartCount> cartCount() {
    return service.cartCount().call((data) => data.toDomain());
  }

  @override
  Future<void> addToCart({required int productId, required int quantity}) {
    return service
        .addToCart({"productId": productId, "quantity": quantity})
        .call();
  }

  @override
  Future<void> changeCartQuantity({
    required int productId,
    required int quantity,
  }) {
    return service
        .changeCartQuantity(
          productId: productId,
          body: {"quantity": quantity},
        )
        .call();
  }

  @override
  Future<void> selectCartItem({
    required int productId,
    required bool isSelected,
  }) {
    return service
        .selectCartItem(
          productId: productId,
          body: {"isSelected": isSelected},
        )
        .call();
  }

  @override
  Future<void> selectAllCartItems({required bool isSelected}) {
    return service.selectAllCartItems({"isSelected": isSelected}).call();
  }

  @override
  Future<void> removeCartItem({required int productId}) {
    return service.removeCartItem(productId).call();
  }

  @override
  Future<void> removeSelectedCartItems() {
    return service.removeSelectedCartItems().call();
  }

  @override
  Future<void> clearCart() {
    return service.clearCart().call();
  }

  @override
  Future<Checkout> checkout() {
    return service.checkout().call((data) => data.toDomain());
  }

  @override
  Future<List<CheckoutDetail>> checkoutDetails({
    int? deliveryMethodId,
    int? addressId,
    String? phone,
  }) {
    return service
        .checkoutDetails(
          deliveryMethodId: deliveryMethodId,
          addressId: addressId,
          phone: phone,
        )
        .call((items) => items.map((e) => e.toDomain()).toList());
  }

  @override
  Future<List<DeliveryMethod>> deliveryMethods({int? sellerId}) {
    return service.deliveryMethods(sellerId: sellerId).call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<List<MarketAddress>> addresses() {
    return service.addresses().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<MarketAddress> addAddress({
    required String line,
    String? district,
    double? latitude,
    double? longitude,
    bool isDefault = false,
  }) {
    return service
        .addAddress(
          _addressBody(
            line: line,
            district: district,
            latitude: latitude,
            longitude: longitude,
            isDefault: isDefault,
          ),
        )
        .call((data) => data.toDomain());
  }

  @override
  Future<MarketAddress> editAddress({
    required int addressId,
    required String line,
    String? district,
    double? latitude,
    double? longitude,
    bool isDefault = false,
  }) {
    return service
        .editAddress(
          addressId: addressId,
          body: _addressBody(
            line: line,
            district: district,
            latitude: latitude,
            longitude: longitude,
            isDefault: isDefault,
          ),
        )
        .call((data) => data.toDomain());
  }

  @override
  Future<void> deleteAddress({required int addressId}) {
    return service.deleteAddress(addressId).call();
  }

  @override
  Future<dynamic> createOrder({
    required int deliveryMethodId,
    required String recipientPhone,
    int? addressId,
    String? recipientName,
    String? comment,
  }) {
    return service.createOrder({
      "deliveryMethodId": deliveryMethodId,
      "recipientPhone": recipientPhone,
      "addressId": addressId,
      "recipientName": recipientName,
      "comment": comment,
    }).call();
  }

  Map<String, dynamic> _addressBody({
    required String line,
    required String? district,
    required double? latitude,
    required double? longitude,
    required bool isDefault,
  }) {
    return {
      "line": line,
      "district": district,
      "latitude": latitude,
      "longitude": longitude,
      "isDefault": isDefault,
    };
  }

  @override
  Future<List<MarketOrder>> orders() {
    return service.orders().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<MarketOrder> order({required int id}) {
    return service.order(id).call((data) => data.toDomain());
  }

  @override
  Future<dynamic> cancelOrder({required int id}) {
    return service.cancelOrder(id).call();
  }
}
