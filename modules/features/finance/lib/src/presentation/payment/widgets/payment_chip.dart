import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PaymentChip extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const PaymentChip({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: context.appColors.fill.tertiary,
          borderRadius: BorderRadius.circular(56),
        ),
        child: Align(
          alignment: Alignment.center,
          widthFactor: 1,
          child: Text(text, maxLines: 1).labelSm(),
        ),
      ),
    );
  }
}
