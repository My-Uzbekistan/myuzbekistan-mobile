import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/catalog_investments/bloc/investments_bloc.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';
import 'package:travel/src/pages/catalog_investments/pages/invest_sort_curency.dart';
import 'package:travel/src/pages/catalog_investments/pages/search_page/invest_search_page.dart';
import 'package:travel/src/pages/catalog_investments/sort_cubit/sort_cubit.dart';
import 'package:travel/src/pages/content_by_category/bloc/contents_by_category_bloc.dart';
import 'package:travel/src/pages/contract/bloc/contract_detail_bloc.dart';
import 'package:travel/src/pages/contract/contract_detail_page.dart';
import 'package:travel/src/pages/city/bloc/city_bloc.dart';
import 'package:travel/src/pages/city/city_page.dart';
import 'package:travel/src/pages/detail/detail_page.dart';
import 'package:travel/src/pages/detail/pages/all_facilities.dart';
import 'package:travel/src/pages/detail/pages/read_more.dart';
import 'package:travel/src/pages/detail/review/add_review_page.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart';
import 'package:travel/src/pages/gift/history_page.dart';
import 'package:travel/src/pages/gift/main/main_gift_page.dart';
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart';
import 'package:travel/src/pages/museum/detail/bloc/museum_detail_bloc.dart';
import 'package:travel/src/pages/museum/detail/museum_detail_page.dart';
import 'package:travel/src/pages/museum/favorites/bloc/museum_favorites_bloc.dart';
import 'package:travel/src/pages/museum/favorites/museum_favorites_page.dart';
import 'package:travel/src/pages/museum/home/bloc/museum_home_bloc.dart';
import 'package:travel/src/pages/museum/home/museum_home_page.dart';
import 'package:travel/src/pages/museum/list/bloc/museum_list_bloc.dart';
import 'package:travel/src/pages/museum/list/museum_list_page.dart';
import 'package:travel/src/pages/museum/purchase/bloc/museum_purchase_bloc.dart';
import 'package:travel/src/pages/museum/purchase/museum_purchase_page.dart';
import 'package:travel/src/pages/museum/search/bloc/museum_search_bloc.dart';
import 'package:travel/src/pages/museum/search/museum_search_page.dart';
import 'package:travel/src/pages/museum/tickets/bloc/museum_tickets_bloc.dart';
import 'package:travel/src/pages/museum/tickets/museum_tickets_page.dart';
import 'package:travel/src/pages/notifications/bloc/notification_bloc.dart';
import 'package:travel/src/pages/notifications/notification_main_page.dart';
import 'package:travel/src/pages/notifications/page/notification_detail.dart';
import 'package:travel/src/pages/onboarding/bloc/onboarding_bloc.dart';
import 'package:travel/src/pages/onboarding/onboarding_page.dart';
import 'package:travel/src/pages/prayer_times/bloc/prayer_times_bloc.dart';
import 'package:travel/src/pages/prayer_times/pages/prayer_location_page.dart';
import 'package:travel/src/pages/prayer_times/prayer_times_sheet.dart';
import 'package:travel/src/pages/search/bloc/global_search_bloc.dart';
import 'package:travel/src/pages/search/global_search_page.dart';
import 'package:travel/src/pages/search/result/bloc/global_search_result_bloc.dart';
import 'package:travel/src/pages/search/result/global_search_result_page.dart';
import 'package:travel/src/premium/premium_cancel/bloc/premium_cancel_bloc.dart';
import 'package:travel/src/premium/premium_cancel/premium_cancel_screen.dart';
import 'package:travel/src/premium/premium_onboarding/bloc/premium_bloc.dart';
import 'package:travel/src/premium/premium_onboarding/premium_onboarding.dart';

import '../di/injection.dart';
import '../pages/catalog_investments/CatalogInvestmentsPage.dart';
import '../pages/catalog_investments/pages/sort_main_page.dart';
import '../pages/content_by_category/content_by_categories_page.dart';
import '../pages/detail/detail_bloc/detail_bloc.dart';
import '../pages/detail/pages/image_preview_page.dart';
import '../pages/detail/review/all_reviews_page.dart';
import '../pages/gift/second/second_gift_page.dart';
import '../pages/home/page/home_screen.dart';
import '../pages/home/page/select_region/select_region_page.dart';
import '../pages/services/bloc/services_cubit.dart';
import '../pages/services/services_sheet.dart';

mixin FeatureTravelRouter {
  static final _investNavigatorKey = GlobalKey<NavigatorState>();

  static final routes = [
    GoRoute(
      path: AppNavPath.travel.globalSearch.path,
      name: AppNavPath.travel.globalSearch.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<GlobalSearchBloc>()
            ..add(
              GlobalSearchEvent.loadData(
                query: parseString(state.uri.queryParameters["query"]),
              ),
            ),
          child: const GlobalSearchPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.globalSearchResult.path,
      name: AppNavPath.travel.globalSearchResult.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<GlobalSearchResultBloc>()
            ..add(
              GlobalSearchResultEvent.loadData(
                query: parseString(state.uri.queryParameters["query"]) ?? "",
              ),
            ),
          child: const GlobalSearchResultPage(),
        ),
        context: context,
        state: state,
      ),
    ),
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
      path: AppNavPath.travel.travelOnboarding.path,
      name: AppNavPath.travel.travelOnboarding.name,
      pageBuilder: (context, state) {
        return ModalSheetPage(
          child: OnboardingPage(bloc: state.extra as OnboardingBloc),
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelPrayerTimes.path,
      name: AppNavPath.travel.travelPrayerTimes.name,
      pageBuilder: (context, state) {
        return ModalSheetPage(
          child: BlocProvider(
            create: (context) =>
                getIt<PrayerTimesBloc>()..add(const PrayerTimesEvent.initial()),
            child: const PrayerTimesSheet(),
          ),
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelPrayerLocation.path,
      name: AppNavPath.travel.travelPrayerLocation.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          context: context,
          state: state,
          child: PrayerLocationPage(
            locations: state.extra as List<PrayerLocation>,
            selectedLocationId: parseInt(
              state.uri.queryParameters["prayerLocationId"],
            ),
          ),
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelServices.path,
      name: AppNavPath.travel.travelServices.name,
      pageBuilder: (context, state) {
        return ModalSheetPage(
          child: BlocProvider(
            create: (context) => getIt<ServicesCubit>()..load(),
            child: const ServicesSheet(),
          ),
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelCity.path,
      name: AppNavPath.travel.travelCity.name,
      pageBuilder: (context, state) {
        final cityId = parseInt(state.uri.queryParameters["cityId"]) ?? 0;
        return buildSlideTransitionPage(
          context: context,
          state: state,
          child: BlocProvider(
            create: (context) =>
                getIt<CityBloc>()..add(CityEvent.load(cityId)),
            child: const CityPage(),
          ),
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
                child: AllFacilities(content: state.extra as ContentDetail),
              ),
        ),

        GoRoute(
          path: AppNavPath.travel.detailReadMore.path,
          name: AppNavPath.travel.detailReadMore.name,
          pageBuilder: (context, state) => ModalSheetPage(
            child: ReadMore(
              title: state.uri.queryParameters["title"].orEmpty(),
              content: state.uri.queryParameters["content"].orEmpty(),
            ),
          ),
        ),
        GoRoute(
          path: AppNavPath.travel.addReviewPage.path,
          name: AppNavPath.travel.addReviewPage.name,
          pageBuilder: (context, state) => ModalSheetPage(
            child: BlocProvider.value(
              value: state.extra as ReviewBloc,
              child: AddReviewPage(
                contentTitle: parseString(
                  state.uri.queryParameters["title"],
                ).orEmpty(),
                contentDescription: parseString(
                  state.uri.queryParameters["description"],
                ).orEmpty(),
                rating: parseInt(state.uri.queryParameters["rating"]),
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
    GoRoute(
      path: AppNavPath.travel.travelCatalogInvestmentsSearch.path,
      name: AppNavPath.travel.travelCatalogInvestmentsSearch.name,
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
    GoRoute(
      path: AppNavPath.travel.travelHomeGiftPage.path,
      name: AppNavPath.travel.travelHomeGiftPage.name,
      redirect: (context, state) {
        final giftState = context.read<GiftBloc>().state;
        final isUtcClient =
            getIt<SecurityStorage>().getUserModel()?.isUtcClient ?? false;
        if (!isUtcClient || !giftState.haveGift) {
          final timeLeft = (giftState.claimStatus?.timeLeft ?? 0).toString();
          final timeStatus = (giftState.claimStatus?.timeStatusValue ?? 0)
              .toString();

          return "${AppNavPath.travel.travelHomeGiftOnboardingPage.path}?timeLeft=$timeLeft&timeStatus=$timeStatus";
        }

        return null;
      },
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: MainGiftPage(),
          state: state,
          context: context,
          slideAlign: SlideAlign.vertical,
        );
      },
    ),

    GoRoute(
      path: AppNavPath.travel.travelHomeGiftOnboardingPage.path,
      name: AppNavPath.travel.travelHomeGiftOnboardingPage.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: SecondGiftPage(
            timeLeft: parseInt(state.uri.queryParameters["timeLeft"]) ?? 0,
            timeStatus:
                TimeStatus.values.elementAtOrNull(
                  parseInt(state.uri.queryParameters["timeStatus"]) ?? 0,
                ) ??
                TimeStatus.minutes,
          ),
          state: state,
          context: context,
          slideAlign: SlideAlign.vertical,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelHomeGiftHistory.path,
      name: AppNavPath.travel.travelHomeGiftHistory.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: GiftHistoryPage(),
          state: state,
          context: context,
          slideAlign: SlideAlign.vertical,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.premiumOnboardingPage.path,
      name: AppNavPath.travel.premiumOnboardingPage.name,
      pageBuilder: (context, state) {
        return buildSlideTransitionPage(
          child: BlocProvider(
            create:
                (context) =>
                    getIt.get<PremiumBloc>()
                      ..add(PremiumEvent.plans())
                      ..add(PremiumEvent.status()),
            child: PremiumOnboardingPage(),
          ),
          state: state,
          context: context,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.premiumCancelPage.path,
      name: AppNavPath.travel.premiumCancelPage.name,
      pageBuilder: (context, state) {
        final status = state.extra as PremiumStatusModel?;
        return buildSlideTransitionPage(
          child: BlocProvider(
            create:
                (context) =>
                    getIt.get<PremiumCancelBloc>(),
            child: PremiumCancelScreen(status: status),
          ),
          state: state,
          context: context,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.travelContractDetail.path,
      name: AppNavPath.travel.travelContractDetail.name,
      pageBuilder: (context, state) {
        final contractId =
            parseInt(state.uri.queryParameters["contractId"]) ?? 0;
        return buildSlideTransitionPage(
          child: BlocProvider(
            create: (context) => getIt.get<ContractDetailBloc>()
              ..add(ContractDetailEvent.load(contractId)),
            child: const ContractDetailPage(),
          ),
          state: state,
          context: context,
          slideAlign: SlideAlign.vertical,
        );
      },
    ),
    GoRoute(
      path: AppNavPath.travel.museumHome.path,
      name: AppNavPath.travel.museumHome.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) =>
              getIt<MuseumHomeBloc>()..add(MuseumHomeEvent.loadData()),
          child: const MuseumHomePage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumSearch.path,
      name: AppNavPath.travel.museumSearch.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MuseumSearchBloc>()
            ..add(
              MuseumSearchEvent.loadData(
                query: parseString(state.uri.queryParameters["query"]),
              ),
            ),
          child: const MuseumSearchPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumList.path,
      name: AppNavPath.travel.museumList.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MuseumListBloc>()
            ..add(
              MuseumListEvent.start(
                search: parseString(state.uri.queryParameters["search"]),
                cityId: parseString(state.uri.queryParameters["cityId"]),
                cityName: parseString(state.uri.queryParameters["cityName"]),
              ),
            ),
          child: const MuseumListPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumDetail.path,
      name: AppNavPath.travel.museumDetail.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MuseumDetailBloc>()
            ..add(
              MuseumDetailEvent.start(
                museumId:
                    parseString(state.uri.queryParameters["museumId"]) ?? "",
              ),
            ),
          child: const MuseumDetailPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumPurchase.path,
      name: AppNavPath.travel.museumPurchase.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MuseumPurchaseBloc>()
            ..add(
              MuseumPurchaseEvent.start(
                museumId:
                    parseString(state.uri.queryParameters["museumId"]) ?? "",
              ),
            ),
          child: const MuseumPurchasePage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumTickets.path,
      name: AppNavPath.travel.museumTickets.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MuseumTicketsBloc>()
            ..add(
              MuseumTicketsEvent.start(
                filter: MuseumOrderState.values.firstWhere(
                  (item) =>
                      item.name ==
                      parseString(state.uri.queryParameters["state"]),
                  orElse: () => MuseumOrderState.active,
                ),
              ),
            ),
          child: const MuseumTicketsPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.travel.museumFavorites.path,
      name: AppNavPath.travel.museumFavorites.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) =>
              getIt<MuseumFavoritesBloc>()
                ..add(MuseumFavoritesEvent.loadData()),
          child: const MuseumFavoritesPage(),
        ),
        context: context,
        state: state,
      ),
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
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create:
                      (ctx) => getIt<HomeBloc>()..add(HomeBlocEvent.initial()),
                ),
                BlocProvider(create: (ctx) => getIt<OnboardingBloc>()),
              ],
              child: HomeScreen(),
            ),
            state: state,
            context: context,
            slideAlign: SlideAlign.vertical,
          );
        },
      ),
    ],
  );
}
