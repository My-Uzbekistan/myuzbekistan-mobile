import 'package:core/src/domain/models/categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'regions.g.dart';
@JsonSerializable()
class RegionsDto {
  int id;
  String? name;

  RegionsDto({required this.id,this.name, });

  factory RegionsDto.fromJson(Map<String, dynamic> json) => _$RegionsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$RegionsDtoToJson(this);


  Region toDomain() {
    return Region(id: id, name: name);
  }
}
