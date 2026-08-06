import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// "Сервисы" bloki yuklanayotgandagi shimmer holati.
class ServicesShimmer extends StatelessWidget {
  final int rows;

  const ServicesShimmer({super.key, this.rows = 2});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < rows; i++) ...[
            if (i > 0) const SizedBox(height: 12),
            ShimmerDefaultContainer(height: 78),
          ],
        ],
      ),
    );
  }
}
