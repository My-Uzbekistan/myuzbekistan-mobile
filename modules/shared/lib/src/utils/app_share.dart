import 'package:flutter/widgets.dart';
import 'package:share_plus/share_plus.dart';

class AppShare {
  static Future<bool> link(
    BuildContext context, {
    required String url,
    String? title,
  }) async {
    final subject = (title ?? "").trim();
    try {
      await Share.share(
        subject.isEmpty ? url : "$subject\n$url",
        subject: subject.isEmpty ? null : subject,
        sharePositionOrigin: _originRect(context),
      );
      return true;
    } catch (e) {
      debugPrint("Error Share $e");
      return false;
    }
  }

  static Rect _originRect(BuildContext context) {
    final renderObject = context.findRenderObject();
    if (renderObject is RenderBox && renderObject.hasSize) {
      return renderObject.localToGlobal(Offset.zero) & renderObject.size;
    }
    return const Rect.fromLTWH(0, 0, 1, 1);
  }
}
