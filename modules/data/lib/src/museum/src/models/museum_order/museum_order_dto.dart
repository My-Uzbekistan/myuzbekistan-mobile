import 'package:data/src/museum/src/models/museum_order_item/museum_order_item_dto.dart';
import 'package:data/src/museum/src/models/museum_ticket/museum_ticket_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_order_dto.g.dart';

@JsonSerializable()
class MuseumOrderDto {
  final int id;
  final String? number;
  final String? state;
  final String? museumId;
  final String? museumTitle;
  final int? totalAmount;
  final String? currency;
  final String? createdAt;
  final String? paymentId;
  final String? checkUrl;
  final String? cardMask;
  final String? cardPs;
  final String? qr;
  final List<MuseumOrderItemDto>? items;
  final List<MuseumTicketDto>? tickets;

  MuseumOrderDto({
    required this.id,
    this.number,
    this.state,
    this.museumId,
    this.museumTitle,
    this.totalAmount,
    this.currency,
    this.createdAt,
    this.paymentId,
    this.checkUrl,
    this.cardMask,
    this.cardPs,
    this.qr,
    this.items,
    this.tickets,
  });

  factory MuseumOrderDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumOrderDtoFromJson(json);

  MuseumOrder toDomain() => MuseumOrder(
    id: id,
    number: number ?? "",
    state: MuseumOrderState.values.firstWhere(
      (e) => e.value == state,
      orElse: () => MuseumOrderState.pending,
    ),
    museumId: museumId ?? "",
    museumTitle: museumTitle ?? "",
    totalAmount: totalAmount ?? 0,
    currency: currency ?? "",
    createdAt: DateTime.tryParse(createdAt ?? "")?.toLocal(),
    paymentId: paymentId,
    checkUrl: checkUrl,
    cardMask: cardMask,
    cardPs: cardPs,
    qr: qr,
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
    tickets: tickets?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
