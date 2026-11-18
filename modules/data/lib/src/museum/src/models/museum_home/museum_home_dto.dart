import 'package:data/src/museum/src/models/museum_card/museum_card_dto.dart';
import 'package:data/src/museum/src/models/museum_city/museum_city_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_home_dto.g.dart';

@JsonSerializable()
class MuseumHomeDto {
  final List<MuseumCityDto>? cities;
  final List<MuseumCardDto>? popular;
  final List<MuseumCardDto>? recommended;

  MuseumHomeDto({this.cities, this.popular, this.recommended});

  factory MuseumHomeDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumHomeDtoFromJson(json);

  MuseumHome toDomain() => MuseumHome(
    cities: cities?.map((e) => e.toDomain()).toList() ?? const [],
    popular: popular?.map((e) => e.toDomain()).toList() ?? const [],
    recommended: recommended?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
