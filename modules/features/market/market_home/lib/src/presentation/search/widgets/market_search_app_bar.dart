import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/presentation/search/widgets/market_search_field.dart';
import 'package:market_home/src/presentation/widgets/market_circle_button.dart';
import 'package:market_home/src/presentation/widgets/market_search_hero.dart';

class MarketSearchAppBar extends StatelessWidget {
  const MarketSearchAppBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onBack,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onBack;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 8,
        children: [
          MarketSearchHero(
            tag: MarketSearchHero.leadingTag,
            child: MarketCircleButton(
              size: 48,
              onTap: onBack,
              icon: Assets.svg.prayers.chevronLeft.path.toSvgImage(
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                tintColor: context.appColors.textIconColor.primary,
              ),
            ),
          ),
          Expanded(
            child: MarketSearchHero(
              tag: MarketSearchHero.fieldTag,
              child: MarketSearchField(
                controller: controller,
                focusNode: focusNode,
                onChanged: onChanged,
                onSubmitted: onSubmitted,
                onClear: onClear,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
