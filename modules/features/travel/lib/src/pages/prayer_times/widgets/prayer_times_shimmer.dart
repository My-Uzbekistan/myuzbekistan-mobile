import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PrayerTimesShimmer extends StatelessWidget {
  const PrayerTimesShimmer({super.key, this.rows = 6});

  final int rows;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < rows; i++)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerDefaultContainer(
                          height: 14,
                          width: 72,
                          radius: 6,
                        ),
                        SizedBox(height: 6),
                        ShimmerDefaultContainer(
                          height: 20,
                          width: 56,
                          radius: 6,
                        ),
                      ],
                    ),
                  ),
                  ShimmerDefaultContainer(height: 20, width: 20, radius: 6),
                ],
              ),
            ),
        ],
      ),
    ).shadow(context, borderRadius: BorderRadius.circular(20));
  }
}
