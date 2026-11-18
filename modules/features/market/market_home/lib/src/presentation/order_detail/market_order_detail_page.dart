import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:market_home/src/presentation/order_detail/bloc/market_order_detail_bloc.dart';
import 'package:market_home/src/presentation/order_detail/widgets/market_order_detail_card.dart';
import 'package:market_home/src/presentation/order_detail/widgets/market_order_detail_items_card.dart';
import 'package:market_home/src/presentation/order_detail/widgets/shimmer/market_order_detail_shimmer.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_status_chip.dart';
import 'package:market_home/src/presentation/orders/widgets/wizard/market_order_wizard.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketOrderDetailPage extends StatelessWidget {
  const MarketOrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketOrderDetailBloc>();
    final topPadding =
        GradientAppBar.navbarHeight + MediaQuery.paddingOf(context).top + 16;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
        widget: BlocBuilder<MarketOrderDetailBloc, MarketOrderDetailState>(
          bloc: bloc,
          buildWhen: (previous, current) =>
              previous.order?.orderNumber != current.order?.orderNumber,
          builder: (context, state) {
            final order = state.order;
            if (order == null) return const SizedBox.shrink();

            return Text(
              context.localization.market_order_title(order.orderNumber),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: context.appColors.textIconColor.primary);
          },
        ),
      ),
      body: BlocConsumer<MarketOrderDetailBloc, MarketOrderDetailState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            displacement: topPadding,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            onRefresh: () async {
              bloc.add(MarketOrderDetailEvent.loadData());
              await bloc.stream.firstWhere((state) => !state.isLoading);
            },
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: topPadding)),
                ..._body(context, bloc, state),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.paddingOf(context).bottom + 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _body(
    BuildContext context,
    MarketOrderDetailBloc bloc,
    MarketOrderDetailState state,
  ) {
    final order = state.order;

    if (order == null && state.loadFailed) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: MarketHomeErrorView(
              onRefresh: () => bloc.add(MarketOrderDetailEvent.loadData()),
            ),
          ),
        ),
      ];
    }

    if (order == null) {
      return const [SliverToBoxAdapter(child: MarketOrderDetailShimmer())];
    }

    return [
      SliverToBoxAdapter(
        child: state.isCancelled
            ? _statusCard(context, order)
            : MarketOrderWizard(steps: order.steps),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 8)),
      SliverToBoxAdapter(
        child: MarketOrderDetailCard(
          order: order,
          isExpanded: state.isDetailsExpanded,
          onToggle: () => bloc.add(MarketOrderDetailEvent.toggleDetails()),
        ),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 8)),
      SliverToBoxAdapter(child: MarketOrderDetailItemsCard(order: order)),
      if (order.canCancel) ...[
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: _cancelButton(context, bloc, state)),
      ],
    ];
  }

  Widget _statusCard(BuildContext context, MarketOrder order) {
    final langCode = Localizations.localeOf(context).languageCode;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          MarketOrderStatusChip(order: order),
          Text(
            order.createdAt.toFormatDMMMY(langCode),
          ).bodySm(color: context.appColors.textIconColor.secondary),
        ],
      ),
    );
  }

  Widget _cancelButton(
    BuildContext context,
    MarketOrderDetailBloc bloc,
    MarketOrderDetailState state,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppActionButton(
        actionText: context.localization.market_order_cancel_action,
        sizeType: ActionButtonSizeType.large,
        type: ActionButtonType.secondary,
        containerColor: context.appColors.background.elevation1,
        contentColor: context.appColors.colors.red,
        isLoading: state.isCancelling,
        onPressed: () => showActionAlertDialog(
          context,
          title: context.localization.market_order_cancel_title,
          message: context.localization.market_order_cancel_message,
          firstActionText: context.localization.market_order_cancel_action,
          firstButtonTextColor: context.appColors.colors.red,
          secondActionText: context.localization.market_order_cancel_keep,
          onFirstButtonClick: () =>
              bloc.add(MarketOrderDetailEvent.cancelOrder()),
        ),
      ),
    );
  }
}
