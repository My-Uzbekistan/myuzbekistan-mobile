import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/favorites/bloc/museum_favorites_bloc.dart';
import 'package:travel/src/pages/museum/list/widgets/shimmer/museum_cards_shimmer.dart';
import 'package:travel/src/pages/museum/widgets/museum_card_tile.dart';
import 'package:travel/src/pages/museum/widgets/museum_nav_bar.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumFavoritesPage extends StatelessWidget {
  const MuseumFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumFavoritesBloc>();

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<MuseumFavoritesBloc, MuseumFavoritesState>(
          bloc: bloc,
          listenWhen:
              (previous, current) =>
                  current.errorMessage != null &&
                  previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder:
              (context, state) => Column(
                children: [
                  MuseumNavBar(
                    title: context.localization.museum_favorites_title,
                    onBack: () => context.pop(),
                  ),
                  Expanded(
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        bloc.add(MuseumFavoritesEvent.loadData());
                        await bloc.stream.firstWhere(
                          (state) => !state.isLoading,
                        );
                      },
                      child: CustomScrollView(
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
    MuseumFavoritesBloc bloc,
    MuseumFavoritesState state,
  ) {
    if (state.museums.isEmpty && state.isLoading) {
      return const [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: MuseumCardsShimmer()),
      ];
    }

    if (state.museums.isEmpty) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: MuseumStateView(
              title:
                  state.loadFailed
                      ? context.localization.museum_page_failed_to_load
                      : context.localization.museum_favorites_empty_title,
              message:
                  state.loadFailed
                      ? context.localization.museum_something_went_wrong
                      : context.localization.museum_favorites_empty_message,
              actionText:
                  state.loadFailed ? context.localization.museum_refresh : null,
              onAction:
                  state.loadFailed
                      ? () => bloc.add(MuseumFavoritesEvent.loadData())
                      : null,
            ),
          ),
        ),
      ];
    }

    return [
      SliverPadding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        sliver: SliverList.separated(
          itemCount: state.museums.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final museum = state.museums[index];
            return MuseumCardTile(
              key: ValueKey(museum.id),
              museum: museum,
              onTap: () => context.travel.pushMuseumDetail(museumId: museum.id),
              onFavoriteTap:
                  () => bloc.add(MuseumFavoritesEvent.remove(museum: museum)),
            );
          },
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
      ),
    ];
  }
}
