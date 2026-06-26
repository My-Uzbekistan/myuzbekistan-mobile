import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class SubscriptionInfoCard extends StatelessWidget {
  final PremiumStatusModel? status;

  const SubscriptionInfoCard({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.localization.premiumSubscriptionTitle(
                    status?.planName ?? "",
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(),
              ),
              if (status?.isPremium ?? false) _ActiveBadge(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              height: 1,
              thickness: 1,
              color: context.appColors.stroke.nonOpaque,
            ),
          ),
          _InfoRow(
            label: context.localization.premiumStartDate,
            value: status?.startDate?.format() ?? "—",
          ),
          const SizedBox(height: 12),
          _InfoRow(
            label: context.localization.premiumExpiryDate,
            value: status?.endDate?.format() ?? "—",
          ),
          const SizedBox(height: 12),
          _InfoRow(
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


class _ActiveBadge extends StatelessWidget {
  const _ActiveBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: context.appColors.nonOpaque.green,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        context.localization.statusActive,
      ).labelSm(color: context.appColors.colors.green),
    );
  }
}



class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
          ).bodyMd(color: context.appColors.textIconColor.secondary),
        ),
        Text(value).labelLg(),
      ],
    );
  }
}