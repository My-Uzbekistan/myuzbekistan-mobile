import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/content_by_category/bloc/contents_by_category_bloc.dart';
import 'package:travel/src/pages/detail/detail_page.dart';
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart';

import '../di/injection.dart';
import '../pages/content_by_category/content_by_categories_page.dart';
import '../pages/detail/detail_bloc/detail_bloc.dart';
import '../pages/detail/pages/image_preview_page.dart';
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

        return ModalPage(
          child: SelectRegionPage(regions: regions, selectedRegionId: regionId),
          showDragHandle: true,
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
              child: BlocProvider(
                create: (context) => getIt<DetailBloc>()
                  ..add(DetailBlocEvent.initial(
                      contentId:
                          "${state.uri.queryParameters["contentId"]}")),
                child:DetailPage()

                // DetailPage(),
              ));
        },
        routes: [
          GoRoute(
              path: AppNavPath.travel.imagePreview.path,
              name: AppNavPath.travel.imagePreview.name,
              builder: (context, state) {
                return ImagePreviewPage(
                  images: state.extra as List<String>,
                );
              }),
        ]),
  ];

  static final shellTravel = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.travel.travelHome.path,
        name: AppNavPath.travel.travelHome.name,
        builder: (context, state) => BlocProvider(create: (ctx)=>getIt<HomeBloc>(),
        child: HomePage(),
        ),
      ),
    ],
  );
}
