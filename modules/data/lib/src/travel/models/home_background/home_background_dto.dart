import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part 'home_background_dto.g.dart';

@JsonSerializable()
class HomeBackgroundDto {
  @ImageConvertor()
  final String? photo;

  HomeBackgroundDto({this.photo});

  factory HomeBackgroundDto.fromJson(Map<String, dynamic> json) =>
      _$HomeBackgroundDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HomeBackgroundDtoToJson(this);

  String? toDomain() =>
      (photo ?? "").isEmpty ? null : Uri.encodeFull(photo!);
}
