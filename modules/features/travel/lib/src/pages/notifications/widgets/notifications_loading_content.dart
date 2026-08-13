import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NotificationsLoadingContent extends StatelessWidget {
  const NotificationsLoadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 16,
          bottom: MediaQuery.of(context).padding.bottom + 16,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => const ShimmerDefaultContainer(
          height: 292,
        ),
        itemCount: 4,
      ),
    );
  }
}
