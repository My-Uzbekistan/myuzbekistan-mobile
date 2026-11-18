import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/search/market_product_sort_label.dart';
import 'package:market_home/src/presentation/search/bloc/market_search_bloc.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_app_bar.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_empty_view.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_hints.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_sort_sheet.dart';
import 'package:market_home/src/presentation/search/widgets/shimmer/market_search_grid_shimmer.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketSearchPage extends HookWidget {
  const MarketSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketSearchBloc>();
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final scrollController = useScrollController();
    final routeAnimation = ModalRoute.of(context)?.animation;

    useEffect(() {
      final animation = routeAnimation;
      if (animation == null || animation.isCompleted) {
        final timer = Timer(const Duration(milliseconds: 260), focusNode.requestFocus);
        return timer.cancel;
      }

      void onStatusChanged(AnimationStatus status) {
        if (status == AnimationStatus.completed) focusNode.requestFocus();
      }

      animation.addStatusListener(onStatusChanged);
      return () => animation.removeStatusListener(onStatusChanged);
    }, const []);

    useEffect(() {
      void onScroll() {
        final position = scrollController.position;
        if (position.pixels >= position.maxScrollExtent - 240) {
          bloc.add(MarketSearchEvent.loadMore());
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    void submit(String query) {
      if (controller.text != query) {
        controller.text = query;
        controller.selection = TextSelection.collapsed(offset: query.length);
      }
      focusNode.unfocus();
      bloc.add(MarketSearchEvent.submit(query));
    }

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            MarketSearchAppBar(
              controller: controller,
              focusNode: focusNode,
              onBack: () => context.pop(),
              onChanged: (value) =>
                  bloc.add(MarketSearchEvent.queryChanged(value)),
              onSubmitted: submit,
              onClear: () {
                controller.clear();
                bloc.add(MarketSearchEvent.queryChanged(""));
                focusNode.requestFocus();
              },
            ),
            Expanded(
              child: BlocConsumer<MarketSearchBloc, MarketSearchState>(
                listenWhen: (previous, current) =>
                    current.errorMessage != null &&
                    previous.errorMessage != current.errorMessage,
                listener: (context, state) =>
                    Toast.showToast(state.errorMessage!),
                builder: (context, state) => CustomScrollView(
                  controller: scrollController,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: _slivers(context, state, bloc, submit),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _slivers(
    BuildContext context,
    MarketSearchState state,
    MarketSearchBloc bloc,
    ValueChanged<String> onSubmit,
  ) {
    if (!state.hasQuery) {
      return [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 16,
              bottom: MediaQuery.paddingOf(context).bottom + 24,
            ),
            child: MarketSearchHints(
              history: state.history,
              suggestions: state.suggestions,
              isLoading: state.isHintsLoading,
              onSubmit: onSubmit,
              onRemoveHistory: (id) =>
                  bloc.add(MarketSearchEvent.removeHistory(id)),
            ),
          ),
        ),
      ];
    }

    if (state.isFirstLoading) {
      return const [SliverToBoxAdapter(child: MarketSearchGridShimmer())];
    }

    if (state.products.isEmpty) {
      return const [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: MarketSearchEmptyView()),
        ),
      ];
    }

    final cardWidth = (MediaQuery.sizeOf(context).width - 48) / 2;

    return [
      SliverToBoxAdapter(
        child: _resultHeader(
          context,
          totalItems: state.totalItems,
          sort: state.sort,
          onSortTap: () => _openSortSheet(context, state.sort, bloc),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: cardWidth + 84,
          ),
          itemCount: state.products.length,
          itemBuilder: (context, index) {
            final product = state.products[index];
            return ProductCard(
              key: ValueKey(product.id),
              images: product.photos,
              title: product.name,
              priceText: product.price.amountFormatted(),
              currency: context.localization.market_currency_som,
              isFavorite: product.isFavorite,
              onFavoriteTap: () => bloc.add(
                MarketSearchEvent.toggleFavorite(product: product),
              ),
              cartCount: product.cartQuantity,
              onCartCountChanged: (quantity) => bloc.add(
                MarketSearchEvent.changeCartQuantity(
                  product: product,
                  quantity: quantity,
                ),
              ),
              onTap: () => context.market
                  .pushMarketProductDetail(productId: product.id),
            );
          },
        ),
      ),
      if (state.isLoading)
        const SliverToBoxAdapter(
          child: MarketSearchGridShimmer(itemCount: 2),
        ),
      SliverToBoxAdapter(
        child: SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
      ),
    ];
  }

  Widget _resultHeader(
    BuildContext context, {
    required int totalItems,
    required MarketProductSort sort,
    required VoidCallback onSortTap,
  }) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              context.localization.market_search_results_count(totalItems),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodySm(color: colors.textIconColor.tertiary),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onSortTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              children: [
                Text(
                  sort.label(context),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelSm(color: colors.textIconColor.primary),
                RotatedBox(
                  quarterTurns: 1,
                  child: Assets.svg.prayers.chevronRight.path.toSvgImage(
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                    tintColor: colors.textIconColor.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openSortSheet(
    BuildContext context,
    MarketProductSort selected,
    MarketSearchBloc bloc,
  ) async {
    final sort = await MarketSearchSortSheet.show(context, selected: selected);
    if (sort == null) return;
    bloc.add(MarketSearchEvent.changeSort(sort));
  }
}
