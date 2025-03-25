import 'package:core/src/data/network/convertors/image_convertor.dart';
import 'package:json_annotation/json_annotation.dart';
part 'categories_dto.g.dart';
@JsonSerializable()
class CategoriesDto {

  String? name;
  @ImageConvertor()
  String? icon;
  int id;

  CategoriesDto({this.name, this.icon, required this.id,});
  factory CategoriesDto.fromJson(Map<String, dynamic> json) => _$CategoriesDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesDtoToJson(this);


}