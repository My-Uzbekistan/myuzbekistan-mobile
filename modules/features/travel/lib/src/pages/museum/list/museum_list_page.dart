import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/museum_auth_guard.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/list/bloc/museum_list_bloc.dart';
import 'package:travel/src/pages/museum/list/museum_sort_label.dart';
import 'package:travel/src/pages/museum/list/widgets/shimmer/museum_cards_shimmer.dart';
import 'package:travel/src/pages/museum/widgets/museum_card_tile.dart';
import 'package:travel/src/pages/museum/widgets/museum_chip.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumListPage extends HookWidget {
  const MuseumListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumListBloc>();
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        final position = scrollController.position;
        if (position.pixels >= position.maxScrollExtent - 240) {
          bloc.add(MuseumListEvent.loadMore());
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<MuseumListBloc, MuseumListState>(
          bloc: bloc,
          listenWhen:
              (previous, current) =>
                  current.errorMessage != null &&
                  previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder:
              (context, state) => Column(
                children: [
                  _header(context, bloc, state),
                  _sortChips(context, bloc, state),
                  Expanded(
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        bloc.add(
                          MuseumListEvent.start(
                            search: state.search,
                            cityId: state.cityId,
                            cityName: state.cityName,
                          ),
                        );
                        await bloc.stream.firstWhere(
                          (state) => !state.isFirstLoading,
                        );
                      },
                      child: CustomScrollView(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        slivers: _slivers(context, bloc, state),
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }

  List<Widget> _slivers(
    BuildContext context,
    MuseumListBloc bloc,
    MuseumListState state,
  ) {
    if (state.isFirstLoading && state.items.isEmpty) {
      return const [
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverToBoxAdapter(child: MuseumCardsShimmer()),
      ];
    }

    if (state.items.isEmpty) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: MuseumStateView(
              title: context.localization.museum_not_found_title,
              message: context.localization.museum_not_found_message,
            ),
          ),
        ),
      ];
    }

    return [
      SliverToBoxAdapter(child: _countLabel(context, state)),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverList.separated(
          itemCount: state.items.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final museum = state.items[index];
            return MuseumCardTile(
              key: ValueKey(museum.id),
              museum: museum,
              onTap: () => context.travel.pushMuseumDetail(museumId: museum.id),
              onFavoriteTap: () => _toggleFavorite(context, bloc, museum),
            );
          },
        ),
      ),
      if (state.isLoading)
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: MuseumCardsShimmer(itemCount: 1),
          ),
        ),
      SliverToBoxAdapter(
        child: SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
      ),
    ];
  }

  Widget _header(
    BuildContext context,
    MuseumListBloc bloc,
    MuseumListState state,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: SizedBox(
        height: 44,
        child: Row(
          spacing: 8,
          children: [
            RoundedButton.arrowLeft(onPressed: () => context.pop()),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => _openSearch(context, bloc),
                child: SizedBox(
                  height: 44,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        state.title.isEmpty
                            ? context.localization.museum_search_hint
                            : state.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelLg(color: context.appColors.textIconColor.primary),
                    ),
                  ),
                ).shadow(
                  context,
                  backgroundColor: context.appColors.background.elevation2,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sortChips(
    BuildContext context,
    MuseumListBloc bloc,
    MuseumListState state,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 8,
          children: [
            for (final sort in MuseumSort.values)
              MuseumChip(
                title: sort.label(context),
                isSelected: sort == state.sort,
                onTap: () => bloc.add(MuseumListEvent.changeSort(sort: sort)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _countLabel(BuildContext context, MuseumListState state) {
    final cityName = state.cityName;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Text(
        cityName == null
            ? context.localization.museum_list_count(state.totalItems)
            : context.localization.museum_list_count_in_city(
              state.totalItems,
              cityName,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ).bodySm(color: context.appColors.textIconColor.tertiary),
    );
  }

  void _toggleFavorite(
    BuildContext context,
    MuseumListBloc bloc,
    MuseumCard museum,
  ) {
    if (!museumRequireAuth(context)) return;
    bloc.add(MuseumListEvent.toggleFavorite(museum: museum));
  }

  Future<void> _openSearch(BuildContext context, MuseumListBloc bloc) async {
    final query = await context.travel.pushMuseumSearch(
      query: bloc.state.title,
    );
    if (query == null || query.isEmpty) return;
    bloc.add(MuseumListEvent.applyQuery(query: query));
  }
}
