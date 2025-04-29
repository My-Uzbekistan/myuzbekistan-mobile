part of 'router.dart';

enum AppRoutePath {
  // home(path: "/", name: "home"),
  splash(path: "/splashScreen", name: "splashScreen"),
  shellHome(path: "/", name: "shellHome"),
  shellMap(path: "/shellMap", name: "shellMap"),
  shellPayments(path: "/shellPayments", name: "shellPayments"),

  //Pages
  authPage(path: "/authPage", name: "authPage"),
  profilePage(path: "/profilePage", name: "profilePage"),
  contentByCategory(path: "/contentByCategory", name: "contentByCategory"),
  detail(path: "/detail", name: "detail"),
  changeLang(path: "/changeLang", name: "changeLang"),
  changeTheme(path: "/changeTheme", name: "changeTheme"),
  selectRegionPage(path: "/selectRegionPage", name: "selectRegionPage"),
  currenciesPage(path: "/currenciesPage", name: "currenciesPage"),
  emergencyContacts(path: "/emergencyContacts", name: "emergencyContacts"),
  webViewPage(path: "/webViewPage", name: "webViewPage"),
  pdfPreViewPage(path: "/pdfPreViewPage", name: "pdfPreViewPage"),
  imagePreviewPage(path: "imagePreviewPage", name: "imagePreviewPage");

  final String path;
  final String name;

  // Constructor
  const AppRoutePath({required this.path, required this.name});
}
