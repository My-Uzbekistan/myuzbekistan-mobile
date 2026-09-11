import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class MapPanRecognizer extends OneSequenceGestureRecognizer {
  MapPanRecognizer({this.onPanStart, this.onPanEnd});

  final VoidCallback? onPanStart;
  final VoidCallback? onPanEnd;

  @override
  String get debugDescription => "map_pan";

  @override
  void didStopTrackingLastPointer(int pointer) {}

  @override
  void handleEvent(PointerEvent event) {
    if (event is PointerUpEvent || event is PointerCancelEvent) {
      onPanEnd?.call();
      return;
    }
    onPanStart?.call();
  }
}
