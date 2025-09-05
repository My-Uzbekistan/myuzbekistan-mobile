import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

final NumberFormat _decimalFormat = NumberFormat("#,###.##","en_US");
final NumberFormat _integerFormat = NumberFormat("#,###","en_US");

extension DoubleFormatting on double {
  String amountFormatted({
    String replace = " ", // default: no-break space
    bool withRemain = false,
  }) {
    if (isNaN || isInfinite) return "";
    String formatted =
        (this % 1 == 0 || !withRemain)
            ? _integerFormat.format(this)
            : _decimalFormat.format((this * 100).truncate() / 100);
    return formatted.replaceAll(",", replace);
  }
}
extension IntFormatting on int {
  String amountFormatted({String replace = " "}) {
    if (this == 0) return "";
    return (this % 1 == 0
            ? _integerFormat.format(this)
            : _decimalFormat.format(this))
        .replaceAll(",", replace);
  }
}
