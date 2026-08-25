import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketOrderDetailShimmer extends StatelessWidget {
  const MarketOrderDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        spacing: 8,
        children: [
          _card(context, child: _steps()),
          _card(context, child: _fields()),
          _card(context, child: _items()),
        ],
      ),
    );
  }

  Widget _card(BuildContext context, {required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }

  Widget _steps() {
    return Row(
      spacing: 6,
      children: [
        for (var index = 0; index < 5; index++)
          const Expanded(
            child: Column(
              spacing: 8,
              children: [
                ShimmerDefaultContainer(height: 44, width: 44, radius: 22),
                ShimmerDefaultContainer(height: 13, width: 48, radius: 6),
              ],
            ),
          ),
      ],
    );
  }

  Widget _fields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        const ShimmerDefaultContainer(height: 22, width: 130, radius: 6),
        for (var index = 0; index < 4; index++)
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              ShimmerDefaultContainer(height: 16, width: 110, radius: 6),
              ShimmerDefaultContainer(
                height: 18,
                width: double.infinity,
                radius: 6,
              ),
            ],
          ),
      ],
    );
  }

  Widget _items() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        const ShimmerDefaultContainer(height: 22, width: 100, radius: 6),
        for (var index = 0; index < 3; index++)
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              ShimmerDefaultContainer(height: 80, width: 80, radius: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    ShimmerDefaultContainer(
                      height: 18,
                      width: double.infinity,
                      radius: 6,
                    ),
                    ShimmerDefaultContainer(height: 16, width: 60, radius: 6),
                    ShimmerDefaultContainer(height: 18, width: 82, radius: 6),
                  ],
                ),
              ),
            ],
          ),
        const ShimmerDefaultContainer(
          height: 119,
          width: double.infinity,
          radius: 20,
        ),
      ],
    );
  }
}
