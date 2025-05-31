import 'package:intl/intl.dart';

final NumberFormat _decimalFormat = NumberFormat("#,###.00");
final NumberFormat _integerFormat = NumberFormat("#,###");

extension DoubleFormatting on double {
  String amountFormatted({String replace = " "}) {
    if (this == 0) return "";
    return (this % 1 == 0
        ? _integerFormat.format(this)
        : _decimalFormat.format(this))
        .replaceAll(",", replace);
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