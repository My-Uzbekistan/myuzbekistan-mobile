// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerDto _$BannerDtoFromJson(Map<String, dynamic> json) => BannerDto(
  id: (json['id'] as num).toInt(),
  photo: const ImageConvertor().fromJson(json['photo'] as String?),
  url: json['url'] as String?,
  actionType: const AppActionTypeConvertor().fromJson(json['actionType']),
  authRequired: json['authRequired'] as bool?,
);

Map<String, dynamic> _$BannerDtoToJson(BannerDto instance) => <String, dynamic>{
  'id': instance.id,
  'photo': const ImageConvertor().toJson(instance.photo),
  'url': instance.url,
  'actionType': const AppActionTypeConvertor().toJson(instance.actionType),
  'authRequired': instance.authRequired,
};
