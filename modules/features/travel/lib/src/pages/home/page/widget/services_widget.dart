import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:travel/src/core/extension.dart';

import '../../../services/widgets/service_feature_rows.dart';
import '../../../services/widgets/services_shimmer.dart';

/// Bosh sahifadagi "Сервисы" bloki — dastlabki 6 ta xizmat ko'rsatiladi.
///
/// "Все" bosilganda to'liq ro'yxat [ServicesSheet]da alohida so'rov bilan
/// yuklanadi (bu yerga ro'yxat uzatilmaydi).
class ServicesWidget extends StatelessWidget {
  final List<CatalogItemModel> services;

  const ServicesWidget({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(context.localization.nav_services).h3(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.travel.pushServices(),
                  child: Text(context.localization.action_all)
                      .bodyLg(color: context.appColors.brandSeaBlue),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (services.isEmpty)
              const ServicesShimmer()
            else
              Column(children: buildServiceFeatureRows(context, services)),
          ],
        ),
      ),
    );
  }
}
