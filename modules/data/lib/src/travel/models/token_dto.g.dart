// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) => TokenDto(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
  expires: (json['expires'] as num).toInt(),
  hasPin: json['hasPin'] as bool? ?? false,
);

Map<String, dynamic> _$TokenDtoToJson(TokenDto instance) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'expires': instance.expires,
  'hasPin': instance.hasPin,
};
