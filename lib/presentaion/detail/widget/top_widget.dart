import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

class RatingTopWidget extends StatelessWidget {
  final double? ratingAverage;
  final int averageCheck;

  const RatingTopWidget({super.key, this.ratingAverage, this.averageCheck = 0});

  @override
  Widget build(BuildContext context) {
    return (ratingAverage ?? 0) > 0 || averageCheck > 0
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: context.appColors.stroke.nonOpaque, width: 1))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: (ratingAverage ?? 0) > 0
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 2,
                            children: [
                              Text(
                                "$ratingAverage",
                                style: CustomTypography.H3
                                    .copyWith(color: context.appColors.brand),
                              ),
                              Text(context.localizations!.rating,
                                  style: CustomTypography.bodySm.copyWith(
                                      color: context
                                          .appColors.textIconColor.secondary)),
                            ],
                          )
                        : SizedBox()),
                if (averageCheck > 0)
                  Flexible(
                      child: Column(
                    spacing: 2,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      PriceCategory(
                        priceCategory: averageCheck!,
                        textstyle: CustomTypography.labelLg,
                      ),
                      Text(context.localizations!.averageCheck,
                          style: CustomTypography.bodySm.copyWith(
                              color:
                                  context.appColors.textIconColor.secondary)),
                    ],
                  )),
              ],
            ),
          )
        : SizedBox();
  }
}

class TopBalanceWidget extends StatelessWidget {
  final String priceText;
  final double _priceInDollar;

  const TopBalanceWidget(
      {super.key, this.priceText = "", double? priceInDollar})
      : _priceInDollar = priceInDollar ?? 0;

  @override
  Widget build(BuildContext context) {
    return _priceInDollar > 0 || priceText.isNotEmpty
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            width: double.maxFinite,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: context.appColors.stroke.nonOpaque, width: 1))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  "~\$${_priceInDollar.floor()}",
                  style: CustomTypography.H3
                      .copyWith(color: context.appColors.brand),
                ),
                Text("~${context.localizations!.currency_uzs(priceText)}",
                    style: CustomTypography.bodySm.copyWith(
                        color: context.appColors.textIconColor.secondary)),
              ],
            ),
          )
        : SizedBox();
  }
}
