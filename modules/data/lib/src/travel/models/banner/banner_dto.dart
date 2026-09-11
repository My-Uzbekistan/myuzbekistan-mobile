import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part 'banner_dto.g.dart';

@JsonSerializable()
class BannerDto {
  final int id;
  @ImageConvertor()
  final String? photo;
  final String? url;
  final String? actionType;
  final bool? authRequired;

  BannerDto({
    required this.id,
    this.photo,
    this.url,
    this.actionType,
    this.authRequired,
  });

  factory BannerDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDtoToJson(this);

  BannerItem toDomain() => BannerItem(
        id: id,
        imageUrl: (photo ?? "").isEmpty ? "" : Uri.encodeFull(photo!),
        url: url,
        actionType: BannerActionType.values.firstWhere(
          (e) => e.name == actionType,
          orElse: () => BannerActionType.redirect,
        ),
        authRequired: authRequired ?? false,
      );
}
