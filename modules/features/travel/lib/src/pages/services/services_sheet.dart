import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';

import 'bloc/services_cubit.dart';
import 'service_item_mapper.dart';
import 'widgets/service_feature_rows.dart';
import 'widgets/service_small_grid.dart';
import 'widgets/services_shimmer.dart';

class ServicesSheet extends StatelessWidget {
  const ServicesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.elevation1,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 72,
        centerTitle: true,
        gradientColor: context.appColors.background.elevation1,
        widget: const SizedBox(
          height: 72,
          child: Align(alignment: Alignment.topCenter, child: SheetGrabber()),
        ),
        actions: [
          RoundedButton.closeButton(onPressed: () => context.pop()),
        ],
      ),
      body: SafeArea(
        top: false,
        child: BlocConsumer<ServicesCubit, ServicesState>(
          listenWhen: (prev, cur) =>
              cur.errorMessage != null &&
              prev.errorMessage != cur.errorMessage,
          listener: (context, state) {
            if (state.errorMessage != null) {
              Toast.showToast(state.errorMessage!);
            }
          },
          builder: (context, state) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(
                    16,
                    80,
                    16,
                    32,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.localization.nav_services).h2(),
                        const SizedBox(height: 24),
                        if (state.services.isEmpty && state.isLoading)
                          const ServicesShimmer(rows: 4)
                        else
                          ..._buildRows(context, state.services),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildRows(
    BuildContext context,
    List<CatalogItemModel> services,
  ) {
    final widgets = buildServiceFeatureRows(context, services);

    if (services.length > 6) {
      widgets.add(const SizedBox(height: 12));
      widgets.add(
        ServiceSmallGrid(
          items: [
            for (var i = 6; i < services.length; i++)
              services[i].toServiceItem(context),
          ],
        ),
      );
    }
    return widgets;
  }
}
