import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FinanceSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback? onActionTap;

  const FinanceSectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTypography.H3,
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTypography.bodySm.copyWith(
                      color: context.appColors.textIconColor.secondary,
                    ),
                  ),
              ],
            ),
          ),
          if (onActionTap != null)
            GestureDetector(
              onTap: () {
                HapticFeedback.selectionClick();
                onActionTap?.call();
              },
              behavior: HitTestBehavior.opaque,
              child: Text(
                context.localization.action_all,
                style: CustomTypography.bodyLg.copyWith(
                  color: context.appColors.brand,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
