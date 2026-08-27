// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_background_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBackgroundDto _$HomeBackgroundDtoFromJson(Map<String, dynamic> json) =>
    HomeBackgroundDto(
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
    );

Map<String, dynamic> _$HomeBackgroundDtoToJson(HomeBackgroundDto instance) =>
    <String, dynamic>{'photo': const ImageConvertor().toJson(instance.photo)};
