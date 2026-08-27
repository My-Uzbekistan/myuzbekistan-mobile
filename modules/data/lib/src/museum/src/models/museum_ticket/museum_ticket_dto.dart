import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_ticket_dto.g.dart';

@JsonSerializable()
class MuseumTicketDto {
  final String? ticketNumber;
  final String? tariffTitle;
  final int? unitPrice;
  final String? qr;
  final int? validHours;
  final String? validUntil;

  MuseumTicketDto({
    this.ticketNumber,
    this.tariffTitle,
    this.unitPrice,
    this.qr,
    this.validHours,
    this.validUntil,
  });

  factory MuseumTicketDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumTicketDtoFromJson(json);

  MuseumTicket toDomain() => MuseumTicket(
    ticketNumber: ticketNumber ?? "",
    tariffTitle: tariffTitle ?? "",
    unitPrice: unitPrice ?? 0,
    qr: qr,
    validHours: validHours,
    validUntil: DateTime.tryParse(validUntil ?? "")?.toLocal(),
  );
}
