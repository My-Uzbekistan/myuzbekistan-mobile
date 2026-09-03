import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import '../service_badge.dart';

class ServiceBadgePill extends StatelessWidget {
  final ServiceBadge badge;

  const ServiceBadgePill({super.key, required this.badge});

  @override
  Widget build(BuildContext context) {
    final isPremium = badge == ServiceBadge.premium;

    return Container(
      height: 16,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: isPremium ? 2 : 4, right: 4),
      decoration: BoxDecoration(
        color: _background(context),
        borderRadius: BorderRadius.circular(isPremium ? 50 : 56),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 2,
        children: [
          if (isPremium)
            Assets.svg.premiumStar.svg(width: 12, height: 12),
          Text(
            _title(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodyXXsm(color: _foreground(context)),
        ],
      ),
    );
  }

  String _title(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.localization.catalogItemStatusSoon,
        ServiceBadge.premium => context.localization.catalogItemStatusPremium,
        ServiceBadge.newService => context.localization.catalogItemStatusNew,
      };

  Color _background(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.appColors.colors.blue,
        ServiceBadge.premium => context.appColors.textIconColor.primary,
        ServiceBadge.newService => context.appColors.brandSeaBlue,
      };

  Color _foreground(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.appColors.static.white,
        ServiceBadge.premium => context.appColors.textIconColor.oposite,
        ServiceBadge.newService => context.appColors.static.white,
      };
}
