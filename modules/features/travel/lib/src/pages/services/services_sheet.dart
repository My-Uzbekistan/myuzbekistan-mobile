import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'catalog_action.dart';
import 'service_item.dart';
import 'widgets/service_tiles.dart';

/// "Сервисы" to'liq ro'yxati — pastdan ochiluvchi sheet (route orqali,
/// reklama sheet uslubida — yopish tugmasi yo'q).
///
/// Ma'lumot `catalog-v3` ([CatalogItemModel]) dan keladi. Element bosilganda
/// havola ochiladi ([openCatalogItem]).
class ServicesSheet extends StatelessWidget {
  final List<CatalogItemModel> services;

  const ServicesSheet({super.key, required this.services});


  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: context.appColors.background.elevation1,
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        widget: const SizedBox(),
        actions: [
          RoundedButton.closeButton(onPressed: () => context.pop()),
        ],
      ),
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.localization.nav_services).h1(),
                    const SizedBox(height: 24),
                    ..._buildRows(featuredOf, smallOf),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildRows(
    ServiceItem Function(CatalogItemModel) featuredOf,
    ServiceItem Function(CatalogItemModel) smallOf,
  ) {
    final widgets = <Widget>[];
    var i = 0;

    // Dastlabki 2 qator — featured layout (jami 6 element).
    var featuredRows = 0;
    while (i < services.length && featuredRows < 2) {
      final s1 = i + 1 < services.length ? services[i + 1] : null;
      final s2 = i + 2 < services.length ? services[i + 2] : null;
      if (widgets.isNotEmpty) widgets.add(const SizedBox(height: 16));
      widgets.add(
        ServiceFeatureRow(
          feature: featuredOf(services[i]),
          small1: s1 == null ? null : smallOf(s1),
          small2: s2 == null ? null : smallOf(s2),
        ),
      );
      i += 3;
      featuredRows++;
    }

    // Qolgan elementlar — kichik plitkalar grid'i.
    if (i < services.length) {
      widgets.add(const SizedBox(height: 16));
      widgets.add(
        ServiceSmallGrid(
          items: [for (var j = i; j < services.length; j++) smallOf(services[j])],
        ),
      );
    }

    return widgets;
  }
}
