import 'contract_good_spec.dart';

/// Shartnoma "Tovarlar" bo'limidagi bitta tovar.
class ContractGood {
  final String? name;
  final double? startingPricePerUnit;
  final double? totalPrice;
  final double? quantity;
  final ContractGoodSpec? spec;

  const ContractGood({
    this.name,
    this.startingPricePerUnit,
    this.totalPrice,
    this.quantity,
    this.spec,
  });
}
