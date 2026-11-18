import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_card.dart';
import 'package:flutter/material.dart';

import 'near_brand_card.dart';

class MerchantsGroupCard extends StatelessWidget {
  final String title;
  final List<Merchant> merchants;
  final ValueChanged<Merchant> onMerchantTap;

  const MerchantsGroupCard({
    super.key,
    required this.title,
    required this.merchants,
    required this.onMerchantTap,
  });

  @override
  Widget build(BuildContext context) {
    return FinanceSectionCard(
      clipContent: true,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).h3(color: context.appColors.textIconColor.primary),
          ),
          SizedBox(
            height: NearBrandCard.height,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: merchants.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final merchant = merchants[index];
                return NearBrandCard(
                  merchant: merchant,
                  onTap: () => onMerchantTap(merchant),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
