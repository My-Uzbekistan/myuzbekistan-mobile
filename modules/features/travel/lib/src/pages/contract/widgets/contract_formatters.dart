import 'package:shared/shared.dart';

/// Shartnoma detalida qiymatlarni ko'rsatish uchun formatlash yordamchilari.

/// "26 071 302 UZS" ko'rinishida. `null` bo'lsa "—".
String amountText(double? value, {String currency = "UZS"}) {
  if (value == null) return "—";
  final formatted = value.amountFormatted(withRemain: true);
  if (formatted.isEmpty) return "—";
  return "$formatted $currency";
}

/// Miqdor: 1.0 -> "1", 1.5 -> "1.5". `null` bo'lsa "—".
String qtyText(double? value) {
  if (value == null) return "—";
  return value % 1 == 0 ? value.toInt().toString() : value.toString();
}

/// "dd/MM/yyyy". `null` bo'lsa "—".
String dateText(DateTime? date) =>
    date == null ? "—" : date.format(format: "dd/MM/yyyy");

/// "dd/MM/yyyy HH:mm". `null` bo'lsa "—".
String dateTimeText(DateTime? date) =>
    date == null ? "—" : date.format(format: "dd/MM/yyyy HH:mm");
