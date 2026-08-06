/// Shartnoma "Mahsulotlar" bo'limidagi bitta mahsulot.
class ContractProduct {
  final String? name;
  final String? code;
  final double? quantity;
  final double? price;
  final double? totalAmount;
  final double? advance;
  final String? description;

  const ContractProduct({
    this.name,
    this.code,
    this.quantity,
    this.price,
    this.totalAmount,
    this.advance,
    this.description,
  });
}
