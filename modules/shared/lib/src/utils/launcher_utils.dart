import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static urlLauncher(String url) async {
    try {
      final uri = Uri.parse(url);


      if (await canLaunchUrl(uri)) {
        launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      debugPrint("Error Launch ${e}");
    }
  }
}
