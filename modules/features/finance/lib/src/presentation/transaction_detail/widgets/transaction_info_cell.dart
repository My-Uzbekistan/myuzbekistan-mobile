import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class TransactionInfoCell extends StatelessWidget {
  static const double height = 56;

  final String label;
  final String value;

  const TransactionInfoCell({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 2,
          children: [
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodySm(color: context.appColors.textIconColor.secondary),
            Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodyLg(color: context.appColors.textIconColor.primary),
          ],
        ),
      ),
    );
  }
}
