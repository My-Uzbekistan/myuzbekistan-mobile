import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/bloc/basket_bloc.dart';
import 'package:basket/src/presentation/basket/widgets/basket_checkbox.dart';
import 'package:basket/src/presentation/basket/widgets/basket_error_view.dart';
import 'package:basket/src/presentation/basket/widgets/basket_price_details.dart';
import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:basket/src/presentation/basket/widgets/basket_seller_section.dart';
import 'package:basket/src/presentation/basket/widgets/shimmer/basket_shimmer.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class BasketPage extends HookWidget {
  const BasketPage({super.key, this.onCheckout});

  final VoidCallback? onCheckout;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    final bloc = context.read<BasketBloc>();
    final topInset = MediaQuery.paddingOf(context).top;
    final bottomInset = MediaQuery.paddingOf(context).bottom + 16;

    void openProductDetail(CartItem item) {
      context.market
          .pushMarketProductDetail(productId: item.productId)
          .whenComplete(() => bloc.add(BasketEvent.loadData()));
    }

    void confirmRemoveSelected() {
      showActionAlertDialog(
        context,
        title: context.localization.basket_clear_title,
        message: context.localization.basket_clear_message,
        firstActionText: context.localization.basket_clear_confirm,
        firstButtonTextColor: context.appColors.colors.red,
        secondActionText: context.localization.basket_cancel,
        onFirstButtonClick: () => bloc.add(BasketEvent.removeSelected()),
      );
    }

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
        child: BlocConsumer<BasketBloc, BasketState>(
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
                bloc.add(BasketEvent.loadData());
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
                        largeTitle: Text(context.localization.basket_title),
                        border: null,
                        stretch: true,
                        brightness: context.brightness,
                        backgroundColor: Colors.transparent,
                        enableBackgroundFilterBlur: false,
                        trailing: Row(mainAxisSize: MainAxisSize.min),
                      ),
                    ],
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 8),
                  ),
                  ..._body(
                    context,
                    bloc,
                    state,
                    confirmRemoveSelected,
                    openProductDetail,
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: bottomInset)),
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
    BasketBloc bloc,
    BasketState state,
    VoidCallback onRemoveSelected,
    ValueChanged<CartItem> onItemTap,
  ) {
    if (state.isEmpty && state.isLoading) {
      return const [SliverToBoxAdapter(child: BasketShimmer())];
    }

    if (state.isEmpty && state.loadFailed && !state.isLoading) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Transform.translate(
            offset: const Offset(0, -kToolbarHeight),
            child: Center(
              child: BasketErrorView(
                onRefresh: () => bloc.add(BasketEvent.loadData()),
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
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: _selectAllBar(
            context,
            allSelected: state.allSelected,
            selectedCount: state.selectedCount,
            onToggleAll: () => bloc.add(BasketEvent.toggleAll()),
            onRemoveSelected: state.hasSelection ? onRemoveSelected : null,
          ),
        ),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 16)),
      for (var index = 0; index < state.sellers.length; index++) ...[
        if (index > 0)
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: BasketSellerSection(
            key: ValueKey(state.sellers[index].id),
            seller: state.sellers[index],
            onToggleSeller: () => bloc.add(
              BasketEvent.toggleSeller(seller: state.sellers[index]),
            ),
            onQuantityChanged: (item, quantity) => bloc.add(
              BasketEvent.changeQuantity(item: item, quantity: quantity),
            ),
            onRemoveItem: (item) =>
                bloc.add(BasketEvent.removeItem(item: item)),
            onItemTap: onItemTap,
          ),
        ),
      ],
      const SliverToBoxAdapter(child: SizedBox(height: 16)),
      SliverToBoxAdapter(
        child: BasketPriceDetails(
          productCount: state.selectedCount,
          total: state.selectedTotal,
        ),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 16)),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AppActionButton(
            actionText: context.localization.basket_checkout,
            sizeType: ActionButtonSizeType.large,
            onPressed: state.hasSelection ? onCheckout : null,
          ),
        ),
      ),
    ];
  }

  Widget _selectAllBar(
    BuildContext context, {
    required bool allSelected,
    required int selectedCount,
    required VoidCallback onToggleAll,
    required VoidCallback? onRemoveSelected,
  }) {
    final hasSelection = selectedCount > 0;

    return Row(
      children: [
        BasketCheckbox(isChecked: allSelected, onTap: onToggleAll),
        const SizedBox(width: 8),
        Expanded(
          child: hasSelection
              ? Text(
                  context.localization.basket_products_count(selectedCount),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelLg(color: context.appColors.textIconColor.primary)
              : Text(
                  context.localization.basket_select_all,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelLg(color: context.appColors.textIconColor.tertiary),
        ),
        BasketRoundChip(
          size: 32,
          onTap: onRemoveSelected,
          icon: Assets.svg.iconTrashCanLine.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: hasSelection
                ? context.appColors.colors.red
                : context.appColors.textIconColor.disable,
          ),
        ),
      ],
    );
  }

  Widget _emptyView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Assets.svg.basketCross.path.toSvgImage(
            width: 67.76,
            height: 62.55,
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.tertiary,
          ),
          Column(
            spacing: 8,
            children: [
              Text(
                context.localization.basket_empty_title,
                textAlign: TextAlign.center,
              ).h2(color: context.appColors.textIconColor.primary),
              Text(
                context.localization.basket_empty_subtitle,
                textAlign: TextAlign.center,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ],
      ),
    );
  }
}
