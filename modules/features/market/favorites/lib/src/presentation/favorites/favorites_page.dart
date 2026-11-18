import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:favorites/src/core/extension.dart';
import 'package:favorites/src/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:favorites/src/presentation/favorites/widgets/shimmer/favorites_grid_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class FavoritesPage extends HookWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    final bloc = context.read<FavoritesBloc>();
    final topInset = MediaQuery.paddingOf(context).top;
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBody: true,
      body: CupertinoTheme(
        data: CupertinoThemeData(
          brightness: context.brightness,
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: CustomTypography.H1.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
            navTitleTextStyle: CustomTypography.labelLg.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
          ),
        ),
        child: BlocConsumer<FavoritesBloc, FavoritesState>(
          bloc: bloc,
          listenWhen: (previous, current) =>
              current.errorMessage != null &&
              previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return RefreshIndicator.adaptive(
              displacement: topInset + kToolbarHeight,
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              onRefresh: () async {
                bloc.add(FavoritesEvent.loadData());
                await bloc.stream.firstWhere((state) => !state.isLoading);
              },
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverStack(
                    children: [
                      SliverPersistentHeader(
                        delegate: BlurHeaderDelegate(
                          kToolbarHeight + topInset,
                          gradientColor:
                              context.appColors.background.underlayer,
                        ),
                        pinned: true,
                      ),
                      CupertinoSliverNavigationBar(
                        largeTitle: Text(
                          context.localization.favorites_title,
                        ),
                        border: null,
                        stretch: true,
                        brightness: context.brightness,
                        backgroundColor: Colors.transparent,
                        enableBackgroundFilterBlur: false,
                        trailing: Row(mainAxisSize: MainAxisSize.min),
                      ),
                    ],
                  ),
                  ..._body(context, bloc, state, bottomInset),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _body(
    BuildContext context,
    FavoritesBloc bloc,
    FavoritesState state,
    double bottomInset,
  ) {
    final padding = const EdgeInsets.symmetric(
      horizontal: 16,
    ).copyWith(top: 8, bottom: bottomInset + 16);

    if (state.isEmpty && state.isLoading) {
      return [
        SliverPadding(
          padding: padding,
          sliver: const SliverToBoxAdapter(child: FavoritesGridShimmer()),
        ),
      ];
    }

    if (state.isEmpty && state.loadFailed) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Transform.translate(
            offset: const Offset(0, -kToolbarHeight),
            child: Center(
              child: _errorView(
                context,
                onRefresh: () => bloc.add(FavoritesEvent.loadData()),
              ),
            ),
          ),
        ),
      ];
    }

    if (state.isEmpty) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Transform.translate(
            offset: const Offset(0, -kToolbarHeight),
            child: Center(child: _emptyView(context)),
          ),
        ),
      ];
    }

    return [
      SliverPadding(
        padding: padding,
        sliver: SliverToBoxAdapter(
          child: _grid(context, state.products, bloc),
        ),
      ),
    ];
  }

  Widget _grid(
    BuildContext context,
    List<MarketProduct> products,
    FavoritesBloc bloc,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = (constraints.maxWidth - 16) / 2;

          return Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              for (final product in products)
                SizedBox(
                  width: cardWidth,
                  child: ProductCard(
                    key: ValueKey(product.id),
                    images: product.photos,
                    title: product.name,
                    priceText: product.price.amountFormatted(),
                    currency: context.localization.favorites_currency_som,
                    isFavorite: product.isFavorite,
                    onFavoriteTap: () => bloc.add(
                      FavoritesEvent.toggleFavorite(product: product),
                    ),
                    cartCount: product.cartQuantity,
                    onCartCountChanged: (quantity) => bloc.add(
                      FavoritesEvent.changeCartQuantity(
                        product: product,
                        quantity: quantity,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _emptyView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MessageContainer.custom(
        icon: Assets.svg.outlineHeard.path.toSvgImage(
          fit: BoxFit.contain,
          tintColor: context.appColors.textIconColor.secondary,
        ),
        title: context.localization.favorites_empty,
        caption: context.localization.favorites_empty_message,
      ),
    );
  }

  Widget _errorView(BuildContext context, {required VoidCallback onRefresh}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24,
        children: [
          MessageContainer.custom(
            icon: Assets.png.exclamationmarkSquare.image(),
            title: context.localization.favorites_page_failed_to_load,
            caption: context.localization.favorites_something_went_wrong,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 48,
            child: FilledButton(
              onPressed: onRefresh,
              style: FilledButton.styleFrom(
                elevation: 0,
                textStyle: CustomTypography.bodyLg,
                foregroundColor: context.appColors.textIconColor.primary,
                backgroundColor: context.appColors.fill.quaternary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(context.localization.favorites_refresh),
            ),
          ),
        ],
      ),
    );
  }
}
