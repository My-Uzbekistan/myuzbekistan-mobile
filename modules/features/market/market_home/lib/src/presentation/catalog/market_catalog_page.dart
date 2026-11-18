import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/catalog/bloc/market_catalog_bloc.dart';
import 'package:market_home/src/presentation/catalog/widgets/shimmer/market_catalog_grid_shimmer.dart';
import 'package:market_home/src/presentation/home/widgets/market_catalog_tile.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketCatalogPage extends StatelessWidget {
  const MarketCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketCatalogBloc>();
    final padding = EdgeInsets.only(
      top: GradientAppBar.navbarHeight + MediaQuery.paddingOf(context).top + 16,
      bottom: MediaQuery.paddingOf(context).bottom + 16,
    );

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.market_catalog,
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
      ),
      body: BlocConsumer<MarketCatalogBloc, MarketCatalogState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final isEmpty = state.categories.isEmpty;

          if (state.loadFailed && isEmpty && !state.isLoading) {
            return Center(
              child: MarketHomeErrorView(
                onRefresh: () => bloc.add(MarketCatalogEvent.loadData()),
              ),
            );
          }

          if (isEmpty && state.isLoading) {
            return SingleChildScrollView(
              padding: padding,
              child: const MarketCatalogGridShimmer(),
            );
          }

          return RefreshIndicator.adaptive(
            displacement: padding.top,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            onRefresh: () async {
              bloc.add(MarketCatalogEvent.loadData());
              await bloc.stream.firstWhere((state) => !state.isLoading);
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: padding,
              child: _grid(context, state.categories),
            ),
          );
        },
      ),
    );
  }

  Widget _grid(BuildContext context, List<MarketCategory> categories) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final tileWidth = (constraints.maxWidth - 8) / 2;

          return Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final category in categories)
                SizedBox(
                  width: tileWidth,
                  child: MarketCatalogTile(
                    category: category,
                    onTap: () => context.market.pushMarketCategory(
                      categoryId: category.id,
                      categoryName: category.name,
                      productCount: category.productCount,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
