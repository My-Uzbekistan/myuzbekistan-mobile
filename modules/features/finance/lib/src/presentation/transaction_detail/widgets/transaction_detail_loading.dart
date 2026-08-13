import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class TransactionDetailLoading extends StatelessWidget {
  const TransactionDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: context.appColors.background.elevation1,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 8),
          const ShimmerDefaultContainer(height: 24, width: 180, radius: 8),
          const SizedBox(height: 6),
          const ShimmerDefaultContainer(height: 36, width: 220, radius: 8),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ShimmerDefaultContainer(height: 88),
                SizedBox(height: 8),
                ShimmerDefaultContainer(height: 184, radius: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
