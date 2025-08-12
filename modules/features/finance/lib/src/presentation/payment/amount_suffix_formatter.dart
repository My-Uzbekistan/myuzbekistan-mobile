import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shared/shared.dart';
// class SumWithSuffixFormatter extends TextInputFormatter {
//   final NumberFormat _formatter = NumberFormat("#,###");
//   final String suffix;
//
//   SumWithSuffixFormatter({required this.suffix});
//
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue,
//       TextEditingValue newValue,
//       ) {
//     // Matndagi raqamlarni ajratish
//     String clean = newValue.text.replaceAll(RegExp(r'\D'), '');
//     if (clean.isEmpty) {
//       return TextEditingValue(
//       text: '',
//       selection: TextSelection.collapsed(offset: 0),
//     );
//     }
//
//     final number = int.parse(clean);
//     final formatted = _formatter.format(number).replaceAll(",", " ");
//     final result = '$formatted $suffix';
//
//     // Eski kursor pozitsiyasini hisobga olish
//     int newOffset = result.length;
//     if (newOffset > result.length - suffix.length) {
//       newOffset = result.length - suffix.length - 1;
//     }
//
//     return TextEditingValue(
//       text: result,
//       selection: TextSelection.collapsed(
//         offset: newOffset.clamp(0, result.length - suffix.length),
//       ),
//     );
//   }
// }

class AmountWithSuffixFormatter extends TextInputFormatter {
  final String suffix;

  AmountWithSuffixFormatter({required this.suffix});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    String digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');
    String oldDigits = oldValue.text.replaceAll(RegExp(r'\D'), '');
    if(digitsOnly==oldDigits ){
      return oldValue.copyWith(selection: newValue.selection);
    }
    if (digitsOnly.isEmpty|| digitsOnly=="0") {
      return TextEditingValue(
        text: '',
        selection: TextSelection.collapsed(offset: 0),
      );
    }


    final formatted = digitsOnly.toDouble().amountFormatted();
    final finalText = "$formatted$suffix";
    int offsetFromRight = oldValue.text.length - oldValue.selection.end;
    int newOffset = finalText.length - offsetFromRight;
    int maxCursor = formatted.length;
    if (newOffset > maxCursor) newOffset = maxCursor;
    if (newOffset < 0) newOffset = 0;
    return TextEditingValue(
      text: finalText,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}