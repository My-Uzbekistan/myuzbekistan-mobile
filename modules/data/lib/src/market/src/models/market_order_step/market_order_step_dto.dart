import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_step_dto.g.dart';

@JsonSerializable()
class MarketOrderStepDto {
  final String? key;
  final String? title;
  final String? state;

  MarketOrderStepDto({this.key, this.title, this.state});

  factory MarketOrderStepDto.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderStepDtoFromJson(json);

  MarketOrderStep toDomain() => MarketOrderStep(
    key: MarketOrderStepKey.values.firstOrNullWhere((e) => e.name == key),
    title: title ?? "",
    state: MarketOrderStepState.values.firstWhere(
      (e) => e.name == state,
      orElse: () => MarketOrderStepState.pending,
    ),
  );
}
