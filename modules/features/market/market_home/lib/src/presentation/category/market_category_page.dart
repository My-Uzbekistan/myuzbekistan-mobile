import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/category/bloc/market_category_bloc.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:market_home/src/presentation/search/market_product_sort_label.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_empty_view.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_sort_sheet.dart';
import 'package:market_home/src/presentation/search/widgets/shimmer/market_search_grid_shimmer.dart';
import 'package:market_home/src/presentation/widgets/market_cart_bottom_bar.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketCategoryPage extends HookWidget {
  const MarketCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketCategoryBloc>();
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        final position = scrollController.position;
        if (position.pixels >= position.maxScrollExtent - 240) {
          bloc.add(MarketCategoryEvent.loadMore());
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    final topPadding =
        GradientAppBar.navbarHeight + MediaQuery.paddingOf(context).top + 16;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
        widget: BlocBuilder<MarketCategoryBloc, MarketCategoryState>(
          bloc: bloc,
          buildWhen: (previous, current) =>
              previous.categoryName != current.categoryName ||
              previous.productCount != current.productCount,
          builder: (context, state) => _title(
            context,
            name: state.categoryName,
            productCount: state.productCount,
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<MarketCategoryBloc, MarketCategoryState>(
        bloc: bloc,
        buildWhen: (previous, current) =>
            previous.cartCount != current.cartCount ||
            previous.cartTotal != current.cartTotal,
        builder: (context, state) => state.cartCount == 0
            ? SizedBox(height: MediaQuery.paddingOf(context).bottom)
            : MarketCartBottomBar(
                total: state.cartTotal,
                onTap: () => context.market.goMarketBasket(),
              ),
      ),
      body: BlocConsumer<MarketCategoryBloc, MarketCategoryState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state.loadFailed &&
              state.products.isEmpty &&
              !state.isFirstLoading) {
            return Center(
              child: MarketHomeErrorView(
                onRefresh: () => bloc.add(MarketCategoryEvent.refresh()),
              ),
            );
          }

          return RefreshIndicator.adaptive(
            displacement: topPadding,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            onRefresh: () async {
              bloc.add(MarketCategoryEvent.refresh());
              await bloc.stream.firstWhere((state) => !state.isRefreshing);
            },
            child: CustomScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: topPadding)),
                SliverToBoxAdapter(
                  child: _sortRow(
                    context,
                    sort: state.sort,
                    onTap: () => _openSortSheet(context, state.sort, bloc),
                  ),
                ),
                SliverStack(
                  children: [
                    SliverPositioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: context.appColors.background.elevation1,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                      ),
                    ),
                    MultiSliver(children: _sheetSlivers(context, state, bloc)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _title(
    BuildContext context, {
    required String name,
    required int productCount,
  }) {
    final colors = context.appColors;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 2,
      children: [
        Text(
          name,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).labelMd(color: colors.textIconColor.primary),
        if (productCount > 0)
          Text(
            context.localization.market_category_products_count(productCount),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodySm(color: colors.textIconColor.tertiary),
      ],
    );
  }

  Widget _sortRow(
    BuildContext context, {
    required MarketProductSort sort,
    required VoidCallback onTap,
  }) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Row(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
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

  List<Widget> _sheetSlivers(
    BuildContext context,
    MarketCategoryState state,
    MarketCategoryBloc bloc,
  ) {
    const bottomPadding = 16.0;

    if (state.isFirstLoading) {
      return [
        const SliverToBoxAdapter(child: MarketSearchGridShimmer()),
        SliverToBoxAdapter(child: SizedBox(height: bottomPadding)),
      ];
    }

    if (state.products.isEmpty) {
      return [
        const SliverToBoxAdapter(child: MarketSearchEmptyView()),
        SliverToBoxAdapter(child: SizedBox(height: bottomPadding)),
      ];
    }

    return [
      _grid(context, state.products, bloc),
      if (state.isLoadingMore)
        const SliverToBoxAdapter(child: MarketSearchGridShimmer(itemCount: 2)),
      SliverToBoxAdapter(child: SizedBox(height: bottomPadding)),
    ];
  }

  Widget _grid(
    BuildContext context,
    List<MarketProduct> products,
    MarketCategoryBloc bloc,
  ) {
    final cardWidth = (MediaQuery.sizeOf(context).width - 48) / 2;

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: cardWidth + 84,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductCard(
            key: ValueKey(product.id),
            images: product.photos,
            title: product.name,
            priceText: product.price.amountFormatted(),
            currency: context.localization.market_currency_som,
            isFavorite: product.isFavorite,
            onFavoriteTap: () =>
                bloc.add(MarketCategoryEvent.toggleFavorite(product: product)),
            cartCount: product.cartQuantity,
            onCartCountChanged: (quantity) => bloc.add(
              MarketCategoryEvent.changeCartQuantity(
                product: product,
                quantity: quantity,
              ),
            ),
            onTap: () =>
                context.market.pushMarketProductDetail(productId: product.id),
          );
        },
      ),
    );
  }

  Future<void> _openSortSheet(
    BuildContext context,
    MarketProductSort selected,
    MarketCategoryBloc bloc,
  ) async {
    final sort = await MarketSearchSortSheet.show(context, selected: selected);
    if (sort == null) return;
    bloc.add(MarketCategoryEvent.changeSort(sort));
  }
}
