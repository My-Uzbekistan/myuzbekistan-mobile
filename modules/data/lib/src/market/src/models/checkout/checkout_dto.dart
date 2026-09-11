import 'package:data/src/market/src/models/cart_item/cart_item_dto.dart';
import 'package:data/src/market/src/models/checkout_price/checkout_price_dto.dart';
import 'package:data/src/market/src/models/delivery_method/delivery_method_dto.dart';
import 'package:data/src/market/src/models/market_address/market_address_dto.dart';
import 'package:data/src/market/src/models/market_pickup_point/market_pickup_point_dto.dart';
import 'package:data/src/market/src/models/market_price_details/market_price_details_dto.dart';
import 'package:data/src/market/src/models/market_region/market_region_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'checkout_dto.g.dart';

@JsonSerializable()
class CheckoutDto {
  final DeliveryMethodDto? delivery;
  final MarketAddressDto? address;
  final MarketPickupPointDto? pickupPoint;
  final MarketRegionDto? region;
  final String? phone;
  final List<CartItemDto>? items;
  final CheckoutPriceDto? price;
  final MarketPriceDetailsDto? priceDetails;
  final String? freeCancellationUntil;

  CheckoutDto({
    this.delivery,
    this.address,
    this.pickupPoint,
    this.region,
    this.phone,
    this.items,
    this.price,
    this.priceDetails,
    this.freeCancellationUntil,
  });

  factory CheckoutDto.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDtoFromJson(json);

  Checkout toDomain() => Checkout(
    delivery: delivery?.toDomain(),
    address: address?.toDomain(),
    pickupPoint: pickupPoint?.toDomain(),
    region: region?.toDomain(),
    phone: phone,
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
    price:
        price?.toDomain() ??
        CheckoutPrice(products: 0, delivery: 0, total: 0),
    priceDetails: priceDetails?.toDomain(),
    freeCancellationUntil: DateTime.tryParse(freeCancellationUntil ?? "")
        ?.toLocal(),
  );
}
