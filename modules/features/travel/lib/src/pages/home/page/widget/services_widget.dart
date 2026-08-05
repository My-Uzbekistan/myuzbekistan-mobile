import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:travel/src/core/extension.dart';

import '../../../services/catalog_action.dart';
import '../../../services/service_item.dart';
import '../../../services/widgets/service_tiles.dart';


class ServicesWidget extends StatelessWidget {
  final List<CatalogItemModel> services;

  const ServicesWidget({super.key, required this.services});


  @override
  Widget build(BuildContext context) {
    void openAll() => context.travel.pushServices(services);

    return SliverToBoxAdapter(
      child: _card(
        context,
        openAll,
        child: services.isEmpty
            ? _loading()
            : Column(children: _rows(context, services)),
      ),
    );
  }

  List<Widget> _rows(BuildContext context, List<CatalogItemModel> items) {
    ServiceItem featuredOf(CatalogItemModel m) => ServiceItem(
          title: m.title,
          iconUrl: m.icon,
          color: context.appColors.fill.quaternary,
          featured: true,
          onTap: () => openCatalogItem(context, m),
        );

    ServiceItem smallOf(CatalogItemModel m) => ServiceItem(
          title: m.title,
          iconUrl: m.icon,
          color: context.appColors.fill.quaternary,
          onTap: () => openCatalogItem(context, m),
        );

    final rows = <Widget>[];
    for (var i = 0; i < items.length && rows.length < 2; i += 3) {
      final s1 = i + 1 < items.length ? items[i + 1] : null;
      final s2 = i + 2 < items.length ? items[i + 2] : null;
      if (rows.isNotEmpty) rows.add(const SizedBox(height: 16));
      rows.add(
        ServiceFeatureRow(
          feature: featuredOf(items[i]),
          small1: s1 == null ? null : smallOf(s1),
          small2: s2 == null ? null : smallOf(s2),
        ),
      );
    }
    return rows;
  }

  Widget _card(
    BuildContext context,
    VoidCallback openAll, {
    required Widget child,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.fill.quaternary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.localization.nav_services).h3(),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: openAll,
                child: Text(context.localization.action_all)
                    .bodyLg(color: context.appColors.brandSeaBlue),
              ),
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _loading() {
    return Shimmer.fromDefault(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShimmerDefaultContainer(height: 88),
          const SizedBox(height: 16),
          ShimmerDefaultContainer(height: 88),
        ],
      ),
    );
  }
}
