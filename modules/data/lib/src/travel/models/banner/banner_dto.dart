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

  BannerDto({required this.id, this.photo, this.url});

  factory BannerDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDtoToJson(this);

  BannerItem toDomain() => BannerItem(
        id: id,
        // Rasm URL'ida bo'sh joy bo'lishi mumkin (`images (2).webp`) —
        // ExtendedImage yuklashi uchun `%20` ga encode qilamiz.
        imageUrl: (photo ?? "").isEmpty ? "" : Uri.encodeFull(photo!),
        url: url,
      );
}
