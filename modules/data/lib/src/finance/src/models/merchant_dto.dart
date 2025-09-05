// {
//   "logo": */uploads/a44486429e1341b9afaae 789
// "name":"dsth"
// "description": "sdthsfdh"
// "address": "dsth"
// "workTime": "sdf"
// "phone": "sdth"
// "type": "Service"
// "distance": 0
// }

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
    name: name.orEmpty(),
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
    type: type,
    distance: distance,
  );
}
