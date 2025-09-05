import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/pin/check_pin/bloc/check_pin_bloc.dart';
import 'package:more/src/pages/pin/pin_code_bloc/pincode_bloc.dart';
import 'package:more/src/pages/pin/pincode_page.dart';
import 'package:more/src/pages/profile_page/bloc/profile_bloc.dart';
import 'package:more/src/pages/select_lang_page/SelectLangPage.dart';
import 'package:more/src/pages/shell_more/pages/about_info_page.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../pages/about_app/about_app.dart';
import '../pages/auth/auth_page.dart';
import '../pages/auth/bloc/auth_bloc.dart';
import '../pages/pin/check_pin/check_pincode.dart';
import '../pages/profile_page/pages/change_locale.dart';
import '../pages/profile_page/pages/change_theme_page.dart';
import '../pages/shell_more/pages/emergancy_contacts.dart';
import '../pages/shell_more/pages/web_view_page.dart';
import '../pages/shell_more/shell_more_page.dart';

mixin FeatureMoreRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.more.selectLangPage.path,
      name: AppNavPath.more.selectLangPage.name,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: Duration(milliseconds: 200),
            reverseTransitionDuration: Duration(milliseconds: 200),
            child: SelectLangPage(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(
                opacity: animation,
                alwaysIncludeSemantics: false,
                child: child,
              );
            },
          ),
      // builder: (context, state) => SelectLangPage(),
    ),
    // GoRoute(
    //   path: AppNavPath.more.profilePage.path,
    //   name: AppNavPath.more.profilePage.name,
    //   pageBuilder:
    //       (context, state) => buildSlideTransitionPage(
    //         child: BlocProvider.value(
    //           value: state.extra as ProfileBloc,
    //           child: ProfilePage(),
    //         ),
    //         context: context,
    //         state: state,
    //       ),
    // ),
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
      redirect: (context, state) {
        if (state.uri.queryParameters["authRequired"] == "true") {
          final securityStorage = getIt<SecurityStorage>();

          if (securityStorage.getAccessToken() == null) {
            return "${AppNavPath.more.authPage.path}?slideAlign=vertical";
          }
        }

        return null;
      },
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
            slideAlign:
                state.uri.queryParameters["slideAlign"] == "vertical"
                    ? SlideAlign.vertical
                    : SlideAlign.horizontal,
          ),
    ),
    GoRoute(
      path: AppNavPath.more.pinCodePage.path,
      name: AppNavPath.more.pinCodePage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create:
                  (context) =>
                      getIt<PinCodeBloc>()..add(
                        PinCodeEvent.setInitial(
                          isChangePin:
                              state.uri.queryParameters["changePin"] == "true",
                        ),
                      ),
              child: CreatePinCodePage(
                changePin: state.uri.queryParameters["changePin"] == "true",
              ),
            ),
            context: context,
            state: state,
          ),
    ),

    GoRoute(
      path: AppNavPath.more.checkPin.path,
      name: AppNavPath.more.checkPin.name,

      pageBuilder:
          (context, state) => NoTransitionPage(
            child: BlocProvider(
              create: (context) => getIt<CheckPinCodeBloc>(),
              child: CheckPinCodePage(),
            ),
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
    GoRoute(
      path: AppNavPath.more.aboutApp.path,
      name: AppNavPath.more.aboutApp.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: AboutApp(),
            context: context,
            state: state,
          ),
    ),
    GoRoute(
      path: AppNavPath.more.aboutUsInfoPage.path,
      name: AppNavPath.more.aboutUsInfoPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: AboutInfoPage(moreItem: state.extra as MoreItem),
            context: context,
            state: state,
          ),
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
