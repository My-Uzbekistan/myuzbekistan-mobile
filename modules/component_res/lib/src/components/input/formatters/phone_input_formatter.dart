import 'package:flutter/services.dart';

class PhoneInputFormatter extends TextInputFormatter {
  static final _nonDigit = RegExp(r'\D');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var digits = newValue.text.replaceAll(_nonDigit, '');
    final cursor = newValue.selection.baseOffset.clamp(0, newValue.text.length);
    var digitsBeforeCursor =
        newValue.text.substring(0, cursor).replaceAll(_nonDigit, '').length;

    final oldDigits = oldValue.text.replaceAll(_nonDigit, '');
    final removedOnlySpace =
        newValue.text.length == oldValue.text.length - 1 &&
        digits == oldDigits &&
        digitsBeforeCursor > 0;
    if (removedOnlySpace) {
      digits =
          digits.substring(0, digitsBeforeCursor - 1) +
          digits.substring(digitsBeforeCursor);
      digitsBeforeCursor--;
    }

    if (digits.length > 9) digits = digits.substring(0, 9);
    if (digitsBeforeCursor > digits.length) digitsBeforeCursor = digits.length;

    final buffer = StringBuffer();
    var selection = 0;
    for (var i = 0; i < digits.length; i++) {
      if (i == 2 || i == 5 || i == 7) buffer.write(' ');
      buffer.write(digits[i]);
      if (i + 1 == digitsBeforeCursor) selection = buffer.length;
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: selection),
    );
  }
}
