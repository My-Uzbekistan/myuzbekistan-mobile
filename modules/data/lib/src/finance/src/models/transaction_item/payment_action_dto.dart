import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'payment_action_dto.g.dart';

@JsonSerializable()
class PaymentActionDto {
  final String key;
  final String title;
  final int id;

  PaymentActionDto({required this.key, required this.title, required this.id});

  factory PaymentActionDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentActionDtoFromJson(json);

  PaymentAction toDomain() => PaymentAction(
    key: PaymentActionKey.values.firstOrNullWhere((e) => e.name == key),
    title: title,
    id: id,
  );
}
