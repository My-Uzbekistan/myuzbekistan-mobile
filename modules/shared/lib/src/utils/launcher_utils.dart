import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static urlLauncher(
    String url, {
    LaunchMode mode = LaunchMode.externalApplication,
  }) async {
    try {
      var uri = Uri.parse(url);

      if (uri.scheme == "tel" || uri.scheme == "sms") {
        uri = _dialUri(url, uri.scheme);
        if (uri.path.isEmpty) return;
      }

      if (await canLaunchUrl(uri)) {
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
      debugPrint("Error Launch $e");
    }
  }

  static Uri _dialUri(String url, String scheme) {
    final raw = url.replaceFirst(RegExp("^$scheme:/*"), "").trim();
    final digits = raw.replaceAll(RegExp(r'\D'), '');
    final plus = raw.startsWith("+") ? "+" : "";

    return Uri(scheme: scheme, path: digits.isEmpty ? "" : "$plus$digits");
  }
}
