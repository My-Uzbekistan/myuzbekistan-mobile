import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final _package = "component_res";

extension AssetsExtension on String {
  bool get isAssetPath => RegExp(r'^assets/.*\.(png|jpg|jpeg|gif|svg)$')
      .hasMatch(this); // assets/ bilan boshlanishi kerak

  Widget toImage({double? width, double? height, BoxFit fit = BoxFit.none}) {
    if (!isAssetPath) {
      throw ArgumentError('Bu string asset yo\'li emas!');
    }
    return Image.asset(
      this,
      width: width,
      height: height,
      fit: fit,
      package: _package,
    );
  }

  Widget toSvgImage(
      {double? width,
      double? height,
      BoxFit fit = BoxFit.none,
      ColorFilter? colorFilter}) {
    if (!isAssetPath) {
      throw ArgumentError('Bu string asset yo\'li emas!');
    }
    return SvgPicture.asset(
      this,
      width: width,
      height: height,
      fit: fit,
      package: _package,
      colorFilter: colorFilter,
    );
  }
}
