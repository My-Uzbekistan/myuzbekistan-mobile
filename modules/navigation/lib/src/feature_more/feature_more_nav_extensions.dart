part of '../navigation_paths.dart';

class FeatureMoreNavExtension {
  final BuildContext _context;

  FeatureMoreNavExtension(BuildContext context) : _context = context;

  // //Extra is ProfileBloc
  // void pushProfilePage({Object? extra}) {
  //   _context.pushType(AppNavPath.more.profilePage, extra: extra);
  // }

  void pushChangeLanguagePage() {
    _context.pushType(AppNavPath.more.changeLang);
  }

  void pushChangeThemePage() {
    _context.pushType(AppNavPath.more.changeTheme);
  }

  void pushEditProfilePage() {
    _context.pushType(AppNavPath.more.editProfile);
  }

  void pushSecurityPage() {
    _context.pushType(AppNavPath.more.securityPage);
  }

  Future<T?> pushDevicesPage<T>() {
    return _context.pushType<T>(AppNavPath.more.devicesPage);
  }

  void pushAuthPage() {
    _context.pushType(
      AppNavPath.more.authPage,
      queryParameters: {"slideAlign": "vertical"},
    );
  }

  void pushEmergencyContactsPage() {
    _context.pushType(AppNavPath.more.emergencyContacts);
  }

  Future<T?> pushCreatePinCodePage<T>() {
    return _context.pushType<T>(
      AppNavPath.more.pinCodePage,
      queryParameters: {"changePin": "false"},
    );
  }

  Future<T?> pushChangePinCodePage<T>() {
    return _context.pushType<T>(
      AppNavPath.more.pinCodePage,
      queryParameters: {"changePin": "true"},
    );
  }

  void pushWebViewPage({
    String? title,
    required String actionUrl,
    bool? authRequired = false,
  }) {
    _context.pushType(
      AppNavPath.more.webViewPage,
      queryParameters: {
        "title": title ?? "",
        "actionUrl": actionUrl,
        "authRequired": authRequired.toString(),
      },
    );
  }

  Future<void> openUrl(
    String url, {
    String? title,
    bool authRequired = false,
  }) async {
    final trimmed = url.trim();
    if (trimmed.isEmpty) return;

    final uri = Uri.tryParse(trimmed);
    final isWebPage = uri != null && (uri.scheme == "http" || uri.scheme == "https");
    if (!isWebPage) {
      await LauncherUtils.urlLauncher(
        trimmed,
        mode: LaunchMode.externalApplication,
      );
      return;
    }

    pushWebViewPage(
      title: title,
      actionUrl: trimmed,
      authRequired: authRequired,
    );
  }

  void pushPdfViewPage({String? title, String? pdfUrl}) {
    _context.pushType(
      AppNavPath.more.pdfPreViewPage,
      queryParameters: {"title": title, "pdfUrl": pdfUrl},
    );
  }
}
