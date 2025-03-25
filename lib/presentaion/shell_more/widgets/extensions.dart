import 'package:component_res/component_res.dart';
import 'package:core/core.dart';

extension CurrencyExtensionArray on List<Currency> {
  List<String> getFlags() {
    return map((e) => e.getFlag()).toList();
  }

  List<Currency> filterCurrencies(
      {List allowCcy = const [
        "USD",
        "EUR",
        "RUB",
        "CNY",
        "TRY",
        "KZT",
        "KRW"
      ]}) {
    return where((e) => allowCcy.contains(e.ccy)).toList();
  }
}

extension CurrencyExtension on Currency {
  String getFlag() {
    return switch (ccy) {
      "USD" => Assets.flagsUs, //"🇺🇸",
      "EUR" => Assets.flagsEu, // "🇪🇺",
      "RUB" => Assets.flagsRu, //"🇷🇺",
      "CNY" => Assets.flagsCn, // "🇨🇳",
      "TRY" => Assets.flagsTr, // "🇹🇷",
      "KZT" => Assets.flagsKz, //"🇰🇿",
      "KRW" => Assets.flagsKr, // "🇰🇷",
      _ => ""
    };
  }
}
