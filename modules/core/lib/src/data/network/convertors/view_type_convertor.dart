import 'package:core/src/shared/view_type.dart';
import 'package:json_annotation/json_annotation.dart';

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
