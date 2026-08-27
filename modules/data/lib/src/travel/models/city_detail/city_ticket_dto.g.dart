// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityTicketDto _$CityTicketDtoFromJson(Map<String, dynamic> json) =>
    CityTicketDto(
      transportId: (json['transportId'] as num).toInt(),
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      price: json['price'] as String?,
      priceUnit: json['priceUnit'] as String?,
    );

Map<String, dynamic> _$CityTicketDtoToJson(CityTicketDto instance) =>
    <String, dynamic>{
      'transportId': instance.transportId,
      'icon': const ImageConvertor().toJson(instance.icon),
      'title': instance.title,
      'subtitle': instance.subtitle,
      'price': instance.price,
      'priceUnit': instance.priceUnit,
    };
