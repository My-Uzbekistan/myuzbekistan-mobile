import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';
import 'city_block_dto.dart';
import 'city_location_dto.dart';
import 'city_tickets_dto.dart';

part 'city_detail_dto.g.dart';

@JsonSerializable()
class CityDetailDto {
  final int id;
  final String? name;
  final String? subtitle;
  @ImageConvertor()
  final String? photo;
  final CityLocationDto? location;
  final CityTicketsDto? tickets;
  @JsonKey(defaultValue: [])
  final List<CityBlockDto> blocks;

  CityDetailDto({
    required this.id,
    this.name,
    this.subtitle,
    this.photo,
    this.location,
    this.tickets,
    this.blocks = const [],
  });

  factory CityDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CityDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityDetailDtoToJson(this);

  CityDetail toDomain() => CityDetail(
        id: id,
        name: name ?? "",
        subtitle: subtitle,
        photo: photo,
        location: location?.toDomain(),
        tickets: tickets?.toDomain(),
        blocks: blocks.map((e) => e.toDomain()).toList(),
      );
}
