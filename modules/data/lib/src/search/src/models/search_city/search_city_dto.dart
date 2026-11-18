import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../../utils/convertors/image_convertor.dart';

part 'search_city_dto.g.dart';

@JsonSerializable()
class SearchCityDto {
  final int id;
  final String? name;
  final String? subtitle;
  @ImageConvertor()
  final String? photo;
  final String? deeplink;

  SearchCityDto({
    required this.id,
    this.name,
    this.subtitle,
    this.photo,
    this.deeplink,
  });

  factory SearchCityDto.fromJson(Map<String, dynamic> json) =>
      _$SearchCityDtoFromJson(json);

  SearchCity toDomain() => SearchCity(
    id: id,
    name: name ?? "",
    subtitle: subtitle,
    photo: photo,
    deeplink: deeplink,
  );
}
