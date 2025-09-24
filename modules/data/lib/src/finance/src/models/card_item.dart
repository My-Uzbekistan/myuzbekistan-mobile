// {
// "user_id": 104,
// "expiration_date": "2701",
// "holder_name": null,
// "card_number": null,
// "name": "aloqa",
// "color_code": "#2EA866",
// "status": null,
// "card_status": null,
// "balance": 0,
// "id": 6
// },

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'card_item.g.dart';

@JsonSerializable()
class CardItemDto {
  final int id;
  final String? status;
  @JsonKey(name: "status_message")
  final String? statusMessage;
  @JsonKey(name: "is_external")
  final bool isExternal;
  @JsonKey(name: "card_number")
  final String? cardNumber;
  final String? icon;
  final String? ps;
  final String? expiry;
  final String? image;

  CardItemDto({
    required this.id,
    required this.status,
    required this.statusMessage,
    required this.isExternal,
    required this.cardNumber,
    required this.icon,
    required this.ps,
    this.expiry,
    this.image
  });

  factory CardItemDto.fromJson(Map<String, dynamic> json) =>
      _$CardItemDtoFromJson(json);

  CardItem toDomain() => CardItem(
    id: id,
    status: status,
    statusMessage: statusMessage,
    isExternal: isExternal,
    cardNumber: cardNumber,
    icon: icon,
    ps: ps,
    expiry: expiry,
    image: image
  );
}
