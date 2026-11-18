import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:market_home/src/presentation/orders/bloc/market_orders_bloc.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_card.dart';
import 'package:market_home/src/presentation/orders/widgets/market_orders_empty_view.dart';
import 'package:market_home/src/presentation/orders/widgets/shimmer/market_orders_shimmer.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketOrdersPage extends StatelessWidget {
  const MarketOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketOrdersBloc>();
    final topPadding =
        GradientAppBar.navbarHeight +
        MediaQuery.paddingOf(context).top +
        16;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
        widget: BlocBuilder<MarketOrdersBloc, MarketOrdersState>(
          bloc: bloc,
          buildWhen: (previous, current) => previous.group != current.group,
          builder: (context, state) =>
              Text(_title(context, state.group)).labelLg(
                color: context.appColors.textIconColor.primary,
              ),
        ),
      ),
      body: BlocConsumer<MarketOrdersBloc, MarketOrdersState>(
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
              bloc.add(MarketOrdersEvent.loadData());
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
                    height:
                        MediaQuery.paddingOf(context).bottom + 16,
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
    MarketOrdersBloc bloc,
    MarketOrdersState state,
  ) {
    if (state.isEmpty && state.isLoading) {
      return const [SliverToBoxAdapter(child: MarketOrdersShimmer())];
    }

    if (state.isEmpty && state.loadFailed) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: MarketHomeErrorView(
              onRefresh: () => bloc.add(MarketOrdersEvent.loadData()),
            ),
          ),
        ),
      ];
    }

    if (state.isEmpty) {
      return const [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: MarketOrdersEmptyView()),
        ),
      ];
    }

    return [
      for (var index = 0; index < state.orders.length; index++) ...[
        if (index > 0)
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: MarketOrderCard(
            key: ValueKey(state.orders[index].id),
            order: state.orders[index],
            isExpanded: state.isExpanded(state.orders[index].id),
            onToggleDetails: () => bloc.add(
              MarketOrdersEvent.toggleDetails(orderId: state.orders[index].id),
            ),
            onTap: () => context.market.pushMarketOrderDetail(
              orderId: state.orders[index].id,
            ),
          ),
        ),
      ],
    ];
  }

  String _title(BuildContext context, MarketOrderGroup group) =>
      switch (group) {
        MarketOrderGroup.active => context.localization.market_profile_orders,
        MarketOrderGroup.purchased =>
          context.localization.market_profile_purchased,
        MarketOrderGroup.returned => context.localization.market_profile_returns,
      };
}
