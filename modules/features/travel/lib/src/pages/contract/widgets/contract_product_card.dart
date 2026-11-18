import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import 'contract_formatters.dart';
import 'labeled_value.dart';

/// "Mahsulotlar" bo'limidagi bitta mahsulot kartochkasi.
class ContractProductCard extends StatelessWidget {
  final ContractProduct product;

  const ContractProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final l = context.localization;
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
          LabeledValue(label: l.contractProductName, value: product.name),
          LabeledValue(label: l.contractCode, value: product.code),
          LabeledValue(label: l.contractQuantity, value: qtyText(product.quantity)),
          LabeledValue(label: l.contractPrice, value: amountText(product.price)),
          LabeledValue(
            label: l.contractTotalAmount,
            value: amountText(product.totalAmount),
          ),
          LabeledValue(label: l.contractAdvance, value: amountText(product.advance)),
          LabeledValue(label: l.contractDescription, value: product.description),
        ],
      ),
    );
  }
}
