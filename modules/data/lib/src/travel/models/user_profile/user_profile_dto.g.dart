// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) =>
    UserProfileDto(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      canChangeAvatar: json['canChangeAvatar'] as bool?,
      registrationMethod: json['registrationMethod'] == null
          ? null
          : RegistrationMethodDto.fromJson(
              json['registrationMethod'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserProfileDtoToJson(UserProfileDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'canChangeAvatar': instance.canChangeAvatar,
      'registrationMethod': instance.registrationMethod,
    };
