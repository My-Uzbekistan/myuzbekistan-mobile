import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import 'collapsible_section.dart';
import 'contract_formatters.dart';
import 'labeled_value.dart';

/// "Tovarlar" bo'limidagi bitta tovar kartochkasi (ichida spetsifikatsiya).
class ContractGoodCard extends StatelessWidget {
  final ContractGood good;
  final int index;

  const ContractGoodCard({super.key, required this.good, required this.index});

  @override
  Widget build(BuildContext context) {
    final l = context.localization;
    final spec = good.spec;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation2,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.appColors.stroke.nonOpaque),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 14,
        children: [
          Text("$index. ${good.name ?? "—"}").labelLg(),
          LabeledValue(
            label: l.contractStartingPrice,
            value: amountText(good.startingPricePerUnit),
          ),
          LabeledValue(
            label: l.contractTotalPrice,
            value: amountText(good.totalPrice),
          ),
          LabeledValue(
            label: l.contractGoodQuantity,
            value: qtyText(good.quantity),
          ),
          if (spec != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CollapsibleSection(
                title: l.contractGoodSpec,
                initiallyExpanded: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 14,
                  children: [
                    LabeledValue(
                      label: l.contractUnitOfMeasure,
                      value: spec.unitOfMeasure,
                    ),
                    LabeledValue(label: l.contractType, value: spec.type),
                    LabeledValue(
                      label: l.contractGoodDescription,
                      value: spec.description,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
