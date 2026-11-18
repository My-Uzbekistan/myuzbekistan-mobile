// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumOrderDto _$MuseumOrderDtoFromJson(Map<String, dynamic> json) =>
    MuseumOrderDto(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String?,
      state: json['state'] as String?,
      museumId: json['museumId'] as String?,
      museumTitle: json['museumTitle'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      createdAt: json['createdAt'] as String?,
      paymentId: json['paymentId'] as String?,
      checkUrl: json['checkUrl'] as String?,
      cardMask: json['cardMask'] as String?,
      cardPs: json['cardPs'] as String?,
      qr: json['qr'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MuseumOrderItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tickets: (json['tickets'] as List<dynamic>?)
          ?.map((e) => MuseumTicketDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuseumOrderDtoToJson(MuseumOrderDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'state': instance.state,
      'museumId': instance.museumId,
      'museumTitle': instance.museumTitle,
      'totalAmount': instance.totalAmount,
      'currency': instance.currency,
      'createdAt': instance.createdAt,
      'paymentId': instance.paymentId,
      'checkUrl': instance.checkUrl,
      'cardMask': instance.cardMask,
      'cardPs': instance.cardPs,
      'qr': instance.qr,
      'items': instance.items,
      'tickets': instance.tickets,
    };
