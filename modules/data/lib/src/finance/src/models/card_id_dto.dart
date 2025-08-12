import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'card_id_dto.g.dart';

@JsonSerializable()
class CardIdDto {
  int cardId;

  CardIdDto({required this.cardId});

  factory CardIdDto.fromJson(Map<String, dynamic> json) =>
      _$CardIdDtoFromJson(json);

  CardId toDomain() => CardId(cardId: cardId);
}
