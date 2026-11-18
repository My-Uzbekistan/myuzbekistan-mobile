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
        borderRadius: isPremium
            ? const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )
            : BorderRadius.circular(56),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 2,
        children: [
          if (isPremium) const _PremiumMark(),
          Text(
            _title(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTypography.bodyXXsm.copyWith(
              color: _foreground(context),
              fontStyle: isPremium ? FontStyle.italic : null,
            ),
          ),
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

class _PremiumMark extends StatelessWidget {
  const _PremiumMark();

  @override
  Widget build(BuildContext context) {
    final yellow = context.appColors.colors.yellow;

    return Container(
      width: 12,
      height: 12,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: yellow,
        borderRadius: BorderRadius.circular(3.375),
        boxShadow: [
          BoxShadow(color: yellow, blurRadius: 10, offset: const Offset(0, 2)),
        ],
      ),
      child: Assets.svg.premiumBadge.svg(width: 10, height: 10),
    );
  }
}
