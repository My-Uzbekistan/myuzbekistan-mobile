import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceMerchantsCard extends StatelessWidget {
  const FinanceMerchantsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,

      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.appColors.background.elevation1,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              height: 40,
              width: 40,
              color: context.appColors.fill.quaternary,

              child: CachedNetworkImage(
                imageUrl: "https://picsum.photos/200/200",
                fit: BoxFit.fill,
                errorWidget:
                    (context, url, error) =>
                        Container(color: context.appColors.fill.quaternary),
              ),
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Street 77", style: CustomTypography.labelMd),
              Text(
                "Restaurant",
                style: CustomTypography.labelSm.copyWith(
                  color: context.appColors.textIconColor.secondary,
                ),
              ),
            ],
          ),

          Text("320 m" , style: CustomTypography.labelSm.copyWith(
          color: context.appColors.textIconColor.secondary,
          ),)
        ],
      ),
    ).shadow();
  }
}
