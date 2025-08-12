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
// systemOverlayStyle: (brightness == Brightness.light
// ? SystemUiOverlayStyle.dark
//     : SystemUiOverlayStyle.light).copyWith(
// systemNavigationBarContrastEnforced: false,
// statusBarColor: Colors.transparent,
// systemNavigationBarColor: colors.background.background,
// ),
ThemeData _buildTheme(
    {required ThemeData themeData,
    required _BaseColors colors,
    required Brightness brightness,
    required SystemUiOverlayStyle systemOverlayStyle}) {
  final defaultTextColor = colors.label.primary;
  return themeData.copyWith(
      brightness: brightness,

      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
          .copyWith(onPrimary: defaultTextColor, onSurface: defaultTextColor),
      scaffoldBackgroundColor: colors.background.base,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.background.elevation1
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: colors.background.elevation1Alt,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: colors.label.primary),
          systemOverlayStyle: systemOverlayStyle.copyWith(
            systemNavigationBarColor: colors.background.elevation1Alt,
            systemNavigationBarContrastEnforced: true,
          ),

          // systemOverlayStyle:
          // SystemUiOverlayStyle(
          //   statusBarColor: Colors.transparent,
          //     systemNavigationBarContrastEnforced: false,
          //     systemNavigationBarColor: colors.colors.green,
          //     systemNavigationBarIconBrightness: brightness == Brightness.light
          //         ? Brightness.dark
          //         : Brightness.light,
          //     statusBarIconBrightness: brightness
          //         == Brightness.light
          //         ? Brightness.dark
          //         : Brightness.light
          // ),
          backgroundColor: colors.background.background,
          foregroundColor: colors.background.background,
          titleTextStyle:
              CustomTypography.labelLg.copyWith(color: defaultTextColor)),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colors.brandPrimary,
        unselectedItemColor: colors.label.secondary,
        backgroundColor: colors.background.elevation1Alt
      ),
      textTheme: TextTheme(
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
      ),
      extensions: [
        _AppColorsExtension(
            brand: colors.brandPrimary,
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
