import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketSearchField extends StatelessWidget {
  static const double height = 48;
  static const double radius = 24;

  const MarketSearchField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: colors.brandSeaBlue, width: 2),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Row(
        spacing: 8,
        children: [
          Assets.svg.searchLine.path.toSvgImage(
            width: 20,
            height: 20,
            fit: BoxFit.contain,
            tintColor: colors.colors.green,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              textInputAction: TextInputAction.search,
              cursorColor: colors.colors.green,
              cursorWidth: 1.5,
              style: CustomTypography.bodyMd.copyWith(
                color: colors.textIconColor.primary,
              ),
              decoration: InputDecoration(
                isDense: true,
                isCollapsed: true,
                border: InputBorder.none,
                hintText: context.localization.market_search_hint,
                hintStyle: CustomTypography.bodyMd.copyWith(
                  color: colors.textIconColor.tertiary,
                ),
              ),
            ),
          ),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, child) {
              if (value.text.isEmpty) return const SizedBox.shrink();
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onClear,
                child: Assets.svg.iconClose.path.toSvgImage(
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  tintColor: colors.textIconColor.secondary,
                ),
              );
            },
          ),
        ],
      ),
    ).shadow(
      context,
      backgroundColor: colors.background.elevation2,
      borderRadius: BorderRadius.circular(radius),
    );
  }
}
