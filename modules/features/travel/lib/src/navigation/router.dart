import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/catalog/bloc/catalog_bloc.dart';
import 'package:travel/src/core/extension.dart';
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
import '../pages/content_by_category/content_by_categories_page.dart';
import '../pages/detail/detail_bloc/detail_bloc.dart';
import '../pages/detail/pages/image_preview_page.dart';
import '../pages/detail/review/all_reviews_page.dart';
import '../pages/home/page/home_page.dart';
import '../pages/home/page/select_region/select_region_page.dart';

mixin FeatureTravelRouter {
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
