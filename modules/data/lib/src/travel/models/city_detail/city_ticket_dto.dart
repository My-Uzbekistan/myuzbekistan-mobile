import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part 'city_ticket_dto.g.dart';

@JsonSerializable()
class CityTicketDto {
  final int transportId;
  @ImageConvertor()
  final String? icon;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? priceUnit;

  CityTicketDto({
    required this.transportId,
    this.icon,
    this.title,
    this.subtitle,
    this.price,
    this.priceUnit,
  });

  factory CityTicketDto.fromJson(Map<String, dynamic> json) =>
      _$CityTicketDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityTicketDtoToJson(this);

  CityTicket toDomain() => CityTicket(
        transportId: transportId,
        icon: icon,
        title: title,
        subtitle: subtitle,
        price: price,
        priceUnit: priceUnit,
      );
}
