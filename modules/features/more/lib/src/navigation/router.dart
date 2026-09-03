import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/auth/auth_phone/auth_phone_page.dart';
import 'package:more/src/pages/auth/auth_phone/bloc/auth_phone_bloc.dart';
import 'package:more/src/pages/pin/check_pin/bloc/check_pin_bloc.dart';
import 'package:more/src/pages/pin/pin_code_bloc/pincode_bloc.dart';
import 'package:more/src/pages/pin/pincode_page.dart';
import 'package:more/src/pages/profile_page/bloc/profile_bloc.dart';
import 'package:more/src/pages/select_lang_page/SelectLangPage.dart';
import 'package:more/src/pages/shell_more/pages/about_info_page.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../pages/about_app/about_app.dart';
import '../pages/edit_profile/edit_profile_page.dart';
import '../pages/devices/bloc/devices_bloc.dart';
import '../pages/devices/devices_page.dart';
import '../pages/security/security_page.dart';
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
        final securityStorage = getIt<SecurityStorage>();
        final url=state.uri.queryParameters["actionUrl"];
        final authRequire= state.uri.queryParameters["authRequired"] == "true";
        var uri = Uri.parse(url??"");
        if(authRequire) {
          uri = uri.replace(
            queryParameters: {
              ...uri.queryParameters,
              "token": securityStorage.getAccessToken(),
            },
          );
        }
        return buildSlideTransitionPage(
          child: WebViewPage(
            title: state.uri.queryParameters["title"],
            actionUrl: uri.toString(),
            authRequired: state.uri.queryParameters["authRequired"] == "true",

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
      path: AppNavPath.more.authPhonePage.path,
      name: AppNavPath.more.authPhonePage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<AuthPhoneBloc>(),
          child: AuthPhonePage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.more.authPage.path,
      name: AppNavPath.more.authPage.name,
      pageBuilder: (context, state) {
        final slideAlign = state.uri.queryParameters["slideAlign"];
        final child = BlocProvider(
          create: (context) => getIt<AuthBlock>(),
          child: AuthPage(),
        );

        // Til tanlash / birinchi ochilish oqimida (slideAlign yo'q) — butun
        // sahifani surmasdan fade qilamiz. Fon rasmi ikkala ekranda bir xil
        // bo'lgani uchun fade ko'rinmaydi, faqat kontent silliq almashadi.
        if (slideAlign == null) {
          return CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: const Duration(milliseconds: 400),
            reverseTransitionDuration: const Duration(milliseconds: 300),
            child: child,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                alwaysIncludeSemantics: false,
                child: child,
              );
            },
          );
        }

        return buildSlideTransitionPage(
          child: child,
          context: context,
          state: state,
          slideAlign:
              slideAlign == "vertical"
                  ? SlideAlign.vertical
                  : SlideAlign.horizontal,
        );
      },
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
          (context, state) => ModalPage(
            child: ChangeLocalePage(),
            showDragHandle: false,
            useSafeArea: false,
            backgroundColor: Color(0x00000000),
          ),
    ),

    GoRoute(
      path: AppNavPath.more.changeTheme.path,
      name: AppNavPath.more.changeTheme.name,
      pageBuilder:
          (context, state) => ModalPage(
            child: ChangeThemePage(),
            showDragHandle: false,
            useSafeArea: false,
            backgroundColor: Color(0x00000000),
          ),
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
      path: AppNavPath.more.editProfile.path,
      name: AppNavPath.more.editProfile.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create:
                  (ctx) =>
                      getIt<ProfileBloc>()..add(ProfileBlocEvent.initEvent()),
              child: const EditProfilePage(),
            ),
            context: context,
            state: state,
          ),
    ),
    GoRoute(
      path: AppNavPath.more.securityPage.path,
      name: AppNavPath.more.securityPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: const SecurityPage(),
            context: context,
            state: state,
          ),
    ),
    GoRoute(
      path: AppNavPath.more.devicesPage.path,
      name: AppNavPath.more.devicesPage.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(
              create:
                  (ctx) => getIt<DevicesBloc>()..add(DevicesEvent.fetch()),
              child: const DevicesPage(),
            ),
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
