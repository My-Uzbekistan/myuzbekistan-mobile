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
import 'widget/hotels_widget.dart';
import 'widget/services_widget.dart';

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

    final List<String> banners = [
      'https://picsum.photos/800/400?random=1',
      'https://picsum.photos/800/400?random=2',
      'https://picsum.photos/800/400?random=3',
    ];
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
            return switch (state) {
              HomeBlocLoadingState _ => const Center(child: LoadingIndicator()),
              HomeBlocDataState data => RefreshIndicator.adaptive(
                key: ValueKey("HomeDataState"),
                displacement: 100,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  bloc.add(HomeBlocEvent.loadDataEvent(isRefresh: true));
                  completerRef.value = Completer();
                  await completerRef.value?.future;
                },
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    HomeHeader(
                      regionName: data.selectedRegion?.name ?? "",
                      temperature: data.temperature?.temperature ?? "",
                      airQuality: "38",
                      prayerLabel: "Maghrib",
                      prayerTime: DateTime.now().add(
                        const Duration(hours: 2, minutes: 5, seconds: 7),
                      ),
                      hintText: "Кудахотите поехать?",
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
                      onSearchTap: () => context.travel
                          .pushContentByCategoryPage(
                            context.localization.search,
                            0,
                          ),
                      onFavoriteTap: () => context.travel.pushFavoritesPage(),
                      onQrTap: () => context.finance.pushQrCoderReaderPage(),
                      quickActions: data.services.mapIndexed((index,data)=> HomeQuickAction(
                        iconPath: data.icon ?? '',
                        label: data.name ?? '',
                        onTap:
                        data.url == null
                            ? null
                            : () => LauncherUtils.urlLauncher(data.url??""),
                      )).toList()
                    ),

                    SliverPadding(
                      padding: const EdgeInsets.only(top: 12),
                      sliver: SliverToBoxAdapter(
                        child: CustomInfiniteCarousel(
                          imageUrls: banners,
                          onItemTap: (index) {
                            logger.i('Bosilgan rasm indeksi: $index');
                          },
                        ),
                      ),
                    ),
                    ServicesWidget(services: data.catalogServices),
                    CurrencyCalculator(),
                    CitiesWidget(
                      cities: const [
                        CityData(
                          imageUrl: 'https://picsum.photos/440/560?random=11',
                          title: "Хива",
                          date: "1 — 2 август",
                        ),
                        CityData(
                          imageUrl: 'https://picsum.photos/440/560?random=12',
                          title: "Самарканд",
                          date: "1 — 2 август",
                        ),
                        CityData(
                          imageUrl: 'https://picsum.photos/440/560?random=13',
                          title: "Бухара",
                          date: "1 — 2 август",
                        ),
                      ],
                    ),
                    HotelsWidget(
                      hotels: const [
                        HotelData(
                          imageUrl: 'https://picsum.photos/312/312?random=21',
                          name: "Samarkand Regency",
                          location: "Самарканд",
                          distance: "300 км",
                          rating: "4,9",
                          price: "4 000 000",
                        ),
                        HotelData(
                          imageUrl: 'https://picsum.photos/312/312?random=22',
                          name: "Hyatt Regency",
                          location: "Ташкент",
                          distance: "10 км",
                          rating: "4,9",
                          price: "2 550 000",
                        ),
                        HotelData(
                          imageUrl: 'https://picsum.photos/312/312?random=23',
                          name: "Praga Hotel",
                          location: "Ташкент",
                          distance: "16 км",
                          rating: "4,9",
                          price: "320 000",
                        ),
                      ],
                    ),
                    EventsWidget(
                      events: const [
                        EventData(
                          imageUrl: 'https://picsum.photos/640/560?random=31',
                          title: "G‘aybulla Tursunov",
                          location: "Ташкент",
                          badgeText: "20 Ноябрь • Концерт",
                        ),
                        EventData(
                          imageUrl: 'https://picsum.photos/640/560?random=32',
                          title: "Lola Yuldasheva",
                          location: "Самарканд",
                          badgeText: "25 Ноябрь • Концерт",
                        ),
                        EventData(
                          imageUrl: 'https://picsum.photos/640/560?random=33',
                          title: "Ozodbek Nazarbekov",
                          location: "Бухара",
                          badgeText: "1 Декабрь • Концерт",
                        ),
                      ],
                    ),

                    SliverToBoxAdapter(
                      child: SizedBox(height: MediaQuery.paddingOf(context).bottom),
                    ),
                  ],
                ),
              ),
              _ => Center(
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
              ),
            };
          },
        ),
      ),
    );
  }
}
