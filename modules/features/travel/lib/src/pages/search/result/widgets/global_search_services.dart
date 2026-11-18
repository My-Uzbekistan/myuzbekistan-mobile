import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/pages/services/service_item_mapper.dart';
import 'package:travel/src/pages/services/widgets/feature_service_tile.dart';
import 'package:travel/src/pages/services/widgets/service_feature_row.dart';
import 'package:travel/src/widgets/content_section.dart';

class GlobalSearchServices extends StatelessWidget {
  final SearchServicesBlock block;

  const GlobalSearchServices({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: block.title,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: _rows(context),
      ),
    );
  }

  List<Widget> _rows(BuildContext context) {
    final items = block.items
        .mapIndexed(
          (index, service) => service.toCatalogItem().toServiceItem(
            context,
            featured: index % 3 == 0,
          ),
        )
        .toList();
    final rows = <Widget>[];
    for (var i = 0; i < items.length; i += 3) {
      final small1 = i + 1 < items.length ? items[i + 1] : null;
      final small2 = i + 2 < items.length ? items[i + 2] : null;
      rows.add(
        small1 == null
            ? SizedBox(height: 77, child: FeatureServiceTile(item: items[i]))
            : ServiceFeatureRow(
                feature: items[i],
                small1: small1,
                small2: small2,
              ),
      );
    }
    return rows;
  }
}
