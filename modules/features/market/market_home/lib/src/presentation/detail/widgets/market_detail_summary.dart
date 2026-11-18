import 'dart:math' as math;

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketDetailSummary extends StatelessWidget {
  const MarketDetailSummary({super.key, required this.detail});

  final MarketProductDetail detail;

  @override
  Widget build(BuildContext context) {
    final breadcrumb = [
      if (detail.blockTitle.orEmpty().isNotEmpty) detail.blockTitle!,
      if (detail.seller?.name.isNotEmpty == true) detail.seller!.name,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            if (breadcrumb.isNotEmpty) _breadcrumb(context, breadcrumb),
            Text(
              detail.name,
            ).labelLg(color: context.appColors.textIconColor.primary),
            if (detail.soldThisMonth > 0)
              Text(
                context.localization.market_detail_sold_this_month(
                  detail.soldThisMonth,
                ),
              ).bodySm(color: context.appColors.textIconColor.tertiary),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 4,
          children: [
            Text(
              detail.price.amountFormatted(),
            ).h2(color: context.appColors.brandSeaBlue),
            Text(
              context.localization.market_currency_som,
            ).bodySm(color: context.appColors.textIconColor.tertiary),
          ],
        ),
      ],
    );
  }

  Widget _breadcrumb(BuildContext context, List<String> items) {
    final color = context.appColors.textIconColor.tertiary;

    return Row(
      spacing: 3,
      children: [
        for (var index = 0; index < items.length; index++) ...[
          if (index > 0)
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: SizedBox.square(
                dimension: 12,
                child: Assets.svg.icBackChevron.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: color,
                ),
              ),
            ),
          Flexible(
            child: Text(
              items[index],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodySm(color: color),
          ),
        ],
      ],
    );
  }
}
