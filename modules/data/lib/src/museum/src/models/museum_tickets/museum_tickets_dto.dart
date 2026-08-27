import 'package:data/src/museum/src/models/museum_order/museum_order_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_tickets_dto.g.dart';

@JsonSerializable()
class MuseumTicketsDto {
  final int? activeCount;
  final int? usedCount;
  final int? expiredCount;
  final List<MuseumOrderDto>? items;

  MuseumTicketsDto({
    this.activeCount,
    this.usedCount,
    this.expiredCount,
    this.items,
  });

  factory MuseumTicketsDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumTicketsDtoFromJson(json);

  MuseumTickets toDomain() => MuseumTickets(
    activeCount: activeCount ?? 0,
    usedCount: usedCount ?? 0,
    expiredCount: expiredCount ?? 0,
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
