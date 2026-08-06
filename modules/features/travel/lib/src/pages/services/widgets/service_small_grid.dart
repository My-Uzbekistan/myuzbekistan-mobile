import 'package:flutter/material.dart';

import '../service_item.dart';
import 'small_service_tile.dart';

/// Kichik plitkalarni 4 ustunli grid ko'rinishida chizadi.
class ServiceSmallGrid extends StatelessWidget {
  final List<ServiceItem> items;
  final double crossSpacing;
  final double mainSpacing;

  const ServiceSmallGrid({
    super.key,
    required this.items,
    this.crossSpacing = 8,
    this.mainSpacing = 20,
  });

  @override
  Widget build(BuildContext context) {
    const columns = 4;
    final rows = <Widget>[];
    for (var i = 0; i < items.length; i += columns) {
      final rowItems = items.skip(i).take(columns).toList();
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var c = 0; c < columns; c++) ...[
              if (c > 0) SizedBox(width: crossSpacing),
              Expanded(
                child: c < rowItems.length
                    ? Center(child: SmallServiceTile(item: rowItems[c]))
                    : const SizedBox(),
              ),
            ],
          ],
        ),
      );
      if (i + columns < items.length) rows.add(SizedBox(height: mainSpacing));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    );
  }
}
