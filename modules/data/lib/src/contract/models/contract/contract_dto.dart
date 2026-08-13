import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

import '../contract_good/contract_good_dto.dart';
import '../contract_product/contract_product_dto.dart';
import '../contract_product_property/contract_product_property_dto.dart';

part 'contract_dto.g.dart';

@JsonSerializable()
class ContractDto {
  @JsonKey(name: "number")
  final String? number;

  // Shartnoma ma'lumotlari
  @JsonKey(name: "contractDate")
  final DateTime? contractDate;
  @JsonKey(name: "currency")
  final String? currency;
  @JsonKey(name: "discussionEndDate")
  final DateTime? discussionEndDate;
  @JsonKey(name: "totalAmount")
  final double? totalAmount;
  @JsonKey(name: "endDate")
  final DateTime? endDate;
  @JsonKey(name: "oqsAmount")
  final double? oqsAmount;
  @JsonKey(name: "basis")
  final String? basis;
  @JsonKey(name: "advanceAmount")
  final double? advanceAmount;
  @JsonKey(name: "region")
  final String? region;

  // To'lov shartlari (kunlarda)
  @JsonKey(name: "advancePaymentDay")
  final int? advancePaymentDay;
  @JsonKey(name: "paymentPeriodDays")
  final int? paymentPeriodDays;
  @JsonKey(name: "deliveryPeriodDays")
  final int? deliveryPeriodDays;

  // Ro'yxatlar
  @JsonKey(name: "products")
  final List<ContractProductDto>? products;
  @JsonKey(name: "productProperties")
  final List<ContractProductPropertyDto>? productProperties;
  @JsonKey(name: "goods")
  final List<ContractGoodDto>? goods;

  // To'lov haqida ma'lumot (ish kunlarida)
  @JsonKey(name: "paymentInfoDeliveryDays")
  final int? paymentInfoDeliveryDays;
  @JsonKey(name: "paymentInfoPrepaymentDays")
  final int? paymentInfoPrepaymentDays;
  @JsonKey(name: "advancePercent")
  final int? advancePercent;
  @JsonKey(name: "paymentInfoPaymentDays")
  final int? paymentInfoPaymentDays;

  // Buyurtmachining manzili
  @JsonKey(name: "customerAddress")
  final String? customerAddress;

  ContractDto({
    this.number,
    this.contractDate,
    this.currency,
    this.discussionEndDate,
    this.totalAmount,
    this.endDate,
    this.oqsAmount,
    this.basis,
    this.advanceAmount,
    this.region,
    this.advancePaymentDay,
    this.paymentPeriodDays,
    this.deliveryPeriodDays,
    this.products,
    this.productProperties,
    this.goods,
    this.paymentInfoDeliveryDays,
    this.paymentInfoPrepaymentDays,
    this.advancePercent,
    this.paymentInfoPaymentDays,
    this.customerAddress,
  });

  factory ContractDto.fromJson(Map<String, dynamic> json) =>
      _$ContractDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ContractDtoToJson(this);

  Contract toDomain() => Contract(
        number: number,
        contractDate: contractDate,
        currency: currency,
        discussionEndDate: discussionEndDate,
        totalAmount: totalAmount,
        endDate: endDate,
        oqsAmount: oqsAmount,
        basis: basis,
        advanceAmount: advanceAmount,
        region: region,
        advancePaymentDay: advancePaymentDay,
        paymentPeriodDays: paymentPeriodDays,
        deliveryPeriodDays: deliveryPeriodDays,
        products: products?.map((e) => e.toDomain()).toList() ?? const [],
        productProperties:
            productProperties?.map((e) => e.toDomain()).toList() ?? const [],
        goods: goods?.map((e) => e.toDomain()).toList() ?? const [],
        paymentInfoDeliveryDays: paymentInfoDeliveryDays,
        paymentInfoPrepaymentDays: paymentInfoPrepaymentDays,
        advancePercent: advancePercent,
        paymentInfoPaymentDays: paymentInfoPaymentDays,
        customerAddress: customerAddress,
      );
}
