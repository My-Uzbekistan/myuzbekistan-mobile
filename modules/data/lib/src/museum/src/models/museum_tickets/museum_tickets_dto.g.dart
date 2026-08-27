// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_tickets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumTicketsDto _$MuseumTicketsDtoFromJson(Map<String, dynamic> json) =>
    MuseumTicketsDto(
      activeCount: (json['activeCount'] as num?)?.toInt(),
      usedCount: (json['usedCount'] as num?)?.toInt(),
      expiredCount: (json['expiredCount'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MuseumOrderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuseumTicketsDtoToJson(MuseumTicketsDto instance) =>
    <String, dynamic>{
      'activeCount': instance.activeCount,
      'usedCount': instance.usedCount,
      'expiredCount': instance.expiredCount,
      'items': instance.items,
    };
