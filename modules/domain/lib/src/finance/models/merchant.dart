


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


  String get distanceString {
    if (distance == null || distance == 0.0) return '';
    return distance.toString();
  }

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


