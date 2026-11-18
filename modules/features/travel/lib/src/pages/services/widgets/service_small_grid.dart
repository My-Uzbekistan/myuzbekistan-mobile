import 'package:flutter/material.dart';

import '../service_item.dart';
import 'small_service_tile.dart';

class ServiceSmallGrid extends StatelessWidget {
  final List<ServiceItem> items;

  const ServiceSmallGrid({super.key, required this.items});

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
              if (c > 0) const SizedBox(width: 7),
              Expanded(
                child: c < rowItems.length
                    ? SmallServiceTile(item: rowItems[c], titleMaxLines: 2)
                    : const SizedBox(),
              ),
            ],
          ],
        ),
      );
      if (i + columns < items.length) rows.add(const SizedBox(height: 12));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    );
  }
}
