import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'checkout_detail_dto.g.dart';

@JsonSerializable()
class CheckoutDetailDto {
  final String? key;
  final String? title;
  final String? value;

  CheckoutDetailDto({this.key, this.title, this.value});

  factory CheckoutDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDetailDtoFromJson(json);

  CheckoutDetail toDomain() => CheckoutDetail(
    key: CheckoutDetailKey.values.firstOrNullWhere((e) => e.name == key),
    title: title.orEmpty(),
    value: value.orEmpty(),
  );
}
