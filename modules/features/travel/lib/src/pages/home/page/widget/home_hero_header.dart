import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/notifications/notification_count_bloc/notification_count_cubit.dart';

part 'home_hero_header/collapsing_card.dart';
part 'home_hero_header/header_metrics.dart';
part 'home_hero_header/home_quick_action.dart';
part 'home_hero_header/info_row.dart';
part 'home_hero_header/quick_actions.dart';
part 'home_hero_header/search_row.dart';

/// Bosh sahifa "hero" header'i — yig'iluvchi (collapsing) [SliverAppBar].
///
/// Pastga tortilganda fon rasm parallax bilan cho'ziladi; tepaga scroll
/// qilinganda ob-havo va tez amallar so'nadi, qidiruv qatori esa oq panelda
/// pinned bo'lib qotadi.
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.regionName,
    required this.temperature,
    required this.hintText,
    required this.quickActions,
    required this.prayerLabel,
    required this.prayerTime,
    this.airQuality,
    this.onRegionTap,
    this.onNotificationTap,
    this.onSearchTap,
    this.onQrTap,
    this.onFavoriteTap,
  });

  final String regionName;
  final String temperature;
  final String? airQuality;
  final String prayerLabel;
  final DateTime prayerTime;
  final String hintText;
  final List<HomeQuickAction> quickActions;

  final VoidCallback? onRegionTap;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onSearchTap;
  final VoidCallback? onQrTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top;

    // Scroll holatidan mustaqil bola'lar — layout har o'zgarganda emas,
    // faqat bir marta quriladi.
    final infoRow = _InfoRow(
      regionName: regionName,
      temperature: temperature,
      airQuality: airQuality,
      prayerLabel: prayerLabel,
      prayerTime: prayerTime,
      onRegionTap: onRegionTap,
      onNotificationTap: onNotificationTap,
    );
    final quickRow = _QuickActions(actions: quickActions);
    final searchRow = _SearchRow(
      hintText: hintText,
      onSearchTap: onSearchTap,
      onQrTap: onQrTap,
      onFavoriteTap: onFavoriteTap,
    );

    return SliverAppBar(
      pinned: true,
      stretch: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      toolbarHeight: _kCollapsed,
      expandedHeight: _kExpanded,
      stretchTriggerOffset: 80,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final metrics = _HeaderMetrics(
            belowH: constraints.maxHeight - topInset,
            topInset: topInset,
          );
          return Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              _CollapsingCard(
                metrics: metrics,
                infoRow: infoRow,
                quickRow: quickRow,
              ),
              Positioned(
                top: metrics.searchTop,
                left: _kHPad,
                right: _kHPad,
                child: searchRow,
              ),
            ],
          );
        },
      ),
    );
  }
}
