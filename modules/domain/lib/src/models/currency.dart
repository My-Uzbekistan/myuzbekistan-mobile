
import 'package:shared/shared.dart';

class Currency {
  final int? id;
  final String? ccy;
  final String? rate;

  Currency({this.id, this.ccy, this.rate});

  String rateFormatted() {
    try {
      return double.parse(rate!).floor().amountFormatted();
    } catch (e) {
      return "";
    }
  }
}
