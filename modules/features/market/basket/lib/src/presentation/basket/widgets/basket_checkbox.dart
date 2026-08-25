import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class BasketCheckbox extends StatelessWidget {
  const BasketCheckbox({super.key, required this.isChecked, this.onTap});

  final bool isChecked;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox.square(
        dimension: 32,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 160),
            width: 26.67,
            height: 26.67,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isChecked
                  ? context.appColors.brand
                  : context.appColors.fill.tertiary,
              borderRadius: BorderRadius.circular(5),
            ),
            child: isChecked
                ? Assets.svg.iconCheck.path.toSvgImage(
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                    tintColor: context.appColors.static.white,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
