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
}
