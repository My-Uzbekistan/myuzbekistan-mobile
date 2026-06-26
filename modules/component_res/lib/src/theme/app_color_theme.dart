import 'dart:io';

import 'package:component_res/src/typography/custom_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'app_color_extension.dart';

part 'base/colors_model.dart';

part 'dark/dark_colors.dart';

part 'light/light_colors.dart';

mixin AppColorTheme {
  static get darkTheme => DarkColors.darkTheme();

  static get lightTheme => LightColors.lightTheme();
}
ThemeData _buildTheme(
    {required ThemeData themeData,
    required _BaseColors colors,
    required Brightness brightness,
    required SystemUiOverlayStyle systemOverlayStyle}) {
  final defaultTextColor = colors.label.primary;
  final textTheme = TextTheme(
    displayLarge: CustomTypography.H1.copyWith(color: defaultTextColor),
    displayMedium: CustomTypography.H2.copyWith(color: defaultTextColor),
    displaySmall: CustomTypography.H3.copyWith(color: defaultTextColor),
    headlineLarge: CustomTypography.H1.copyWith(color: defaultTextColor),
    headlineMedium: CustomTypography.H2.copyWith(color: defaultTextColor),
    headlineSmall: CustomTypography.H3.copyWith(color: defaultTextColor),
    bodyLarge: CustomTypography.bodyLg.copyWith(color: defaultTextColor),
    bodyMedium: CustomTypography.bodyMd.copyWith(color: defaultTextColor),
    bodySmall: CustomTypography.bodySm.copyWith(color: defaultTextColor),
    titleLarge: CustomTypography.labelLg.copyWith(color: defaultTextColor),
    titleMedium: CustomTypography.labelMd.copyWith(color: defaultTextColor),
    titleSmall: CustomTypography.labelSm.copyWith(color: defaultTextColor),
    labelLarge: CustomTypography.labelLg.copyWith(color: defaultTextColor),
    labelMedium: CustomTypography.labelMd.copyWith(color: defaultTextColor),
    labelSmall: CustomTypography.labelSm.copyWith(color: defaultTextColor),
  );
  final scheme = ColorScheme.fromSeed(
    seedColor: colors.brandSeaBlue,
    brightness: brightness,
  ).copyWith(
    primary: colors.brandSeaBlue,
    onPrimary: colors.label.oposite,
    secondary: colors.brandSeaBlue,
    onSecondary: colors.label.oposite,
    surface: colors.background.elevation1,
    onSurface: defaultTextColor,
    error: colors.colors.red,
    onError: colors.label.oposite,
  );
  return themeData.copyWith(
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: colors.background.base,
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: colors.background.elevation1),
      dialogTheme: DialogThemeData(
          backgroundColor: colors.background.elevation1Alt,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
      appBarTheme: themeData.appBarTheme.copyWith(
          surfaceTintColor: Colors.transparent,
          iconTheme: IconThemeData(color: colors.label.primary),
          systemOverlayStyle: systemOverlayStyle.copyWith(
              systemNavigationBarColor: Colors.transparent,
              systemNavigationBarContrastEnforced: false,
              systemNavigationBarIconBrightness: brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light),
          backgroundColor: colors.background.background,
          foregroundColor: colors.label.primary,
          titleTextStyle: textTheme.titleLarge),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: colors.brandSeaBlue,
          unselectedItemColor: colors.label.secondary,
          backgroundColor: colors.background.elevation1Alt),
      textTheme: textTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
        ),
      ),
      extensions: [
        AppColorsExtension(
            brand: colors.brandSeaBlue,
            brandFlamingo: colors.brandFlamingo,
            textIconColor: colors.label,
            background: colors.background,
            fill: colors.fill,
            stroke: colors.stroke,
            static: colors.static,
            colors: colors.colors,
            nonOpaque: colors.nonOpaque,
            service: colors.service,
            rippleColor: colors.ripple)
      ]);
}
