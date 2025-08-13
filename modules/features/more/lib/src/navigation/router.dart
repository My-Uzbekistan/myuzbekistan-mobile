import 'package:domain/domain.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/profile_page/bloc/profile_bloc.dart';
import 'package:more/src/pages/select_lang_page/SelectLangPage.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../pages/auth/auth_page.dart';
import '../pages/auth/bloc/auth_bloc.dart';
import '../pages/profile_page/pages/change_locale.dart';
import '../pages/profile_page/pages/change_theme_page.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/shell_more/pages/currencies_page.dart';
import '../pages/shell_more/pages/emergancy_contacts.dart';
import '../pages/shell_more/pages/web_view_page.dart';
import '../pages/shell_more/shell_more_page.dart';

mixin FeatureMoreRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.more.selectLangPage.path,
      name: AppNavPath.more.selectLangPage.name,
      builder: (context, state) => SelectLangPage(),
    ),
    GoRoute(
      path: AppNavPath.more.currenciesPage.path,
      name: AppNavPath.more.currenciesPage.name,
      pageBuilder: (context, state) {
        final c = state.extra as List<Currency>;
        return buildSlideTransitionPage(
          child: CurrenciesPage(currencies: c),
          context: context,
          state: state,
        );
      },
    ),

    GoRoute(
      path: AppNavPath.more.profilePage.path,
      name: AppNavPath.more.profilePage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider.value(
              value: state.extra as ProfileBloc,
              child: ProfilePage(),
            ),
            context: context,
            state: state,
          ),
    ),
    GoRoute(
      path: AppNavPath.more.emergencyContacts.path,
      name: AppNavPath.more.emergencyContacts.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: EmergencyContactsPage(),
          context: context,
          state: state,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.more.webViewPage.path,
      name: AppNavPath.more.webViewPage.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: WebViewPage(
            title: state.uri.queryParameters["title"],
            actionUrl: state.uri.queryParameters["actionUrl"],
          ),
          context: context,
          state: state,
        );
      },
    ),

    GoRoute(
      path: AppNavPath.more.pdfPreViewPage.path,
      name: AppNavPath.more.pdfPreViewPage.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: WebViewPage(
            title: state.uri.queryParameters["title"],
            actionUrl: state.uri.queryParameters["actionUrl"],
          ),
          context: context,
          state: state,
        );
      },
    ),

    GoRoute(
      path: AppNavPath.more.authPage.path,
      name: AppNavPath.more.authPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create: (context) => getIt<AuthBlock>(),
              child: AuthPage(),
            ),
            context: context,
            state: state,
          ),
    ),

    GoRoute(
      path: AppNavPath.more.changeLang.path,
      name: AppNavPath.more.changeLang.name,
      pageBuilder:
          (context, state) =>
              ModalPage(child: ChangeLocalePage(), showDragHandle: true),
    ),

    GoRoute(
      path: AppNavPath.more.changeTheme.path,
      name: AppNavPath.more.changeTheme.name,
      pageBuilder:
          (context, state) =>
              ModalPage(child: ChangeThemePage(), showDragHandle: true),
    ),
  ];

  static final shellMore = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.more.moreHome.path,
        name: AppNavPath.more.moreHome.name,
        builder:
            (context, state) => BlocProvider(
              create:
                  (ctx) =>
                      getIt<ProfileBloc>()..add(ProfileBlocEvent.initEvent()),
              child: const ShellMorePage(),
            ),
      ),
    ],
  );
}
