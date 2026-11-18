import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_city_dto.g.dart';

@JsonSerializable()
class MuseumCityDto {
  final String id;
  final String? name;

  MuseumCityDto({required this.id, this.name});

  factory MuseumCityDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumCityDtoFromJson(json);

  MuseumCity toDomain() => MuseumCity(id: id, name: name ?? "");
}
