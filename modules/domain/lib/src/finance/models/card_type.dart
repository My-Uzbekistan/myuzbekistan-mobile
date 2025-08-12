class CardType {
  int? prefix;
  String? bankName;
  CreditCardType cardType;
  String? cardBrand;
  bool? isExternal;

  CardType({
    this.prefix,
    this.bankName,
    required String? type,
    this.cardBrand,
    this.isExternal,
  }) : cardType = CreditCardType.values.firstWhere(
         (e) => e.name.toLowerCase() == type?.toLowerCase(),
         orElse: () => CreditCardType.unknown,
       );

  bool get boolHasCvv =>
      [CreditCardType.visa, CreditCardType.MasterCard].contains(cardType);
}

enum CreditCardType { unionPay, visa, humo, uzcard, MasterCard, unknown }
