import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CurrencyRatesScrollIndicator extends StatelessWidget {
  final double visibleFraction;
  final double progress;

  const CurrencyRatesScrollIndicator({
    super.key,
    required this.visibleFraction,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    if (visibleFraction >= 1) return const SizedBox(height: 8);

    return SizedBox(
      height: 8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final thumbWidth = constraints.maxWidth * visibleFraction;
          final offset = (constraints.maxWidth - thumbWidth) * progress;
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Padding(
                padding: EdgeInsets.only(left: offset),
                child: Container(
                  width: thumbWidth,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.appColors.stroke.nonOpaque,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
