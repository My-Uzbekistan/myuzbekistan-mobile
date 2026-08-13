import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/merchants/widgets/near_brand_avatar.dart';
import 'package:finance/src/presentation/payment_history/models/history_item_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class HistoryCell extends StatelessWidget {
  static const double height = 72;

  final HistoryItemUiModel item;
  final VoidCallback? onTap;

  const HistoryCell({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final subTitle = item.subTitle.orEmpty();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.appColors.fill.quaternary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          spacing: 16,
          children: [
            NearBrandAvatar(imageUrl: item.iconUrl),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 2,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                  if (subTitle.isNotEmpty)
                    Text(
                      subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(color: context.appColors.textIconColor.secondary),
                ],
              ),
            ),
            Text(
              item.trailing,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: context.appColors.textIconColor.primary),
          ],
        ),
      ),
    );
  }
}
