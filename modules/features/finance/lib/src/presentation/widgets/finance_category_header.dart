import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'finance_merchants_card.dart';

class FinanceCategoryHeader extends StatelessWidget {
  const FinanceCategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(top: 24, bottom: 8),
      child: Text("Restaurants", style: CustomTypography.H3),
    );
  }
}

class FinanceMerchantsWithCategory extends StatelessWidget {
  const FinanceMerchantsWithCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FinanceCategoryHeader(),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return FinanceMerchantsCard();
          },
        ),
      ],
    );
  }
}
