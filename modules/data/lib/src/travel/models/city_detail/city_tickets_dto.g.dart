// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_tickets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityTicketsDto _$CityTicketsDtoFromJson(Map<String, dynamic> json) =>
    CityTicketsDto(
      title: json['title'] as String?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => CityTicketDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CityTicketsDtoToJson(CityTicketsDto instance) =>
    <String, dynamic>{'title': instance.title, 'items': instance.items};
