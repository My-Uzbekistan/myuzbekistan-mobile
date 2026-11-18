import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../../utils/convertors/image_convertor.dart';

part 'search_merchant_dto.g.dart';

@JsonSerializable()
class SearchMerchantDto {
  final int id;
  final String? name;
  @ImageConvertor()
  final String? logo;
  final String? type;
  final String? deeplink;

  SearchMerchantDto({
    required this.id,
    this.name,
    this.logo,
    this.type,
    this.deeplink,
  });

  factory SearchMerchantDto.fromJson(Map<String, dynamic> json) =>
      _$SearchMerchantDtoFromJson(json);

  SearchMerchant toDomain() => SearchMerchant(
    id: id,
    name: name ?? "",
    logo: logo,
    type: type,
    deeplink: deeplink,
  );
}
