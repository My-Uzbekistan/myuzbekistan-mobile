import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumDetailSummary extends StatelessWidget {
  const MuseumDetailSummary({super.key, required this.detail});

  final MuseumDetail detail;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              detail.title,
              textAlign: TextAlign.center,
            ).h1(color: colors.textIconColor.primary),
            if (detail.city.isNotEmpty)
              SizedBox(
                width: double.infinity,
                child: Text(
                  detail.city,
                  textAlign: TextAlign.center,
                ).bodySm(color: colors.textIconColor.secondary),
              ),
          ],
        ),
        _infoRow(context),
      ],
    );
  }

  Widget _infoRow(BuildContext context) {
    final colors = context.appColors;
    final cells = <Widget>[
      if (detail.openingHours.orEmpty().isNotEmpty)
        _cell(
          context,
          value: Text(
            detail.openingHours!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).labelLg(color: colors.textIconColor.primary),
          label: Text(
            context.localization.museum_detail_opening_hours,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodySm(color: colors.colors.green),
        ),
      if (detail.rating > 0)
        _cell(
          context,
          value: Text(
            NumberFormat(
              "0.0",
              Localizations.localeOf(context).languageCode,
            ).format(detail.rating),
          ).labelLg(color: colors.textIconColor.primary),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 2,
            children: [
              for (var index = 0; index < 5; index++)
                SizedBox.square(
                  dimension: 12,
                  child: Assets.svg.starFill.path.toSvgImage(
                    fit: BoxFit.contain,
                    tintColor:
                        index < detail.rating.round()
                            ? colors.colors.yellow
                            : colors.fill.tertiary,
                  ),
                ),
            ],
          ),
        ),
      if (detail.distanceKm != null)
        _cell(
          context,
          value: Text(
            context.localization.museum_distance_km(
              detail.distanceKm!.amountFormatted(withRemain: true),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).labelLg(color: colors.textIconColor.primary),
          label: Text(
            context.localization.museum_detail_distance,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodySm(color: colors.textIconColor.tertiary),
        ),
    ];

    if (cells.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 42,
      child: Row(
        children: [
          for (var index = 0; index < cells.length; index++) ...[
            if (index > 0)
              Container(width: 1, color: context.appColors.stroke.nonOpaque),
            Expanded(child: cells[index]),
          ],
        ],
      ),
    );
  }

  Widget _cell(
    BuildContext context, {
    required Widget value,
    required Widget label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [value, label],
    );
  }
}
