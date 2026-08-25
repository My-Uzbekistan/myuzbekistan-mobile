import 'package:data/src/market/src/models/delivery_method/delivery_method_dto.dart';
import 'package:data/src/market/src/models/market_seller/market_seller_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_product_detail_dto.g.dart';

@JsonSerializable()
class MarketProductDetailDto {
  final int id;
  final String? blockTitle;
  final String? name;
  final List<String>? photos;
  final int price;
  final int? oldPrice;
  final int? soldThisMonth;
  final String? description;
  final int? available;
  final bool? isFavorite;
  final int? cartQuantity;
  final List<DeliveryMethodDto>? delivery;
  final MarketSellerDto? seller;

  MarketProductDetailDto({
    required this.id,
    required this.price,
    this.blockTitle,
    this.name,
    this.photos,
    this.oldPrice,
    this.soldThisMonth,
    this.description,
    this.available,
    this.isFavorite,
    this.cartQuantity,
    this.delivery,
    this.seller,
  });

  factory MarketProductDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MarketProductDetailDtoFromJson(json);

  MarketProductDetail toDomain() => MarketProductDetail(
    id: id,
    blockTitle: blockTitle,
    name: name ?? "",
    photos: photos ?? const [],
    price: price,
    oldPrice: oldPrice,
    soldThisMonth: soldThisMonth ?? 0,
    description: description ?? "",
    available: available ?? 0,
    isFavorite: isFavorite ?? false,
    cartQuantity: cartQuantity ?? 0,
    delivery: delivery?.map((e) => e.toDomain()).toList() ?? const [],
    seller: seller?.toDomain(),
  );
}
