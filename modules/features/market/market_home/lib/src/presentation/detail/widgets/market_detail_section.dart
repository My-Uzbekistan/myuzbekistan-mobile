import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketDetailSection extends StatelessWidget {
  const MarketDetailSection({
    super.key,
    this.title,
    this.squareTop = false,
    required this.child,
  });

  final String? title;
  final bool squareTop;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final title = this.title;

    return Container(
      margin: EdgeInsets.only(
        left: squareTop ? 0 : 4,
        right: squareTop ? 0 : 4,
        bottom: 8,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: squareTop
            ? const BorderRadius.vertical(bottom: Radius.circular(20))
            : BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  title,
                ).h2(color: context.appColors.textIconColor.primary),
              ),
            ),
          child,
        ],
      ),
    );
  }
}
