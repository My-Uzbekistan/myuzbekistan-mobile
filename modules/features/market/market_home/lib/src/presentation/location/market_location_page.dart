import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/home/widgets/market_home_error_view.dart';
import 'package:market_home/src/presentation/location/bloc/market_location_bloc.dart';
import 'package:market_home/src/presentation/location/widgets/shimmer/market_location_shimmer.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketLocationPage extends StatelessWidget {
  const MarketLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MarketLocationBloc>();
    final padding = EdgeInsets.only(
      top: GradientAppBar.navbarHeight + MediaQuery.paddingOf(context).top + 8,
      bottom: MediaQuery.paddingOf(context).bottom + 16,
    );

    return Scaffold(
      backgroundColor: context.appColors.background.base,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.market_city_title,
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
      ),
      body: BlocConsumer<MarketLocationBloc, MarketLocationState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state.cities.isEmpty && state.isLoading) {
            return SingleChildScrollView(
              padding: padding,
              child: const MarketLocationShimmer(),
            );
          }

          if (state.cities.isEmpty && state.loadFailed) {
            return Center(
              child: MarketHomeErrorView(
                onRefresh: () => bloc.add(
                  MarketLocationEvent.start(
                    selectedCityId: state.selectedCityId,
                  ),
                ),
              ),
            );
          }

          return ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            padding: padding,
            children: [
              for (final city in state.cities)
                _cell(
                  context,
                  city: city,
                  isSelected: city.id == state.selectedCityId,
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _cell(
    BuildContext context, {
    required MarketCity city,
    required bool isSelected,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.pop(city),
      child: Container(
        constraints: const BoxConstraints(minHeight: 56),
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              child: Text(
                city.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: context.appColors.textIconColor.primary),
            ),
            if (isSelected)
              SizedBox.square(
                dimension: 24,
                child: Center(
                  child: Assets.svg.iconCheck.path.toSvgImage(
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                    tintColor: context.appColors.brand,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
