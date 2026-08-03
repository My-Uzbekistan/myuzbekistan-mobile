import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../../../services/service_item.dart';
import '../../../services/widgets/service_tiles.dart';

/// Bosh sahifadagi "Сервисы" bloki (1-rasm).
///
/// "Все" bosilganda — to'liq ro'yxat pastdan sheet bo'lib ochiladi
/// ([FeatureTravelNavExtension.pushServices], route orqali).
class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final featured = Services.featured;
    final small = Services.small;

    void openAll() => context.travel.pushServices();

    // 1-rasm faqat dastlabki 2 qatorni ko'rsatadi; hammasi "Все"/sheet'da.
    ServiceItem s(int i) => small[i].copyWith(onTap: openAll);
    ServiceItem f(int i) => featured[i].copyWith(onTap: openAll);

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
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
                Text("Сервисы").h3(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: openAll,
                  child: Text("Все")
                      .bodyLg(color: context.appColors.brandSeaBlue),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ServiceFeatureRow(feature: f(0), small1: s(0), small2: s(1)),
            const SizedBox(height: 16),
            ServiceFeatureRow(feature: f(1), small1: s(2), small2: s(3)),
          ],
        ),
      ),
    );
  }
}
