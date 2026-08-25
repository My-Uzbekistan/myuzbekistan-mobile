import 'package:data/src/utils/convertors/image_convertor.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'merchant_dto.g.dart';

@JsonSerializable()
class GroupByMerchantsDto {
  final String? name;
  final List<MerchantDto> merchants;

  GroupByMerchantsDto({required this.name, required this.merchants});

  factory GroupByMerchantsDto.fromJson(Map<String, dynamic> json) =>
      _$GroupByMerchantsDtoFromJson(json);

  GroupBy<Merchant> toDomain() => GroupBy(
    name: name.orEmpty().trim(),
    items: merchants.map((e) => e.toDomain()).toList(),
  );
}

@JsonSerializable()
class MerchantDto {
  final int id;
  @ImageConvertor()
  final String? logo;
  final String? name;
  final String? description;
  final String? address;
  final String? workTime;
  final String? phone;
  final String? type;
  final double? distance;
  final int? minAmount;
  final int? maxAmount;
  final List<int>? suggestedAmounts;

  MerchantDto({
    required this.id,
    this.logo,
    this.name,
    this.description,
    this.address,
    this.workTime,
    this.phone,
    this.type,
    this.distance,
    this.minAmount,
    this.maxAmount,
    this.suggestedAmounts,
  });

  factory MerchantDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantDtoFromJson(json);

  Merchant toDomain() => Merchant(
    id: id,
    logo: logo,
    name: name,
    description: description,
    address: address,
    workTime: workTime,
    phone: phone,
    type: type?.trim(),
    distance: distance,
    minAmount: minAmount,
    maxAmount: maxAmount,
    suggestedAmounts: suggestedAmounts ?? const [],
  );
}
