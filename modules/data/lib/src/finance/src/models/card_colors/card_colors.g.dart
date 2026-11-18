// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_colors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardColors _$CardColorsFromJson(Map<String, dynamic> json) => CardColors(
  items: (json['items'] as List<dynamic>)
      .map((e) => CardColorDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CardColorsToJson(CardColors instance) =>
    <String, dynamic>{'items': instance.items};

CardColorDto _$CardColorDtoFromJson(Map<String, dynamic> json) =>
    CardColorDto(image: json['image'] as String?);

Map<String, dynamic> _$CardColorDtoToJson(CardColorDto instance) =>
    <String, dynamic>{'image': instance.image};
