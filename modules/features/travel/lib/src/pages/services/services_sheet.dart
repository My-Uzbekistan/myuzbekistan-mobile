import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'service_item.dart';
import 'widgets/service_tiles.dart';

/// "Сервисы" to'liq ro'yxati — pastdan ochiluvchi sheet (route orqali).
class ServicesSheet extends StatelessWidget {
  const ServicesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final featured = Services.featured;
    final small = Services.small;

    void onTap(ServiceItem item) {
      // TODO: real xizmatga o'tish (CatalogBloc/action) shu yerga ulanadi.
      context.pop();
    }

    ServiceItem s(int i) => small[i].copyWith(onTap: () => onTap(small[i]));

    return Scaffold(
      backgroundColor: context.appColors.background.elevation1,
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
                    Text("Сервисы").h1(),
                    const SizedBox(height: 24),
                    ServiceFeatureRow(
                      feature: featured[0]
                          .copyWith(onTap: () => onTap(featured[0])),
                      small1: s(0),
                      small2: s(1),
                    ),
                    const SizedBox(height: 16),
                    ServiceFeatureRow(
                      feature: featured[1]
                          .copyWith(onTap: () => onTap(featured[1])),
                      small1: s(2),
                      small2: s(3),
                    ),
                    const SizedBox(height: 16),
                    ServiceSmallGrid(
                      items: [
                        for (var i = 4; i < small.length; i++) s(i),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
