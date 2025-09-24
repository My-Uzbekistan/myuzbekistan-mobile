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

  void pushAuthPage() {
    _context.pushType(
      AppNavPath.more.authPage,
      queryParameters: {"slideAlign": "vertical"},
    );
  }

  void pushEmergencyContactsPage() {
    _context.pushType(AppNavPath.more.emergencyContacts);
  }

  void pushCreatePinCodePage() {
    _context.pushType(
      AppNavPath.more.pinCodePage,
      queryParameters: {"changePin": "false"},
    );
  }

  void pushChangePinCodePage() {
    _context.pushType(
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
        "title": title??"",
        "actionUrl": actionUrl,
        "authRequired": authRequired.toString(),
      },
    );
  }

  void pushPdfViewPage({String? title, String? pdfUrl}) {
    _context.pushType(
      AppNavPath.more.pdfPreViewPage,
      queryParameters: {"title": title, "pdfUrl": pdfUrl},
    );
  }
}
