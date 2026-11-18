import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class PremiumPlanCard extends StatelessWidget {
  final PremiumPlansModel item;
  final bool isSelected;
  final VoidCallback? onTap;

  const PremiumPlanCard({
    super.key,
    required this.item,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor = isSelected
        ? context.appColors.textIconColor.primary
        : context.appColors.textIconColor.secondary;
    final discountPercent = item.discountPercent ?? 0;
    final originalPrice = item.originalPrice ?? 0;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected
                  ? context.appColors.nonOpaque.brand
                  : context.appColors.background.base,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: 2,
                color: isSelected
                    ? context.appColors.brand
                    : context.appColors.stroke.opaque,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        (item.durationInMonths ?? 0) > 0
                            ? context.localization.premiumMonths(
                                item.durationInMonths ?? 0,
                              )
                            : context.localization.premiumDaysValue(
                                item.durationInDays ?? 0,
                              ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelLg(color: contentColor),
                    ),
                    if (isSelected)
                      Assets.svg.premiumPlanCheck.svg(width: 20, height: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localization.currency_uzs(
                        ((item.price ?? 0) / 100).amountFormatted(),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelLg(color: contentColor),
                    if (originalPrice > 0)
                      Text(
                        context.localization.currency_uzs(
                          (originalPrice / 100).amountFormatted(),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTypography.bodySm.copyWith(
                          color: context.appColors.textIconColor.secondary,
                          decoration: TextDecoration.lineThrough,
                          decorationColor:
                              context.appColors.textIconColor.secondary,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (discountPercent > 0)
            Positioned(
              top: -11,
              left: 6,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: context.appColors.brand,
                  borderRadius: BorderRadius.circular(56),
                ),
                child: Text(
                  context.localization.premiumDiscountBadge(discountPercent),
                  maxLines: 1,
                ).labelSm(color: context.appColors.static.white),
              ),
            ),
        ],
      ),
    );
  }
}
