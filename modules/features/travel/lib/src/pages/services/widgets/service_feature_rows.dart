import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../service_item_mapper.dart';
import 'service_feature_row.dart';

List<Widget> buildServiceFeatureRows(
  BuildContext context,
  List<CatalogItemModel> items, {
  int maxRows = 2,
}) {
  final rows = <Widget>[];
  var built = 0;
  for (var i = 0; i < items.length && built < maxRows; i += 3, built++) {
    if (rows.isNotEmpty) rows.add(const SizedBox(height: 12));
    final s1 = i + 1 < items.length ? items[i + 1] : null;
    final s2 = i + 2 < items.length ? items[i + 2] : null;
    rows.add(
      ServiceFeatureRow(
        feature: items[i].toServiceItem(context, featured: true),
        small1: s1?.toServiceItem(context),
        small2: s2?.toServiceItem(context),
      ),
    );
  }
  return rows;
}
