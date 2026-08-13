import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Pastki navigatsiya bar uchun umumiy dizayn konstantalari.
///
/// Rang/o'lcham/animatsiya qiymatlarini bitta joyda saqlaymiz — iOS ham,
/// Android ham shu yerdan oladi (sehrli raqamlar tarqab ketmasin).
class NavBarStyle {
  const NavBarStyle._();

  /// Asosiy oq rang — glass va pill (kapsula) uchun asos.
  static const Color white = Color(0xFFFFFFFF);

  /// Kontent tepasidan bar ostigacha yumshoq oqarish (fade) — Stack orqa foni.
  static const LinearGradient fadeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0x00FFFFFF), // 0%
      Color(0x14FFFFFF), // 8%
      Color(0x47FFFFFF), // 28%
      Color(0x5CFFFFFF), // 36%
      Color(0x85FFFFFF), // 52%
    ],
    stops: [0.0, 0.1534, 0.35, 0.6, 1.0],
  );

  /// Fade overlay balandligi.
  static const double fadeHeight = 122;

  static const double barHorizontalPadding = 16;
  static const double barBottomPadding = 12;
  static const double barHeight = 60;
  static const double barRadius = 30;
  static const double barContentPadding = 4;
  static const double barBlur = 8;

  static const double tabRadius = 26;
  static const double iconSize = 24;
  static const double iconLabelSpacing = 2;

  static final Color barFill = white.withValues(alpha: 0.8);
  static final Color tabFill = white.withValues(alpha: 0.6);
  static final Color tabFillTransparent = white.withValues(alpha: 0);

  static const BoxShadow barShadow = BoxShadow(
    color: Color(0x1F001024),
    blurRadius: 22,
  );

  static const Color tabShadowColor = Color(0xFF001024);
  static const double tabShadowOpacity = 0.1;
  static const double tabShadowBlur = 34;
  static const Offset tabShadowOffset = Offset(0, 6);

  static final TextStyle labelStyle = CustomTypography.bodyXXsm.copyWith(
    fontSize: 10,
    height: 12 / 10,
    letterSpacing: -0.24,
  );
}
