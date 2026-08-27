import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import '../service_badge.dart';

class ServiceBadgePill extends StatelessWidget {
  final ServiceBadge badge;

  const ServiceBadgePill({super.key, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: _background(context),
        borderRadius: BorderRadius.circular(56),
      ),
      child: Text(
        _title(context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ).bodyXXsm(color: _foreground(context)),
    );
  }

  String _title(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.localization.catalogItemStatusSoon,
        ServiceBadge.premium => context.localization.catalogItemStatusPremium,
        ServiceBadge.newService => context.localization.catalogItemStatusNew,
      };

  Color _background(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.appColors.fill.tertiary,
        ServiceBadge.premium => context.appColors.accent.premium,
        ServiceBadge.newService => context.appColors.brandSeaBlue,
      };

  Color _foreground(BuildContext context) => switch (badge) {
        ServiceBadge.upcoming => context.appColors.textIconColor.secondary,
        ServiceBadge.premium => context.appColors.static.black,
        ServiceBadge.newService => context.appColors.static.white,
      };
}
