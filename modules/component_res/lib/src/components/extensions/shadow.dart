import 'package:flutter/material.dart';

extension WidgetsSh on Widget {
  Widget shadow() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xff001024).withValues(alpha: 0.1),
          blurRadius: 34,
          offset: Offset(0, 6),
        )
      ]),
      child: this,
    );
  }
}
