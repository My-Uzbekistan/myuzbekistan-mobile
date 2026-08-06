import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import 'labeled_value.dart';

/// "Mahsulot xususiyatlari" bo'limidagi bitta element kartochkasi.
class ContractProductPropertyCard extends StatelessWidget {
  final ContractProductProperty property;

  const ContractProductPropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
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
          Text(property.name ?? "—").labelLg(),
          LabeledValue(
            label: context.localization.contractUnitOfMeasure,
            value: property.unitOfMeasure,
          ),
        ],
      ),
    );
  }
}
