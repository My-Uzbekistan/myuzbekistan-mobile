import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/widgets/travel_chip.dart';

class GlobalSearchQueryCard extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final List<String> popular;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmitted;

  const GlobalSearchQueryCard({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.popular,
    required this.onChanged,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: colors.fill.quaternary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              spacing: 8,
              children: [
                Assets.svg.searchLine.path.toSvgImage(
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  tintColor: colors.textIconColor.tertiary,
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onChanged: onChanged,
                    onSubmitted: onSubmitted,
                    textInputAction: TextInputAction.search,
                    cursorColor: colors.brandSeaBlue,
                    cursorWidth: 1.5,
                    style: CustomTypography.bodyLg.copyWith(
                      color: colors.textIconColor.primary,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      isCollapsed: true,
                      border: InputBorder.none,
                      hintText: context.localization.global_search_hint,
                      hintStyle: CustomTypography.bodyLg.copyWith(
                        color: colors.textIconColor.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (popular.isNotEmpty)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                spacing: 8,
                children: [
                  for (final query in popular)
                    TravelChip(
                      title: query,
                      onTap: () {
                        controller.text = query;
                        controller.selection = TextSelection.collapsed(
                          offset: query.length,
                        );
                        onChanged(query);
                      },
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
