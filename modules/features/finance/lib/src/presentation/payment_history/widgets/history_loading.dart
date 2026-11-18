import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HistoryLoading extends StatelessWidget {
  final EdgeInsets padding;

  const HistoryLoading({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: ListView.separated(
        padding: padding,
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) =>
            const ShimmerDefaultContainer(height: 222),
      ),
    );
  }
}
