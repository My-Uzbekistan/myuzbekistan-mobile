import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/home/bloc/market_home_bloc.dart';
import 'package:market_home/src/presentation/home/header/market_home_header.dart';
import 'package:market_home/src/presentation/home/widgets/market_catalog_section.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:market_home/src/presentation/home/widgets/market_products_section.dart';
import 'package:market_home/src/presentation/home/widgets/shimmer/market_catalog_shimmer.dart';
import 'package:market_home/src/presentation/home/widgets/shimmer/market_products_shimmer.dart';
import 'package:market_home/src/presentation/widgets/market_cart_fab.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketHomePage extends HookWidget {
  const MarketHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    final bloc = context.read<MarketHomeBloc>();
    final isTabActive = TickerMode.valuesOf(context).enabled;
    final isScrolling = useState(false);

    useEffect(() {
      if (isTabActive) bloc.add(MarketHomeEvent.loadCart());
      return null;
    }, [isTabActive]);

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<MarketHomeBloc, MarketHomeState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final isEmpty = state.categories.isEmpty && state.blocks.isEmpty;

          if (state.loadFailed && isEmpty && !state.isLoading) {
            return Center(
              child: MarketHomeErrorView(
                onRefresh: () => bloc.add(MarketHomeEvent.loadData()),
              ),
            );
          }

          return Stack(
            children: [
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.depth == 0) {
                    if (notification is ScrollStartNotification) {
                      isScrolling.value = true;
                    } else if (notification is ScrollEndNotification) {
                      isScrolling.value = false;
                    }
                  }
                  return false;
                },
                child: RefreshIndicator.adaptive(
                  displacement: 100,
                  triggerMode: RefreshIndicatorTriggerMode.anywhere,
                  onRefresh: () async {
                    bloc.add(MarketHomeEvent.loadData());
                    bloc.add(MarketHomeEvent.loadCart());
                    await bloc.stream.firstWhere((state) => !state.isLoading);
                  },
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      MarketHomeHeader(
                        regionName: state.city?.name ?? "",
                        onRegionTap: () => _openLocation(context, bloc),
                        onCatalogTap: () => _syncCartAfter(
                          bloc,
                          context.market.pushMarketSearch(),
                        ),
                        onSearchTap: () => _syncCartAfter(
                          bloc,
                          context.market.pushMarketSearch(),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 8)),
                      if (state.categories.isNotEmpty)
                        MarketCatalogSection(
                          title: context.localization.market_catalog,
                          categories: state.categories,
                          onSeeAll: () => _syncCartAfter(
                            bloc,
                            context.market.pushMarketCatalog(),
                          ),
                          onCategoryTap: (category) => _syncCartAfter(
                            bloc,
                            context.market.pushMarketCategory(
                              categoryId: category.id,
                              categoryName: category.name,
                              productCount: category.productCount,
                            ),
                          ),
                        )
                      else if (state.isLoading)
                        const MarketCatalogShimmer(),
                      for (final block in state.blocks)
                        MarketProductsSection(
                          block: block,
                          onSeeAll: () => _syncCartAfter(
                            bloc,
                            context.market.pushMarketBlock(
                              blockKey: block.key,
                              title: block.title,
                            ),
                          ),
                          onFavoriteTap: (product) => bloc.add(
                            MarketHomeEvent.toggleFavorite(product: product),
                          ),
                          onCartQuantityChanged: (product, quantity) =>
                              bloc.add(
                                MarketHomeEvent.changeCartQuantity(
                                  product: product,
                                  quantity: quantity,
                                ),
                              ),
                          onProductTap: (product) => _syncCartAfter(
                            bloc,
                            context.market.pushMarketProductDetail(
                              productId: product.id,
                            ),
                          ),
                        ),
                      if (state.blocks.isEmpty && state.isLoading) ...[
                        const MarketProductsShimmer(),
                        const MarketProductsShimmer(),
                      ],
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: MediaQuery.paddingOf(context).bottom + 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: MediaQuery.paddingOf(context).bottom + 12,
                child: MarketCartFab(
                  title: state.cartTitle,
                  visible: state.cartCount > 0 && !isScrolling.value,
                  onTap: () => context.market.goMarketBasket(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _syncCartAfter(MarketHomeBloc bloc, Future<Object?> navigation) {
    navigation.whenComplete(() => bloc.add(MarketHomeEvent.loadCart()));
  }

  Future<void> _openLocation(BuildContext context, MarketHomeBloc bloc) async {
    final city = await context.market.pushMarketLocation(
      selectedCityId: bloc.state.city?.id,
    );
    if (city == null) return;
    bloc.add(MarketHomeEvent.selectCity(city: city));
  }
}
