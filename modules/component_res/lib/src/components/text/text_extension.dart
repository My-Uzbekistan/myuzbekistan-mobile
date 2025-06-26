
import 'package:flutter/material.dart';

import '../../../component_res.dart';

extension TextStyleExtension on Text {
  Text _withStyle(TextStyle? style) {
    return Text(
      data ?? '', // yoki text ?? ''
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      textDirection: textDirection,
      locale: locale,
      strutStyle: strutStyle,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
    );
  }

  Text h1({Color? color, TextDecoration? decoration, Color? decorationColor}) {
    return _withStyle(CustomTypography.H1.copyWith(color: color));
  }

  Text h2({Color? color, TextDecoration? decoration, Color? decorationColor}) {
    return _withStyle(CustomTypography.H2.copyWith(color: color));
  }

  Text h3({Color? color, TextDecoration? decoration, Color? decorationColor}) {
    return _withStyle(CustomTypography.H3.copyWith(color: color));
  }

  Text bodyLg({
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
  }) {
    return _withStyle(CustomTypography.bodyLg.copyWith(color: color));
  }

  Text bodyMd({Color? color}) {
    return _withStyle(CustomTypography.bodyMd.copyWith(color: color));
  }

  Text bodySm({Color? color}) {
    return _withStyle(CustomTypography.bodySm.copyWith(color: color));
  }

  Text labelLg({
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
  }) {
    return _withStyle(CustomTypography.labelLg.copyWith(color: color));
  }

  Text labelMd({Color? color}) {
    return _withStyle(CustomTypography.labelMd.copyWith(color: color));
  }

  Text labelSm({Color? color}) {
    return _withStyle(CustomTypography.labelSm.copyWith(color: color));
  }
  Text withDecoration({TextDecoration? decoration, Color? decorationColor}) {
    return _withStyle(
      style?.copyWith(decoration: decoration, decorationColor: decorationColor),
    );
  }
}
