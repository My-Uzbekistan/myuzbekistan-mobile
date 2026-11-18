import 'package:data/src/market/src/models/market_order_item/market_order_item_dto.dart';
import 'package:data/src/market/src/models/market_order_payment/market_order_payment_dto.dart';
import 'package:data/src/market/src/models/market_order_price/market_order_price_dto.dart';
import 'package:data/src/market/src/models/market_order_step/market_order_step_dto.dart';
import 'package:data/src/market/src/models/market_price_details/market_price_details_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_dto.g.dart';

@JsonSerializable()
class MarketOrderDto {
  final int id;
  final String? orderNumber;
  final String? status;
  final DateTime? createdAt;
  final MarketOrderPriceDto price;
  final MarketPriceDetailsDto? priceDetails;
  final String? deliveryType;
  final String? deliveryTitle;
  final String? addressLine;
  final String? addressDistrict;
  final String? recipientPhone;
  final bool? canCancel;
  final List<MarketOrderStepDto>? steps;
  final MarketOrderPaymentDto? payment;
  final List<MarketOrderItemDto>? items;

  MarketOrderDto({
    required this.id,
    required this.price,
    this.priceDetails,
    this.orderNumber,
    this.status,
    this.createdAt,
    this.deliveryType,
    this.deliveryTitle,
    this.addressLine,
    this.addressDistrict,
    this.recipientPhone,
    this.canCancel,
    this.steps,
    this.payment,
    this.items,
  });

  factory MarketOrderDto.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderDtoFromJson(json);

  MarketOrder toDomain() => MarketOrder(
    id: id,
    orderNumber: orderNumber ?? "",
    status: MarketOrderStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => MarketOrderStatus.draft,
    ),
    createdAt: createdAt,
    price: price.toDomain(),
    priceDetails: priceDetails?.toDomain(),
    deliveryType: MarketOrderDeliveryType.values.firstOrNullWhere(
      (e) => e.name == deliveryType,
    ),
    deliveryTitle: deliveryTitle ?? "",
    addressLine: addressLine ?? "",
    addressDistrict: addressDistrict ?? "",
    recipientPhone: recipientPhone ?? "",
    canCancel: canCancel ?? false,
    steps: steps?.map((e) => e.toDomain()).toList() ?? const [],
    payment: payment?.toDomain(),
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
