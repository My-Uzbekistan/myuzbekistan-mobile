import 'dart:io';

import 'package:core/core.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/auth/auth_page.dart';
import 'package:uzbekistan_travel/presentaion/auth/bloc/auth_bloc.dart';
import 'package:uzbekistan_travel/presentaion/detail/pages/pdf_preview_page.dart';
import 'package:uzbekistan_travel/presentaion/message_container.dart';
import 'package:uzbekistan_travel/presentaion/content_by_category/bloc/contents_by_category_bloc.dart' show ContentByCategoryBloc, ContentByCategoryEvent;
import 'package:uzbekistan_travel/presentaion/content_by_category/content_by_categories_page.dart';
import 'package:uzbekistan_travel/presentaion/detail/detail_bloc/detail_bloc.dart';
import 'package:uzbekistan_travel/presentaion/detail/detail_page.dart';
import 'package:uzbekistan_travel/presentaion/detail/pages/image_preview_page.dart';
import 'package:uzbekistan_travel/presentaion/home/home_bloc/home_bloc.dart';
import 'package:uzbekistan_travel/presentaion/home/page/home_page.dart';
import 'package:uzbekistan_travel/presentaion/home/page/select_region/select_region_page.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/pages/change_locale.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/pages/change_theme_page.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/profile_page.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/pages/currencies_page.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/pages/emergancy_contacts.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/pages/web_view_page.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/shell_more_page.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/shell_wrapper.dart';
import 'package:uzbekistan_travel/presentaion/splash.dart';

part 'home_shell_route.dart';

part 'app_route_path.dart';

part 'modal_page_route.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter routes = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation:
        Platform.isIOS ? AppRoutePath.shellHome.path : AppRoutePath.splash.path,
    routes: [
      GoRoute(
        path: AppRoutePath.splash.path,
        name: AppRoutePath.splash.name,
        builder: (context, state) => SplashScreen(),
      ),
      ..._shellRoute,
      // GoRoute(
      //     path: AppRoutePath.home.path,
      //     name: AppRoutePath.home.name,
      //     builder: (context, state) =>
      //         BlocProvider(
      //           create: (context) =>
      //           getIt<HomeBloc>()
      //             ..add(HomeBlocEvent.initial()),
      //           child: HomePage(),
      //         )),
      GoRoute(
          path: AppRoutePath.contentByCategory.path,
          name: AppRoutePath.contentByCategory.name,
          pageBuilder: (context,state){
            final hasFavorites = state.uri.queryParameters["hasFavorites"];
            final categoryName = hasFavorites != null
                ? context.localizations?.favorites
                : state.uri.queryParameters["categoryName"];
            final int categoryId =
                state.uri.queryParameters["categoryId"]?.toInt() ?? 0;
            return _slideTransition(child: BlocProvider(
              create: (context) => getIt<ContentByCategoryBloc>()
                ..add(hasFavorites != null
                    ? ContentByCategoryEvent.initFavorite()
                    : ContentByCategoryEvent.init(
                  categoryId,
                )),
              child: ContentByCategoryPage(
                categoryName: categoryName ?? "",
              ),
            ), context: context, state: state);
          },
          ),

      GoRoute(
          path: AppRoutePath.detail.path,
          name: AppRoutePath.detail.name,
          pageBuilder: (context, state) {
            return _slideTransition(
                context: context,
                state: state,
                child: BlocProvider(
                  create: (context) => getIt<DetailBloc>()
                    ..add(DetailBlocEvent.initial(
                        contentId:
                            "${state.uri.queryParameters["contentId"]}")),
                  child: DetailPage(),
                ));
          },
          routes: [
            GoRoute(
                path: AppRoutePath.imagePreviewPage.path,
                name: AppRoutePath.imagePreviewPage.name,
                builder: (context, state) {
                  return ImagePreviewPage(
                    images: state.extra as List<String>,
                  );
                }),
          ]),
      GoRoute(
        path: AppRoutePath.profilePage.path,
        name: AppRoutePath.profilePage.name,
        pageBuilder: (context, state) => _slideTransition(
            child: ProfilePage(), context: context, state: state),
      ),

      GoRoute(
          path: AppRoutePath.currenciesPage.path,
          name: AppRoutePath.currenciesPage.name,
          pageBuilder: (context, state) {
            final c = state.extra as List<Currency>;
            return _slideTransition(
                child: CurrenciesPage(
                  currencies: c,
                ),
                context: context,
                state: state);
          }),
      GoRoute(
          path: AppRoutePath.emergencyContacts.path,
          name: AppRoutePath.emergencyContacts.name,
          pageBuilder: (context, state) {
            debugPrint("urlEmergancy ${state.path}");
            return _slideTransition(
                child: EmergencyContactsPage(
                ),
                context: context,
                state: state);
          }),
      GoRoute(
          path: AppRoutePath.webViewPage.path,
          name: AppRoutePath.webViewPage.name,
          pageBuilder: (context, state) {
            return _slideTransition(
                child: WebViewPage(
                  title: state.uri.queryParameters["title"],
                  actionUrl:  state.uri.queryParameters["actionUrl"],
                ),
                context: context,
                state: state);
          }),
      GoRoute(
          path: AppRoutePath.pdfPreViewPage.path,
          name: AppRoutePath.pdfPreViewPage.name,
          pageBuilder: (context, state) {

            return _slideTransition(
                child: PdfPreviewPage(
                  title: state.uri.queryParameters["title"],
                  pdfUrl:  state.uri.queryParameters["pdfUrl"],
                ),
                context: context,
                state: state);
          }),
      GoRoute(
          path: AppRoutePath.authPage.path,
          name: AppRoutePath.authPage.name,
          pageBuilder: (context, state) => ModalPage(
              child: BlocProvider(
                create: (context) => getIt<AuthBlock>(),
                child: AuthPage(),
              ),
              showDragHandle: true)),

      GoRoute(
          path: AppRoutePath.changeLang.path,
          name: AppRoutePath.changeLang.name,
          pageBuilder: (context, state) =>
              ModalPage(child: ChangeLocalePage(), showDragHandle: true)),

      GoRoute(
          path: AppRoutePath.changeTheme.path,
          name: AppRoutePath.changeTheme.name,
          pageBuilder: (context, state) =>
              ModalPage(child: ChangeThemePage(), showDragHandle: true)),

      GoRoute(
          path: AppRoutePath.selectRegionPage.path,
          name: AppRoutePath.selectRegionPage.name,
          pageBuilder: (context, state) {
            final regionId =
                state.uri.queryParameters["selectRegionId"]!.toInt();
            final regions = state.extra as List<Region>;

            return ModalPage(
                child: SelectRegionPage(
                  regions: regions,
                  selectedRegionId: regionId,
                ),
                showDragHandle: true);
          })
    ]);
