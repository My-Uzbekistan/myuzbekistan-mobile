import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

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
            _row(context),
          ],
        ],
      ),
    );
  }

  Widget _row(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.appColors.background.elevation1,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(child: _SmallTileShimmer()),
          const SizedBox(width: 8),
          const Expanded(child: _SmallTileShimmer()),
        ],
      ),
    );
  }
}

class _SmallTileShimmer extends StatelessWidget {
  const _SmallTileShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ShimmerDefaultContainer(height: 56, width: 56, radius: 16),
        SizedBox(height: 6),
        ShimmerDefaultContainer(height: 10, width: 48, radius: 6),
        SizedBox(height: 4),
        ShimmerDefaultContainer(height: 10, width: 36, radius: 6),
      ],
    );
  }
}
