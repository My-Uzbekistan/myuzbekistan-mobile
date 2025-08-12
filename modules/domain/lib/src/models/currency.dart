import 'package:shared/shared.dart';

class Currency {
  final int? id;
  final String? ccy;
  final String? rate;

  Currency({this.id, this.ccy, this.rate});

  String rateFormatted() {
    try {
      return double.parse(rate!).amountFormatted();
    } catch (e) {
      return "";
    }
  }

  double rateToDouble() {
    try {
      return double.parse(rate!);
    } catch (e) {
      return 0;
    }
  }

  bool get isUsd => ccy?.toLowerCase() == "USD".toLowerCase();
}

extension CurrencyExtensionArray on List<Currency> {
  List<Currency> filterCurrencies({
    List allowCcy = const ["USD", "TRY", "KZT", "RUB", "EUR", "CNY", "KRW"],
  }) {
    return where((e) => allowCcy.contains(e.ccy)).toList()..sort(
      (a, b) => allowCcy.indexOf(a.ccy).compareTo(allowCcy.indexOf(b.ccy)),
    );
  }
}
