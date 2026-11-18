import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/museum_map_utils.dart';
import 'package:shared/shared.dart';

class MuseumDetailContacts extends StatelessWidget {
  const MuseumDetailContacts({super.key, required this.detail});

  final MuseumDetail detail;

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[
      if (detail.address.orEmpty().isNotEmpty)
        _row(
          context,
          icon: Assets.svg.pinLocationLine.path,
          text: detail.address!,
          onTap: () => _openMap(),
        ),
      if (detail.phone.orEmpty().isNotEmpty)
        _row(
          context,
          icon: Assets.svg.icPhone.path,
          text: detail.phone!,
          onTap: () => LauncherUtils.urlLauncher("tel:${detail.phone}"),
        ),
      if (detail.openingHours.orEmpty().isNotEmpty)
        _row(
          context,
          icon: Assets.svg.iconClock.path,
          text: detail.openingHours!,
        ),
    ];

    return Column(children: rows);
  }

  Widget _row(
    BuildContext context, {
    required String icon,
    required String text,
    VoidCallback? onTap,
  }) {
    final colors = context.appColors;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        height: 44,
        child: Row(
          spacing: 12,
          children: [
            SizedBox.square(
              dimension: 20,
              child: icon.toSvgImage(
                fit: BoxFit.contain,
                tintColor: colors.textIconColor.secondary,
              ),
            ),
            Expanded(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: colors.textIconColor.primary),
            ),
            if (onTap != null)
              SizedBox.square(
                dimension: 20,
                child: Assets.svg.prayers.chevronRight.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: colors.textIconColor.tertiary,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _openMap() async {
    final latitude = detail.latitude;
    final longitude = detail.longitude;
    if (latitude == null || longitude == null) return;

    await museumOpenMap(
      latitude: latitude,
      longitude: longitude,
      title: detail.title,
    );
  }
}
