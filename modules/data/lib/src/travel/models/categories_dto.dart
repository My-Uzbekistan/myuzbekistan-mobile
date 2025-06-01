import 'package:shared/shared.dart';

import '../../utils/convertors/image_convertor.dart';

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