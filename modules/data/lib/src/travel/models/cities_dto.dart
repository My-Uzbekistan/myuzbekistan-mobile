import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../utils/convertors/image_convertor.dart';

part 'cities_dto.g.dart';

@JsonSerializable()
class CityItemDto {
  final int id;
  final String? name;
  @ImageConvertor()
  final String? photo;

  CityItemDto({required this.id, this.name, this.photo});

  factory CityItemDto.fromJson(Map<String, dynamic> json) =>
      _$CityItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityItemDtoToJson(this);

  City toDomain() => City(id: id, name: name ?? "", photo: photo);
}

@JsonSerializable()
class CitiesResponseDto {
  /// Barcha kartochka uchun bir xil tayyor sana matni ("8 — 9 avgust").
  final String? weekend;
  @JsonKey(defaultValue: [])
  final List<CityItemDto> items;

  CitiesResponseDto({this.weekend, this.items = const []});

  factory CitiesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CitiesResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CitiesResponseDtoToJson(this);

  CitiesResult toDomain() => CitiesResult(
        weekend: weekend,
        items: items.map((e) => e.toDomain()).toList(),
      );
}
