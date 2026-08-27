import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/museum_auth_guard.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/home/bloc/museum_home_bloc.dart';
import 'package:travel/src/pages/museum/home/widgets/museum_cards_section.dart';
import 'package:travel/src/pages/museum/home/widgets/museum_home_header.dart';
import 'package:travel/src/pages/museum/home/widgets/museum_popular_section.dart';
import 'package:travel/src/pages/museum/home/widgets/shimmer/museum_home_shimmer.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumHomePage extends StatelessWidget {
  const MuseumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumHomeBloc>();

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<MuseumHomeBloc, MuseumHomeState>(
        bloc: bloc,
        listenWhen:
            (previous, current) =>
                current.errorMessage != null &&
                previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        builder: (context, state) {
          return Stack(
            children: [
              RefreshIndicator.adaptive(
                displacement: MediaQuery.paddingOf(context).top + 48,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  bloc.add(MuseumHomeEvent.loadData());
                  await bloc.stream.firstWhere((state) => !state.isLoading);
                },
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    MuseumHomeHeader(
                      onSearchTap: () => _openSearch(context),
                      onTicketsTap: () {
                        if (!museumRequireAuth(context)) return;
                        context.travel.pushMuseumTickets();
                      },
                      onFavoritesTap: () {
                        if (!museumRequireAuth(context)) return;
                        context.travel.pushMuseumFavorites();
                      },
                    ),
                    if (state.isEmpty && state.isLoading)
                      const SliverToBoxAdapter(child: MuseumHomeShimmer()),
                    if (state.isEmpty && state.loadFailed && !state.isLoading)
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: MuseumStateView(
                            title:
                                context.localization.museum_page_failed_to_load,
                            message:
                                context
                                    .localization
                                    .museum_something_went_wrong,
                            actionText: context.localization.museum_refresh,
                            onAction:
                                () => bloc.add(MuseumHomeEvent.loadData()),
                          ),
                        ),
                      ),
                    if (state.popular.isNotEmpty)
                      SliverToBoxAdapter(
                        child: MuseumPopularSection(
                          museums: state.popular,
                          onMuseumTap:
                              (museum) => context.travel.pushMuseumDetail(
                                museumId: museum.id,
                              ),
                        ),
                      ),
                    if (state.recommended.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: MuseumCardsSection(
                            title:
                                context.localization.museum_section_recommended,
                            museums: state.recommended,
                            onMuseumTap:
                                (museum) => context.travel.pushMuseumDetail(
                                  museumId: museum.id,
                                ),
                            onFavoriteTap:
                                (museum) =>
                                    _toggleFavorite(context, bloc, museum),
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: MediaQuery.paddingOf(context).bottom + 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(top: MediaQuery.paddingOf(context).top + 2),
                child: RoundedButton.arrowLeft(onPressed: () => context.pop()),
              ),
            ],
          );
        },
      ),
    );
  }

  void _toggleFavorite(
    BuildContext context,
    MuseumHomeBloc bloc,
    MuseumCard museum,
  ) {
    if (!museumRequireAuth(context)) return;
    bloc.add(MuseumHomeEvent.toggleFavorite(museum: museum));
  }

  Future<void> _openSearch(BuildContext context) async {
    final query = await context.travel.pushMuseumSearch();
    if (query == null || query.isEmpty || !context.mounted) return;
    context.travel.pushMuseumList(
      search: query.search,
      cityId: query.cityId,
      cityName: query.cityName,
    );
  }
}
