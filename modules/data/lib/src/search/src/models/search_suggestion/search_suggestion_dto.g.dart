// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSuggestionDto _$SearchSuggestionDtoFromJson(Map<String, dynamic> json) =>
    SearchSuggestionDto(
      type: json['type'] as String?,
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SearchSuggestionDtoToJson(
  SearchSuggestionDto instance,
) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'title': instance.title,
};
