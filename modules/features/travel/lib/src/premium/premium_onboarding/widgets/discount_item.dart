import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class DiscountItem extends StatelessWidget {
  final PremiumPlansModel? item;
  final VoidCallback? onTap;
  final bool isSelect;
  final int index;

  const DiscountItem({super.key, this.item, this.onTap, required this.isSelect, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 98,
            width: 136,
            padding:const EdgeInsets.all(16),
            margin:  EdgeInsets.only(left: index==0 ? 0: 8),
            decoration: BoxDecoration(
              color:
                  isSelect
                      ? context.appColors.nonOpaque.brand
                      : context.appColors.background.elevation1,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color:
                    isSelect
                        ? context.appColors.brand
                        : context.appColors.stroke.nonOpaque,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  (item?.durationInMonths ?? 0) > 0
                      ? context.localization.premiumMonths(
                        item?.durationInMonths ?? 0,
                      )
                      : context.localization.premiumDaysValue(
                        item?.durationInDays ?? 0,
                      ),
                ).labelMd(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localization.currency_uzs(
                        ((item?.price ?? 0) / 100).amountFormatted(),
                      ),
                      maxLines: 1,
                    ).labelLg(),

                    if ((item?.originalPrice ?? 0) > 0)
                      Text(
                        context.localization.currency_uzs(
                          ((item?.originalPrice ?? 0) / 100).amountFormatted(),
                        ),
                        maxLines: 1,
                        style: CustomTypography.bodyXXsm.copyWith(
                          color: context.appColors.textIconColor.secondary,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if ((item?.discountPercent ?? 0) > 0)
            Positioned(
              top: -12,
              left: 9,

              child: Container(
                height: 20,
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                  color: context.appColors.brandFlamingo,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  context.localization.premiumDiscountBadge(
                    item?.discountPercent ?? 0,
                  ),
                ).labelSm(color: Colors.black),
              ),
            ),
        ],
      ),
    );
  }
}
