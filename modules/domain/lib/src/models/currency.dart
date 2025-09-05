import 'package:shared/shared.dart';

class Currency {
  final int? id;
  final String? ccy;
  final String? rate;
  final String? title;

  String get flag =>
      "https://minio.uzdc.uz/myzubekistan/Rounded%20Flags/${kCurrencyRegions[ccy]}.png";

  Currency({this.id, this.ccy, this.title, this.rate});

  String rateFormatted() {
    try {
      return double.parse(rate!).amountFormatted(withRemain: true);
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

  Map<String, String> kCurrencyRegions = {
    'USD': 'united states',
    'KZT': 'kazakhstan',
    'TRY': 'turkiye',
    'RUB': 'russia',
    'EUR': 'european union',
    'CNY': 'china',
    'GBP': 'united kingdom',
    'AED': 'united arab emirates',
    'KGS': 'kyrgyzstan',
    'TJS': 'tajikistan',
    'TMT': 'turkmenistan',
    'JPY': 'japan',
    'KRW': 'south korea',
    'INR': 'india',
    'THB': 'thailand',
    'AUD': 'australia',
    'CAD': 'canada',
    'CHF': 'switzerland',
    'UZS': 'uzbekistan',
  };
}

extension CurrencyExtensionArray on List<Currency> {
  List<Currency> filterCurrencies({
    List allowCcy = const [
      'USD',
      'KZT',
      'TRY',
      'RUB',
      'EUR',
      'CNY',
      'GBP',
      'AED',
      'KGS',
      'TJS',
      'TMT',
      'JPY',
      'KRW',
      'INR',
      'THB',
      'AUD',
      'CAD',
      'CHF',
    ],
  }) {
    return where((e) => allowCcy.contains(e.ccy)).toList()..sort(
      (a, b) => allowCcy.indexOf(a.ccy).compareTo(allowCcy.indexOf(b.ccy)),
    );
  }
}
