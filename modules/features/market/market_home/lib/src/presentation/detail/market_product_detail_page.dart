import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/detail/bloc/market_product_detail_bloc.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_about.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_actions.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_bottom_bar.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_delivery.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_gallery.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_section.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_seller.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_summary.dart';
import 'package:market_home/src/presentation/detail/widgets/shimmer/market_detail_shimmer.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketProductDetailPage extends HookWidget {
  const MarketProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketProductDetailBloc>();
    final scrollController = useScrollController();
    final isCollapsed = useState(false);

    final topInset = MediaQuery.paddingOf(context).top;
    final galleryHeight = MediaQuery.sizeOf(context).width * 389 / 375;
    final collapseOffset = galleryHeight - kToolbarHeight - topInset;

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;
        isCollapsed.value = scrollController.offset > collapseOffset;
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, collapseOffset]);

    return BlocConsumer<MarketProductDetailBloc, MarketProductDetailState>(
      bloc: bloc,
      listenWhen: (previous, current) =>
          (current.errorMessage != null &&
              previous.errorMessage != current.errorMessage) ||
          (current.isReadyForCheckout && !previous.isReadyForCheckout),
      listener: (context, state) {
        if (state.isReadyForCheckout) {
          context.market.pushMarketCheckout();
          return;
        }
        Toast.showToast(state.errorMessage!);
      },
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        final detail = state.detail;
        final hasFailed = detail == null && state.loadFailed && !state.isLoading;

        return Scaffold(
          backgroundColor: context.appColors.background.underlayer,
          body: hasFailed
              ? Stack(
                  children: [
                    Center(
                      child: MarketHomeErrorView(
                        onRefresh: () =>
                            bloc.add(MarketProductDetailEvent.refresh()),
                      ),
                    ),
                    _actions(context, bloc, detail),
                  ],
                )
              : Stack(
                  children: [
                    RefreshIndicator.adaptive(
                      displacement: topInset + kToolbarHeight,
                      triggerMode: RefreshIndicatorTriggerMode.anywhere,
                      onRefresh: () async {
                        bloc.add(MarketProductDetailEvent.refresh());
                        await bloc.stream.firstWhere(
                          (state) => !state.isRefreshing,
                        );
                      },
                      child: CustomScrollView(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        slivers: [
                          SliverStack(
                            children: [
                              SliverAppBar(
                                expandedHeight: galleryHeight,
                                stretch: true,
                                stretchTriggerOffset: 0.9,
                                automaticallyImplyLeading: false,
                                scrolledUnderElevation: 0,
                                elevation: 0,
                                shadowColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                systemOverlayStyle: context.systemUiOverlyStyle
                                    .copyWith(
                                      statusBarBrightness: Brightness.dark,
                                    ),
                                flexibleSpace: FlexibleSpaceBar(
                                  collapseMode: CollapseMode.parallax,
                                  stretchModes: const [
                                    StretchMode.zoomBackground,
                                  ],
                                  background: MarketDetailGallery(
                                    photos: detail?.photos ?? const [],
                                  ),
                                ),
                              ),
                              if (isCollapsed.value)
                                SliverPinnedHeader(
                                  child: SizedBox(
                                    height: kToolbarHeight + topInset,
                                    child: AppGradientMask(
                                      gradientColor: context
                                          .appColors
                                          .background
                                          .underlayer,
                                    ),
                                  ),
                                ),
                              SliverPositioned.fill(
                                bottom: -1,
                                top: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      child: Container(
                                        height: 20,
                                        color: context
                                            .appColors
                                            .background
                                            .elevation1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SliverToBoxAdapter(
                            child: detail == null
                                ? const MarketDetailShimmer()
                                : _sections(context, bloc, state, detail),
                          ),
                          const SliverToBoxAdapter(
                            child: SizedBox(height: 8),
                          ),
                        ],
                      ),
                    ),
                    _actions(context, bloc, detail),
                  ],
                ),
          bottomNavigationBar: detail == null
              ? null
              : MarketDetailBottomBar(
                  detail: detail,
                  onBuyNow: () => bloc.add(MarketProductDetailEvent.buyNow()),
                  onCartQuantityChanged: (quantity) => bloc.add(
                    MarketProductDetailEvent.changeCartQuantity(
                      quantity: quantity,
                    ),
                  ),
                ),
        );
      },
    );
  }

  Widget _actions(
    BuildContext context,
    MarketProductDetailBloc bloc,
    MarketProductDetail? detail,
  ) {
    return MarketDetailActions(
      isFavorite: detail?.isFavorite ?? false,
      onBack: () => context.pop(),
      onShareTap: detail == null ? null : () => _shareProduct(context, detail),
      onFavoriteTap: detail == null
          ? null
          : () => bloc.add(MarketProductDetailEvent.toggleFavorite()),
    );
  }

  Future<void> _shareProduct(
    BuildContext context,
    MarketProductDetail detail,
  ) async {
    final failureText = context.localization.market_something_went_wrong;
    final shared = await AppShare.link(
      context,
      url: AppLinkRouter.shareLink(
        AppNavPath.market.marketProductDetail,
        queryParameters: {"productId": "${detail.id}"},
      ),
      title: detail.name,
    );
    if (!shared) Toast.showToast(failureText);
  }

  Widget _sections(
    BuildContext context,
    MarketProductDetailBloc bloc,
    MarketProductDetailState state,
    MarketProductDetail detail,
  ) {
    return Column(
      children: [
        MarketDetailSection(
          squareTop: true,
          child: MarketDetailSummary(detail: detail),
        ),
        if (detail.description.isNotEmpty)
          MarketDetailSection(
            title: context.localization.market_detail_about,
            child: MarketDetailAbout(description: detail.description),
          ),
        if (detail.delivery.isNotEmpty)
          MarketDetailSection(
            title: context.localization.market_detail_delivery,
            child: MarketDetailDelivery(
              methods: detail.delivery,
              selectedId: state.selectedDeliveryId,
              onSelect: (deliveryId) => bloc.add(
                MarketProductDetailEvent.selectDelivery(
                  deliveryId: deliveryId,
                ),
              ),
            ),
          ),
        if (detail.seller != null)
          MarketDetailSection(
            title: context.localization.market_detail_seller,
            child: MarketDetailSeller(seller: detail.seller!),
          ),
      ],
    );
  }
}
