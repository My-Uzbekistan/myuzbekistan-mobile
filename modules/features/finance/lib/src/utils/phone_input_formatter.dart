import 'package:component_res/component_res.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var currentNumber = newValue.text.withOutSpace().take(9);
    var beforeNumber = oldValue.text.withOutSpace().take(9);
    var resultNumber = newValue.text.withOutSpace().take(9);

    var selectionIndex = newValue.selection.base.offset;
    var endSelection = false;

    if (beforeNumber == currentNumber && currentNumber.isNotEmpty) {
      var index = 0;
      for (int i = 0; i < currentNumber.length; i++) {
        if (beforeNumber[i] != currentNumber[i]) {
          index = i;
          break;
        }
      }

      if (index != 0) {
        resultNumber = currentNumber
            .substring(0, index - 1)
            .plus(currentNumber.substring(index));
        selectionIndex = index - 1;
      }
    } else if (beforeNumber.length < currentNumber.length) {
      if (selectionIndex == currentNumber.length) {
        endSelection = true;
      } else if ([3, 7, 10].contains(selectionIndex)) {
        selectionIndex++;
      }
    }

    var text = "";
    int i = 0;
    resultNumber = resultNumber.withOutSpace();
    for (var element in resultNumber.characters) {
      if ([2, 6, 9].contains(i)) {
        text = text.plus(" ");
        i++;
      }
      text = text.plus(element);
      i++;
    }

    resultNumber = text;
    if (endSelection || selectionIndex > resultNumber.length) {
      selectionIndex = resultNumber.length;
    }

    return newValue.copyWith(
      text: resultNumber,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
