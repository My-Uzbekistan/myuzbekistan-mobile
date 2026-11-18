import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part "currency_dto.g.dart";

@JsonSerializable()
class CurrencyDto {
  final int? id;
  final String? ccy;
  final String? rate;
  final String? title;
  final String? date;
  final String? diff;

  const CurrencyDto({
    this.id,
    this.ccy,
    this.rate,
    this.title,
    this.date,
    this.diff,
  });

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDtoToJson(this);

  Currency toDomain() => Currency(
    id: id,
    ccy: ccy,
    rate: rate,
    title: title,
    date: date == null ? null : DateTime.tryParse(date!),
    diff: diff == null ? null : double.tryParse(diff!),
  );
}
