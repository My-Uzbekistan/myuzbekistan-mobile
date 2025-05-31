import 'package:flutter/material.dart';

mixin CustomTypography {

  static double _letterSpacing(double percent,double fontSize){
    return (percent/100)*fontSize;
  }
  static final TextStyle _defaultFont = TextStyle(fontFamily: "SfPro",package: "component_res");
  static TextStyle H1 = _defaultFont.copyWith(
      fontSize: 30, fontWeight: FontWeight.w600, height: 36 / 30,letterSpacing:_letterSpacing(0.4, 30));
  static final TextStyle H2 = _defaultFont.copyWith(
      fontSize: 22, fontWeight: FontWeight.w600, height: 26 / 22,
  letterSpacing:_letterSpacing(-0.26, 22)
  );

  //height 20
  static TextStyle H3 = _defaultFont.copyWith(
      fontSize: 20, fontWeight: FontWeight.w600, height: 24 / 20,letterSpacing: _letterSpacing(-0.45, 20));

  //height 20
  static TextStyle labelLg = _defaultFont.copyWith(
      fontSize: 17, fontWeight: FontWeight.w500, height: 24 / 17,letterSpacing: _letterSpacing(-0.43, 17));

  //height 20
  static TextStyle labelMd = _defaultFont.copyWith(
      fontSize: 15, fontWeight: FontWeight.w500, height: 20 / 15,
      letterSpacing: _letterSpacing(-0.23, 25)
  );
  static TextStyle labelSm = _defaultFont.copyWith(
      fontSize: 13, fontWeight: FontWeight.w500, height: 18 / 13,
      letterSpacing: _letterSpacing(-0.08, 13)
  );

  static TextStyle bodyLg = _defaultFont.copyWith(
      fontSize: 17, fontWeight: FontWeight.w400, height: 24 / 17,
      letterSpacing: _letterSpacing(-0.43, 17)
  );
  static TextStyle bodyMd = _defaultFont.copyWith(
      fontSize: 15, fontWeight: FontWeight.w400, height: 20 / 15,
      letterSpacing: _letterSpacing(-0.23, 15)
  );
  static TextStyle bodySm = _defaultFont.copyWith(
      fontSize: 13, fontWeight: FontWeight.w400, height: 18 / 13,
      letterSpacing: _letterSpacing(-0.08, 13)
  );
  static TextStyle bodyXsm = _defaultFont.copyWith(
      fontSize: 12, fontWeight: FontWeight.w400, height: 16 / 12,
      letterSpacing: _letterSpacing(0, 12)
  );
  static TextStyle bodyXXsm = _defaultFont.copyWith(
      fontSize: 11, fontWeight: FontWeight.w400, height: 14 / 11,
      letterSpacing: _letterSpacing(0.06, 11)
  );
}
