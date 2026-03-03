import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/catalog/bloc/catalog_bloc.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/catalog_investments/bloc/investments_bloc.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';
import 'package:travel/src/pages/catalog_investments/pages/invest_sort_curency.dart';
import 'package:travel/src/pages/catalog_investments/pages/search_page/invest_search_page.dart';
import 'package:travel/src/pages/catalog_investments/sort_cubit/sort_cubit.dart';
import 'package:travel/src/pages/content_by_category/bloc/contents_by_category_bloc.dart';
import 'package:travel/src/pages/detail/detail_page.dart';
import 'package:travel/src/pages/detail/pages/all_facilities.dart';
import 'package:travel/src/pages/detail/pages/read_more.dart';
import 'package:travel/src/pages/detail/review/add_review_page.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart';
import 'package:travel/src/pages/notifications/bloc/notification_bloc.dart';
import 'package:travel/src/pages/notifications/notification_main_page.dart';
import 'package:travel/src/pages/notifications/page/notification_detail.dart';

import '../catalog/catalog.dart';
import '../di/injection.dart';
import '../pages/catalog_investments/CatalogInvestmentsPage.dart';
import '../pages/catalog_investments/pages/sort_main_page.dart';
import '../pages/content_by_category/content_by_categories_page.dart';
import '../pages/detail/detail_bloc/detail_bloc.dart';
import '../pages/detail/pages/image_preview_page.dart';
import '../pages/detail/review/all_reviews_page.dart';
import '../pages/home/page/home_page.dart';
import '../pages/home/page/select_region/select_region_page.dart';

mixin FeatureTravelRouter {
  static final _investNavigatorKey = GlobalKey<NavigatorState>();

  static final routes = [
    GoRoute(
      path: AppNavPath.travel.travelSelectRegion.path,
      name: AppNavPath.travel.travelSelectRegion.name,
      pageBuilder: (context, state) {
        final regionId = state.uri.queryParameters["selectRegionId"]!.toInt();
        final regions = state.extra as List<Region>;

        return ModalSheetPage(
          child: SelectRegionPage(regions: regions, selectedRegionId: regionId),
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelContentByCategory.path,
      name: AppNavPath.travel.travelContentByCategory.name,
      pageBuilder: (context, state) {
        final hasFavorites = state.uri.queryParameters["hasFavorites"];
        final categoryName =
            hasFavorites != null
                ? context.localization.favorites
                : state.uri.queryParameters["categoryName"];
        final int categoryId =
            state.uri.queryParameters["categoryId"]?.toInt() ?? 0;
        return buildSlideTransitionPage(
          child: BlocProvider(
            create:
                (context) =>
                    getIt<ContentByCategoryBloc>()..add(
                      hasFavorites != null
                          ? ContentByCategoryEvent.initFavorite()
                          : ContentByCategoryEvent.init(categoryId),
                    ),
            child: ContentByCategoryPage(categoryName: categoryName ?? ""),
          ),
          context: context,
          state: state,
        );
      },
    ),

    GoRoute(
      path: AppNavPath.travel.travelDetail.path,
      name: AppNavPath.travel.travelDetail.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          context: context,
          state: state,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create:
                    (context) =>
                        getIt<DetailBloc>()..add(
                          DetailBlocEvent.initial(
                            content: state.extra as ContentDetail?,
                            contentId:
                                "${state.uri.queryParameters["contentId"]}",
                          ),
                        ), // DetailPage(),
              ),
              BlocProvider(
                create:
                    (context) =>
                        getIt<ReviewBloc>()..add(
                          ReviewEvent.loadReviewsByContentId(
                            contentId:
                                state.uri.queryParameters["contentId"]!.toInt(),
                          ),
                        ), // DetailPage(),
              ),
            ],
            child: DetailPage(),
          ),
        );
      },
      routes: [
        GoRoute(
          path: AppNavPath.travel.imagePreview.path,
          name: AppNavPath.travel.imagePreview.name,
          builder: (context, state) {
            return ImagePreviewPage(images: state.extra as List<String>);
          },
        ),

        GoRoute(
          path: AppNavPath.travel.detailAllFacilities.path,
          name: AppNavPath.travel.detailAllFacilities.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                context: context,
                state: state,
                child: AllFacilities(items: state.extra as List<Facility>),
              ),
        ),

        GoRoute(
          path: AppNavPath.travel.detailReadMore.path,
          name: AppNavPath.travel.detailReadMore.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                context: context,
                state: state,
                child: ReadMore(
                  title: state.uri.queryParameters["title"].orEmpty(),
                  content: state.uri.queryParameters["content"].orEmpty(),
                ),
              ),
        ),
        GoRoute(
          path: AppNavPath.travel.addReviewPage.path,
          name: AppNavPath.travel.addReviewPage.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                context: context,
                state: state,
                slideAlign: SlideAlign.vertical,
                child: BlocProvider.value(
                  value: state.extra as ReviewBloc,
                  child: AddReviewPage(
                    contentTitle: state.uri.queryParameters["title"].orEmpty(),
                    contentType: state.uri.queryParameters["type"].orEmpty(),
                    rating: state.uri.queryParameters["rating"]?.toIntOrNull(),
                  ),
                ),
              ),
        ),
        GoRoute(
          path: AppNavPath.travel.allReviews.path,
          name: AppNavPath.travel.allReviews.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                context: context,
                state: state,
                child: BlocProvider.value(
                  value: state.extra as ReviewBloc,
                  child: AllReviewsPage(),
                ),
              ),
        ),
      ],
    ),
    GoRoute(
      path: AppNavPath.travel.notifications.path,
      name: AppNavPath.travel.notifications.name,

      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            context: context,
            state: state,
            child: BlocProvider(
              create:
                  (context) =>
                      getIt<NotificationBloc>()..add(
                        NotificationEvent.loadNotifications(
                          initialNotId:
                              state.uri.queryParameters["notificationId"]
                                  ?.toIntOrNull(),
                        ),
                      ),
              child: NotificationMainPage(),
            ),
          ),

      routes: [
        GoRoute(
          path: AppNavPath.travel.notificationsDetail.path,
          name: AppNavPath.travel.notificationsDetail.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                context: context,
                state: state,
                child: NotificationDetail(
                  item: state.extra as NotificationItem,
                ),
              ),
        ),
      ],
    ),

    GoRoute(
      path: AppNavPath.travel.travelCatalogInvestments.path,
      name: AppNavPath.travel.travelCatalogInvestments.name,
      pageBuilder: (context, state) {
        final contentsId = state.uri.queryParameters["contentsId"];
        final topContentsId = state.uri.queryParameters["topContentsId"];

        debugPrint("********** uri ${state.uri}");
        debugPrint("********** ctg ${contentsId}");
        debugPrint("********** rctg ${topContentsId}");
        final title = state.uri.queryParameters["title"].orEmpty();
        return buildSlideTransitionPage(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create:
                    (context) =>
                        getIt<InvestmentsBloc>()..add(
                          InvestmentsEvent.setCategoryId(
                            contentsId?.toIntOrNull(),
                            topContentsId?.toIntOrNull(),
                          ),
                        ),
              ),
              BlocProvider(create: (context) => InvestSortCubit()),
            ],
            child: CatalogInvestmentsPage(title: title),
          ),
          context: context,
          state: state,
        );
      },

      routes: [
        GoRoute(
          path: AppNavPath.travel.travelCatalogInvestmentsSort.path,
          name: AppNavPath.travel.travelCatalogInvestmentsSort.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                child: InvestSortMainPage(
                  cubit: state.extra as InvestSortCubit,
                ),
                context: context,
                state: state,
              ),
        ),
        GoRoute(
          path: AppNavPath.travel.travelCatalogInvestmentsPriceSort.path,
          name: AppNavPath.travel.travelCatalogInvestmentsPriceSort.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                child: InvestPriceSortPage(
                  cubit: state.extra as InvestSortCubit,
                ),
                context: context,
                state: state,
              ),
        ),
        GoRoute(
          path: AppNavPath.travel.travelCatalogInvestmentsSortType.path,
          name: AppNavPath.travel.travelCatalogInvestmentsSortType.name,
          pageBuilder:
              (context, state) => buildSlideTransitionPage(
                child: InvestSortTypePage(
                  cubit: state.extra as InvestSortCubit,
                ),
                context: context,
                state: state,
              ),
        ),
      ],
    ),
    // ShellRoute(
    //   navigatorKey: _investNavigatorKey,
    //
    //   routes: [
    //     GoRoute(
    //       path: AppNavPath.travel.travelCatalogInvestments.path,
    //       name: AppNavPath.travel.travelCatalogInvestments.name,
    //       parentNavigatorKey: _investNavigatorKey,
    //       pageBuilder: (context, state) {
    //         return buildSlideTransitionPage(
    //           child: CatalogInvestmentsPage(
    //             title: state.uri.queryParameters["title"].orEmpty(),
    //           ),
    //           context: context,
    //           state: state,
    //         );
    //       },
    //
    //       routes: [
    //         GoRoute(
    //           path: AppNavPath.travel.travelCatalogInvestmentsSort.path,
    //           name: AppNavPath.travel.travelCatalogInvestmentsSort.name,
    //           parentNavigatorKey: _investNavigatorKey,
    //           pageBuilder:
    //               (context, state) => buildSlideTransitionPage(
    //                 child: InvestSortMainPage(),
    //                 context: context,
    //                 state: state,
    //               ),
    //         ),
    //         GoRoute(
    //           path: AppNavPath.travel.travelCatalogInvestmentsPriceSort.path,
    //           name: AppNavPath.travel.travelCatalogInvestmentsPriceSort.name,
    //           parentNavigatorKey: _investNavigatorKey,
    //           pageBuilder:
    //               (context, state) => buildSlideTransitionPage(
    //                 child: InvestPriceSortPage(),
    //                 context: context,
    //                 state: state,
    //               ),
    //         ),
    //         GoRoute(
    //           path: AppNavPath.travel.travelCatalogInvestmentsSortType.path,
    //           name: AppNavPath.travel.travelCatalogInvestmentsSortType.name,
    //           parentNavigatorKey: _investNavigatorKey,
    //           pageBuilder:
    //               (context, state) => buildSlideTransitionPage(
    //                 child: InvestSortTypePage(),
    //                 context: context,
    //                 state: state,
    //               ),
    //         ),
    //       ],
    //     ),
    //   ],
    //
    //   builder: (context, state, child) {
    //     return MultiBlocProvider(
    //       providers: [
    //         BlocProvider(create: (context) => getIt<InvestmentsBloc>()),
    //         BlocProvider(create: (context) => InvestSortCubit()),
    //       ],
    //       child: child,
    //     );
    //   },
    //   // pageBuilder: (context, state, child) {
    //   //   return buildSlideTransitionPage(
    //   //     context: context,
    //   //     state: state,
    //   //     child: MultiBlocProvider(
    //   //       providers: [
    //   //         BlocProvider(create: (context) => getIt<InvestmentsBloc>()),
    //   //         BlocProvider(create: (context) => InvestSortCubit()),
    //   //       ],
    //   //       child: child,
    //   //     ),
    //   //   );
    //   // },
    // ),
    GoRoute(
      path: AppNavPath.travel.travelCatalogInvestmentsSearch.path,
      name: AppNavPath.travel.travelCatalogInvestmentsSearch.name,
      // builder: (context,state){
      //   final  curType=  InvestCurrencyType.type(state.uri.queryParameters["currencyType"]??"");
      //   return InvestSearchPage(
      //     currencyType: curType ,
      //   );
      // },
      pageBuilder: (context, state) {
        final curType = InvestCurrencyType.type(
          state.uri.queryParameters["currencyType"] ?? "",
        );
        return buildSlideTransitionPage(
          child: InvestSearchPage(currencyType: curType),
          state: state,
          context: context,
          slideAlign: SlideAlign.vertical,
        );
      },
    ),
  ];

  static final shellTravel = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.travel.travelHome.path,
        name: AppNavPath.travel.travelHome.name,
        redirect: (context, state) {
          final locale = getIt<AppPreference>().getLocale();
          if (locale == null) return AppNavPath.more.selectLangPage.path;

          final securityStorage = getIt<SecurityStorage>();

          if (securityStorage.getAccessToken() == null &&
              securityStorage.isFirstlyLaunch()) {
            securityStorage.firstlyLaunched();
            return AppNavPath.more.authPage.path;
          } else if (securityStorage.hasPin() &&
              !securityStorage.isPinVerified()) {
            return AppNavPath.more.checkPin.path;
          }
          return null;
        },

        pageBuilder: (context, state) {
          return buildSlideTransitionPage(
            child: BlocProvider(
              create: (ctx) => getIt<HomeBloc>()..add(HomeBlocEvent.initial()),
              child: HomePage(),
            ),
            state: state,
            context: context,
            slideAlign: SlideAlign.vertical,
          );
        },
      ),
    ],
  );
  static final shellCatalog = StatefulShellBranch(
    routes: [
      GoRoute(
        path: "/catalog",
        name: "catalog",

        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<CatalogBloc>(),
              child: CatalogScreen(),
            ),
      ),
    ],
  );
}
