


class Merchant {
  final int id;
  final String? logo;
  final String? name;
  final String? description;
  final String? address;
  final String? workTime;
  final String? phone;
  final String? type;
  final double? distance;


  Merchant({
    required this.id,
    this.logo,
    this.name,
    this.description,
    this.address,
    this.workTime,
    this.phone,
    this.type,
    this.distance,
  });
}

extension MerchantListExtension on List<Merchant> {
  List<Merchant> sortedByDistance() {
    return [...this]..sort((a, b) {
      final left = a.distance;
      final right = b.distance;
      if (left == null && right == null) return 0;
      if (left == null) return 1;
      if (right == null) return -1;
      return left.compareTo(right);
    });
  }
}

class PaymentHistoryItem {
  final DateTime? date;
  final String? paymentId;
  final double? amount;
  final MerchantItem? merchant;

  const PaymentHistoryItem({
    this.date,
    this.paymentId,
    this.amount,
    this.merchant,
  });
}

class MerchantItem {
  final String? icon;
  final String? name;
  final String? type;

  const MerchantItem({this.icon, this.name, this.type});
}


