
import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class ViewTypeConvertor implements JsonConverter<ViewType, int?> {
  const ViewTypeConvertor();

  @override
  ViewType fromJson(int? json) {
    if (json == null) return ViewType.places;
    return ViewType.getType(json);
  }

  @override
  int? toJson(ViewType object) => 0;
}

class HexColorConverter implements JsonConverter<Color, String> {
  const HexColorConverter();

  @override
  Color fromJson(String json) {
    String hex = json.replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    return Color(int.parse(hex, radix: 16));
  }

  @override
  String toJson(Color object) {
    return '#${object.value.toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }
}
