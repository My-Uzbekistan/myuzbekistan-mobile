import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart';
import 'package:travel/src/pages/notifications/notification_count_bloc/notification_count_cubit.dart';
import 'package:travel/src/pages/onboarding/bloc/onboarding_bloc.dart';

import '../home_bloc/home_bloc.dart';
import 'widget/home_hero_header.dart';
import 'widget/cities_widget.dart';
import 'widget/currency_calculator.dart';
import 'widget/events_widget.dart';
import 'widget/home_content_groups.dart';
import 'widget/hotels_widget.dart';
import 'widget/services_widget.dart';
import 'widget/shimmer/home_banner_shimmer.dart';
import 'widget/shimmer/home_content_groups_shimmer.dart';
import 'widget/shimmer/home_horizontal_section_shimmer.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    var bloc = context.read<HomeBloc>();
    var onboardingBloc = context.read<OnboardingBloc>();
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onboardingBloc.add(OnboardingEvent.loadData());
        if(Toggle.giftToggle) {
          context.read<GiftBloc>().add(GiftBlocEvent.initial());
        }
        context.read<NotificationCountCubit>().loadNotificationCount();
      });
      return null;
    }, []);
    var completerRef = useRef<Completer<void>?>(null);

    return BlocListener<OnboardingBloc, OnboardingState>(
      bloc: onboardingBloc,
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if ((state.items ?? []).isNotEmpty) {
          context.travel.pushOnboarding(onboardingBloc);
        }
      },
      child: Scaffold(
        backgroundColor: context.appColors.background.underlayer,
        body: BlocConsumer<HomeBloc, HomeBlocState>(
          listener: (context, state) {
            if (state is HomeBlocDataState) {
              if (!state.isRefreshing) {
                completerRef.value?.complete();
                completerRef.value = null;
              }
            }
          },
          bloc: bloc,
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state is HomeBlocErrorState) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 24,
                  children: [
                    MessageContainer.custom(
                      icon: Assets.png.exclamationmarkSquare.image(),
                      title: context.localization.pageFailedToLoad,
                      caption: context.localization.something_went_wrong,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 48,
                      child: FilledButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(
                            HomeBlocEvent.loadDataEvent(),
                          );
                        },
                        style: FilledButton.styleFrom(
                          elevation: 0,
                          textStyle: CustomTypography.bodyLg,
                          foregroundColor:
                              context.appColors.textIconColor.primary,
                          backgroundColor: context.appColors.fill.quaternary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(context.localization.refresh),
                      ),
                    ),
                  ],
                ),
              );
            }
            final data = state is HomeBlocDataState
                ? state
                : const HomeBlocDataState();
            return RefreshIndicator.adaptive(
              key: const ValueKey("HomeDataState"),
                displacement: 100,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  bloc.add(HomeBlocEvent.loadDataEvent(isRefresh: true));
                  completerRef.value = Completer();
                  await completerRef.value?.future;
                },
                child: CustomScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    HomeHeader(
                      backgroundImageUrl: data.backgroundImage,
                      isBackgroundLoading: data.loadingBackground,
                      regionName: data.selectedRegion?.name ?? "",
                      temperature: data.temperature?.temperature ?? "",
                      airQuality: data.airQuality?.aqi.toString(),
                      airQualityLevel: data.airQuality?.level,
                      currentPrayer: data.prayerTimes?.current,
                      onPrayerExpired: () =>
                          bloc.add(HomeBlocEvent.loadPrayerTimes()),
                      onPrayerTap: () async {
                        await context.travel.pushPrayerTimes();
                        bloc.add(HomeBlocEvent.loadPrayerTimes());
                      },
                      hintText: context.localization.home_search_hint,
                      onRegionTap: data.selectedRegion == null
                          ? null
                          : () async {
                              final result = await context.travel
                                  .pushSelectRegionPage(
                                    data.regions,
                                    data.selectedRegion!.id,
                                  );
                              if (result != null) {
                                bloc.add(
                                  HomeBlocEvent.changeRegion(
                                    (result as Region).id,
                                  ),
                                );
                              }
                            },
                      onNotificationTap: () =>
                          context.travel.pushNotifications(),
                      onGiftTap: Toggle.giftToggle
                          ? () => context.travel.pushGiftPage()
                          : null,
                      onSearchTap: () => context.travel
                          .pushContentByCategoryPage(
                            context.localization.search,
                            0,
                          ),
                      onFavoriteTap: () => context.travel.pushFavoritesPage(),
                      onQrTap: () => context.finance.pushQrCoderReaderPage(),
                      quickActions: data.services
                          .mapIndexed(
                            (index, service) => HomeQuickAction(
                              iconPath: service.icon ?? '',
                              label: service.name ?? '',
                              onTap: () =>
                                  _openQuickAction(context, index, service.url),
                            ),
                          )
                          .toList(),
                    ),



                    if (data.banners.isNotEmpty)
                      SliverPadding(
                        padding: const EdgeInsets.only(top: 12),
                        sliver: SliverToBoxAdapter(
                          child: CustomInfiniteCarousel(
                            imageUrls: data.banners
                                .map((b) => b.imageUrl)
                                .toList(),
                            onItemTap: (index) {
                              final link = data.banners[index].url;
                              if (link != null && link.isNotEmpty) {
                                context.more.openUrl(link);
                              }
                            },
                          ),
                        ),
                      )
                    else if (data.loadingContents)
                      const SliverPadding(
                        padding: EdgeInsets.only(top: 12),
                        sliver: SliverToBoxAdapter(child: HomeBannerShimmer()),
                      ),
                    ServicesWidget(services: data.catalogServices),
                    CurrencyCalculator(),
                    if (data.cities.isNotEmpty)
                      CitiesWidget(
                        cities: data.cities,
                        weekend: data.citiesWeekend,
                        onCityTap: (city) =>
                            context.travel.pushCityPage(cityId: city.id),
                      )
                    else if (data.loadingContents)
                      const SliverToBoxAdapter(
                        child: HomeHorizontalSectionShimmer(
                          cardWidth: 220,
                          imageHeight: 280,
                          listHeight: 280,
                          hasSubtitle: true,
                          hasSeeAll: false,
                        ),
                      ),
                    if (data.hotels.isNotEmpty)
                      HotelsWidget(
                        hotels: data.hotels,
                        onSeeAll: () => context.travel.pushContentByCategoryPage(
                          _categoryName(data, 5),
                          5,
                        ),
                        onHotelTap: (h) => context.travel.pushDetailPage(
                          contentId: h.contentId,
                        ),
                      )
                    else if (data.loadingContents)
                      const SliverToBoxAdapter(
                        child: HomeHorizontalSectionShimmer(
                          cardWidth: 156,
                          imageHeight: 156,
                          listHeight: 244,
                          withCaptions: true,
                        ),
                      ),
                    if (data.events.isNotEmpty)
                      EventsWidget(
                        events: data.events,
                        onSeeAll: () => context.travel.pushContentByCategoryPage(
                          _categoryName(data, 7),
                          7,
                        ),
                        onEventTap: (e) => context.travel.pushDetailPage(
                          contentId: e.contentId,
                        ),
                      )
                    else if (data.loadingContents)
                      const SliverToBoxAdapter(
                        child: HomeHorizontalSectionShimmer(
                          cardWidth: 320,
                          imageHeight: 280,
                          listHeight: 280,
                        ),
                      ),

                    if (data.loadingContents)
                      const SliverToBoxAdapter(
                        child: HomeContentGroupsShimmer(),
                      )
                    else
                      HomeContentGroups(contents: data.contents),

                    SliverToBoxAdapter(
                      child: SizedBox(height: MediaQuery.paddingOf(context).bottom),
                    ),
                  ],
                ),
              );
          },
        ),
      ),
    );
  }
}

String _categoryName(HomeBlocDataState data, int id) =>
    data.categories.where((c) => c.id == id).firstOrNull?.name ?? "";

void _openQuickAction(BuildContext context, int index, String? url) {
  if (index == 0) {
    context.travel.pushMuseumHome();
    return;
  }
  if (url == null || url.isEmpty) return;
  if (url.startsWith("/")) {
    context.push(url);
    return;
  }
  context.more.openUrl(url);
}
