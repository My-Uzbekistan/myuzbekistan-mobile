import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_cancel/widgets/subscription_active_badge.dart';
import 'package:travel/src/premium/premium_cancel/widgets/subscription_info_row.dart';

class SubscriptionInfoCard extends StatelessWidget {
  final PremiumStatusModel? status;

  const SubscriptionInfoCard({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: Text(
                  context.localization.premiumSubscriptionTitle(
                    status?.planName ?? "",
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(color: context.appColors.textIconColor.primary),
              ),
              if (status?.isPremium ?? false) const SubscriptionActiveBadge(),
            ],
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: context.appColors.stroke.nonOpaque,
          ),
          SubscriptionInfoRow(
            label: context.localization.premiumStartDate,
            value: status?.startDate?.format() ?? "—",
          ),
          SubscriptionInfoRow(
            label: context.localization.premiumExpiryDate,
            value: status?.endDate?.format() ?? "—",
          ),
          SubscriptionInfoRow(
            label: context.localization.premiumDaysRemaining,
            value: context.localization.premiumDaysValue(
              status?.daysRemaining ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}
