import 'package:flutter/material.dart';

import '../service_item.dart';
import 'feature_service_tile.dart';
import 'small_service_tile.dart';

class ServiceFeatureRow extends StatelessWidget {
  final ServiceItem feature;
  final ServiceItem? small1;
  final ServiceItem? small2;
  final double spacing;

  const ServiceFeatureRow({
    super.key,
    required this.feature,
    this.small1,
    this.small2,
    this.spacing = 7,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 2, child: FeatureServiceTile(item: feature)),
          SizedBox(width: spacing),
          Expanded(
            child: small1 == null
                ? const SizedBox()
                : SmallServiceTile(item: small1!),
          ),
          SizedBox(width: spacing),
          Expanded(
            child: small2 == null
                ? const SizedBox()
                : SmallServiceTile(item: small2!),
          ),
        ],
      ),
    );
  }
}
