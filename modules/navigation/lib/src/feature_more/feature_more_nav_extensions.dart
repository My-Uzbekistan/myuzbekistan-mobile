part of '../navigation_paths.dart';

class FeatureMoreNavExtension {
  final BuildContext _context;

  FeatureMoreNavExtension(BuildContext context) : _context = context;

  //Extra is ProfileBloc
  void pushProfilePage({Object? extra}) {
    _context.pushType(AppNavPath.more.profilePage, extra: extra);
  }

  void pushCurrencies(List<Object> currencies) {
    _context.pushType(AppNavPath.more.currenciesPage, extra: currencies);
  }

  void pushChangeLanguagePage() {
    _context.pushType(AppNavPath.more.changeLang);
  }

  void pushChangeThemePage() {
    _context.pushType(AppNavPath.more.changeTheme);
  }

  void pushAuthPage() {
    _context.pushType(AppNavPath.more.authPage);
  }

  void pushEmergencyContactsPage() {
    _context.pushType(AppNavPath.more.emergencyContacts);
  }

  void pushWebViewPage({required String? title, required String actionUrl}) {
    _context.pushType(
      AppNavPath.more.webViewPage,
      queryParameters: {"title": title, "actionUrl": actionUrl},
    );
  }

  void pushPdfViewPage({String? title, String? pdfUrl}) {
    _context. pushType(AppNavPath.more.pdfPreViewPage, queryParameters: {
      "title": title,
      "pdfUrl": pdfUrl,
    });
  }

}
