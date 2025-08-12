import 'dart:ui';

extension StringExtension on String {
  Color parseColor() {
    var hex = replaceAll("#", "");
    if (hex.length == 6) {
      hex = "FF$hex"; // Opacity qo‘shamiz (100%)
    }
    return Color(int.parse("0x$hex"));
  }

  String takeLast(int count) {
    if (length <= count) return this;
    return substring(length - count);
  }
}
