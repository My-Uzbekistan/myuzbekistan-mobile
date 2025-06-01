
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

class ViewTypeConvertor implements JsonConverter<ViewType, int?> {
  const ViewTypeConvertor();

  @override
  ViewType fromJson(int? json) {
    debugPrint("ViewTypeDataConvertor ${json}");
    if (json == null) return ViewType.places;
    return ViewType.getType(json);
  }

  @override
  int? toJson(ViewType object) => 0;
}
