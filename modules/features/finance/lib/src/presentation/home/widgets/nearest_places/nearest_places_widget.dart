import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_card.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_header.dart';
import 'package:flutter/material.dart';

import 'nearest_place_card.dart';

class NearestPlacesWidget extends StatelessWidget {
  final List<Merchant> merchants;
  final ValueChanged<Merchant> onMerchantTap;
  final VoidCallback onShowAll;

  const NearestPlacesWidget({
    super.key,
    required this.merchants,
    required this.onMerchantTap,
    required this.onShowAll,
  });

  @override
  Widget build(BuildContext context) {
    return FinanceSectionCard(
      clipContent: true,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FinanceSectionHeader(
              title: context.localization.nearest_places,
              onActionTap: onShowAll,
            ),
          ),
          SizedBox(
            height: 114,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: merchants.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final merchant = merchants[index];
                return NearestPlaceCard(
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
