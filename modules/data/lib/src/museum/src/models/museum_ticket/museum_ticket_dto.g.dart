// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumTicketDto _$MuseumTicketDtoFromJson(Map<String, dynamic> json) =>
    MuseumTicketDto(
      ticketNumber: json['ticketNumber'] as String?,
      tariffTitle: json['tariffTitle'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toInt(),
      qr: json['qr'] as String?,
      validHours: (json['validHours'] as num?)?.toInt(),
      validUntil: json['validUntil'] as String?,
    );

Map<String, dynamic> _$MuseumTicketDtoToJson(MuseumTicketDto instance) =>
    <String, dynamic>{
      'ticketNumber': instance.ticketNumber,
      'tariffTitle': instance.tariffTitle,
      'unitPrice': instance.unitPrice,
      'qr': instance.qr,
      'validHours': instance.validHours,
      'validUntil': instance.validUntil,
    };
