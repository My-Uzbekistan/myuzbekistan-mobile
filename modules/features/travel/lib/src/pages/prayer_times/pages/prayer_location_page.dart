import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import '../widgets/prayer_location_row.dart';

class PrayerLocationPage extends StatelessWidget {
  const PrayerLocationPage({
    super.key,
    required this.locations,
    this.selectedLocationId,
  });

  final List<PrayerLocation> locations;
  final int? selectedLocationId;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Scaffold(
      backgroundColor: colors.background.elevation1,
      appBar: AppBar(
        backgroundColor: colors.background.elevation1,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leadingWidth: 56,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.pop(),
          child: Center(
            child: Assets.svg.prayers.chevronLeft.path.toSvgImage(
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                colors.textIconColor.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        title: Text(
          context.localization.location,
        ).labelLg(color: colors.textIconColor.primary),
      ),
      body: SafeArea(
        top: false,
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 24),
          physics: const ClampingScrollPhysics(),
          itemCount: locations.length,
          itemBuilder: (context, index) {
            final location = locations[index];
            return PrayerLocationRow(
              name: location.name,
              isSelected: location.id == selectedLocationId,
              onTap: () => context.pop(location),
            );
          },
        ),
      ),
    );
  }
}
