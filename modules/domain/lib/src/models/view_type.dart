import 'package:flutter/cupertino.dart';

enum ViewType {
  places(0),
  profile(1),
  rent(2);

  final int typeId;

  const ViewType(this.typeId);

  static  ViewType getType(int? typeId) {
    debugPrint("ViewTypeData ${typeId}");
    if (typeId == null) return ViewType.places;
    return ViewType.values.firstWhere((element) => element.typeId == typeId,
        orElse: () => ViewType.places);
  }
}