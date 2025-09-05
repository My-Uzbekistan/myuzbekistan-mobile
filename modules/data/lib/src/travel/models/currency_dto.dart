import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part "currency_dto.g.dart";

@JsonSerializable()
class CurrencyDto {
  final int? id;
  final String? ccy;
  final String? rate;
  final String? title;

 const CurrencyDto({this.id, this.ccy, this.rate,this.title});

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDtoToJson(this);

  Currency toDomain() => Currency(id: id, ccy: ccy, rate: rate, title: title);
}
