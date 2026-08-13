import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_info_cell.dart';
import 'package:flutter/material.dart';

class TransactionInfoCard extends StatelessWidget {
  final List<KeyValue> items;

  const TransactionInfoCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: context.appColors.fill.quaternary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: items
            .map(
              (item) =>
                  TransactionInfoCell(label: item.key, value: item.value),
            )
            .toList(),
      ),
    );
  }
}
