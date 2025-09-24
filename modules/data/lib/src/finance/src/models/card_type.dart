//  {
//     "prefix": 860014,
//      "bankName": "Ipak Yuli Bank",
//      "cardType": "Uzcard",
//     "cardBrand": null
// }

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part "card_type.g.dart";

@JsonSerializable()
class CardTypeDto {
  int? prefix;
  String? bankName;
  String? cardType;
  String? cardBrand;
  bool? isExternal;

  CardTypeDto({this.prefix, this.bankName, this.cardType, this.cardBrand});

  factory CardTypeDto.fromJson(Map<String, dynamic> json) =>
      _$CardTypeDtoFromJson(json);

  CardType toDomain() => CardType(
    prefix: prefix,
    bankName: bankName,
    type: cardType,
    cardBrand: cardBrand,
    isExternal: isExternal,
  );
}
