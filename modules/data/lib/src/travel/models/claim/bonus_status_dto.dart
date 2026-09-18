import 'package:shared/shared.dart';

part 'bonus_status_dto.g.dart';

@JsonSerializable()
class BonusStatusDto {
  final bool enabled;

  BonusStatusDto({required this.enabled});

  factory BonusStatusDto.fromJson(Map<String, dynamic> json) =>
      _$BonusStatusDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BonusStatusDtoToJson(this);
}
