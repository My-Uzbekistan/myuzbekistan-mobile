import 'dart:ui';

class CardColor {
  final String? name;
  final String colorCode;
  final int id;

  CardColor({this.name, required this.colorCode, required this.id});

  Color color() {
    var hex = colorCode.replaceAll("#", "");
    if (hex.length == 6) {
      hex = "FF$hex"; // Opacity qo‘shamiz (100%)
    }
    return Color(int.parse("0x$hex"));
  }
}
