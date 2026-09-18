import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/app_action_type_convertor.dart';
import '../../../utils/convertors/image_convertor.dart';

part 'banner_dto.g.dart';

@JsonSerializable()
class BannerDto {
  final int id;
  @ImageConvertor()
  final String? photo;
  final String? url;
  @AppActionTypeConvertor()
  final AppActionType actionType;
  final bool? authRequired;

  BannerDto({
    required this.id,
    this.photo,
    this.url,
    required this.actionType,
    this.authRequired,
  });

  factory BannerDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDtoToJson(this);

  BannerItem toDomain() => BannerItem(
        id: id,
        imageUrl: (photo ?? "").isEmpty ? "" : Uri.encodeFull(photo!),
        url: url,
        actionType: actionType,
        authRequired: authRequired ?? false,
      );
}
