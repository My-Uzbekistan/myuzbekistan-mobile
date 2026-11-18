// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingDto _$OnboardingDtoFromJson(Map<String, dynamic> json) =>
    OnboardingDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      bannerUrl: json['bannerUrl'] as String,
      description: json['description'] as String?,
      actionLink: json['actionLink'] as String?,
    );

Map<String, dynamic> _$OnboardingDtoToJson(OnboardingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bannerUrl': instance.bannerUrl,
      'description': instance.description,
      'actionLink': instance.actionLink,
    };
