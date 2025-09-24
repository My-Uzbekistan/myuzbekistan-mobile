import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';

import 'finance_merchants_card.dart';

class FinanceCategoryHeader extends StatelessWidget {
  final String title;

  const FinanceCategoryHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: 24, bottom: 8),
      child: Text(title, style: CustomTypography.H3),
    );
  }
}

class FinanceMerchantsWithCategory extends StatelessWidget {
  final String title;
  final List<MerchantWidgetModel> items;

  final ValueChanged<int>? onItemTap;
  final VoidCallback?  openAll;

  const FinanceMerchantsWithCategory({
    super.key,
    required this.title,
    required this.items,
    this.onItemTap,
    this.openAll
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        FinanceCategoryHeader(title: title),
        SizedBox(
          height: 142,
          child: ListView.separated(
            itemCount: items.length,

            padding: EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            shrinkWrap: true,

            separatorBuilder: (context, index) {
              return SizedBox(width: 12);
            },
            itemBuilder: (context, index) {
              return  FinanceMerchantsCard(
                  merchantWidgetModel: items[index],
                  onTap: () {
                    onItemTap?.call(index);
                  },
                ).shadow(context);
            },
          ),
        ),
      ],
    );
  }
}
