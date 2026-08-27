import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'city_ticket_dto.dart';

part 'city_tickets_dto.g.dart';

@JsonSerializable()
class CityTicketsDto {
  final String? title;
  @JsonKey(defaultValue: [])
  final List<CityTicketDto> items;

  CityTicketsDto({this.title, this.items = const []});

  factory CityTicketsDto.fromJson(Map<String, dynamic> json) =>
      _$CityTicketsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityTicketsDtoToJson(this);

  CityTickets toDomain() => CityTickets(
        title: title ?? "",
        items: items.map((e) => e.toDomain()).toList(),
      );
}
