import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PaymentLoading extends StatelessWidget {
  final EdgeInsets padding;

  const PaymentLoading({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: const [
            ShimmerDefaultContainer(height: 88, radius: 24),
            ShimmerDefaultContainer(height: 166, radius: 24),
            ShimmerDefaultContainer(height: 124, radius: 24),
          ],
        ),
      ),
    );
  }
}
