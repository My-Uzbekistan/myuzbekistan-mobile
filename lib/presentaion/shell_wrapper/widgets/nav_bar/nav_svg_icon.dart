import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Navigatsiya ikonlari uchun yagona SVG builder.
///
/// Rang [BlendMode.srcIn] bilan bo'yaladi, o'lcham default `24`. iOS (glass) ham,
/// Android (telegram) ham ikonni shu funksiya orqali chizadi — bir joyda saqlanadi.
Widget navSvgIcon(SvgGenImage asset, Color color, [double size = 24]) =>
    asset.path.toSvgImage(
      height: size,
      width: size,
      fit: BoxFit.contain,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
