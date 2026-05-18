import 'dart:ui';

import 'package:flutter/cupertino.dart';

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
  String phoneFormat( {String prefix = "+998"}) {
    String input =length>=9? padRight(9) : this;
    // final input=replaceFirst(prefix, "");
    if (input.length <= 2) return '$prefix $input';


    StringBuffer output = StringBuffer();

    for (int i = 0; i < input.length; i++) {
      output.write(input[i]);

      if (i != input.length - 1) {
        if (i == 1) {
          output.write(' '); // Space after the second character
        } else if (i > 3 && i % 2 == 0) {
          output.write(' '); // Space after every second character from index 4
        }
      }
    }

    return '$prefix $output';
  }
}
