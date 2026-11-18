import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/payment_history/models/history_group.dart';
import 'package:finance/src/presentation/payment_history/models/history_item_ui_model.dart';
import 'package:finance/src/presentation/payment_history/widgets/history_cell.dart';
import 'package:flutter/material.dart';

class HistoryGroupCard extends StatelessWidget {
  final HistoryGroup group;
  final ValueChanged<HistoryItemUiModel> onItemTap;

  const HistoryGroupCard({
    super.key,
    required this.group,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          Text(
            group.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).labelLg(color: context.appColors.textIconColor.primary),
          ...group.items.map(
            (item) => HistoryCell(item: item, onTap: () => onItemTap(item)),
          ),
        ],
      ),
    );
  }
}
