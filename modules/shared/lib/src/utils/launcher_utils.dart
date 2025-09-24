import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static urlLauncher(
    String url, {
    LaunchMode mode = LaunchMode.inAppWebView,
  }) async {
    try {
      var uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        if (uri.scheme == "tel") {
          final number = uri.path.replaceAll(RegExp(r'\D'), '');
          uri = Uri.parse("tel:+$number");
        }
        launchUrl(
          uri,
          mode: mode,
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true,
          ),
        );
      } else {
        debugPrint("dont launch ");
      }
    } catch (e) {
      debugPrint("Error Launch ${e}");
    }
  }
}
