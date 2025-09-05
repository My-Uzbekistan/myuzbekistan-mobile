part of '../navigation_paths.dart';

class _FeatureMoreNavPath {
  const _FeatureMoreNavPath();

  AppNavPath get moreHome =>
      _NavPathImpl(name: 'feature_more_home', path: '/shellMore');

  // AppNavPath get profilePage => _NavPathImpl(
  //   name: 'feature_more_profile_page',
  //   path: '/feature/more/profile',
  // );

  AppNavPath get selectLangPage => _NavPathImpl(
    name: 'feature_more_select_lang_page',
    path: '/feature/selectLang',
  );

  AppNavPath get emergencyContacts => _NavPathImpl(
    name: 'feature_more_emergency_contacts',
    path: '/emergencyContacts',
  );

  AppNavPath get webViewPage =>
      _NavPathImpl(name: 'feature_more_web_view_page', path: '/webViewPage');

  AppNavPath get pdfPreViewPage => _NavPathImpl(
    name: 'feature_more_pdf_pre_view_page',
    path: '/pdfPreViewPage',
  );

  AppNavPath get changeLang =>
      _NavPathImpl(name: "feature_more_change_lang", path: "/changeLang");

  AppNavPath get changeTheme =>
      _NavPathImpl(name: "feature_more_change_theme", path: "/changeTheme");
  AppNavPath get aboutApp =>
      _NavPathImpl(name: "feature_more_about_app", path: "/aboutApp");
  AppNavPath get aboutUsInfoPage =>
      _NavPathImpl(name: "feature_more_about_us_info_page", path: "/aboutUsInfoPage");

  AppNavPath get authPage =>
      _NavPathImpl(name: "feature_more_auth_page", path: "/authPage");

  AppNavPath get pinCodePage =>
      _NavPathImpl(name: "feature_more_pin_code_page", path: "/pinCodePage");
  AppNavPath get checkPin =>
      _NavPathImpl(name: "feature_more_check_pin", path: "/checkPin");

}
