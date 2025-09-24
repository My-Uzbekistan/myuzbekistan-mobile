
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../component_res.dart';

class CustomTabItem extends StatefulWidget {
  final String label;
  final Widget icon;
  final bool isSelected;

  const CustomTabItem(
      {super.key,
        required this.label,
        required this.icon,
        this.isSelected = false});

  @override
  State<CustomTabItem> createState() => _CustomTabItemState();
}

class _CustomTabItemState extends State<CustomTabItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: 10), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 10, end: 0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0, end: -10), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10, end: 0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didUpdateWidget(covariant CustomTabItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isSelected&&widget.isSelected) {
      _controller.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: BoxConstraints(maxWidth: 100),
        padding: EdgeInsets.only(top: 7, bottom: 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 3,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animation.value * pi / 180,
                  child: child,
                );
              },
              child: widget.icon,
            ),
            Flexible(
              child: Text(
                widget.label,
                style: CustomTypography.labelLg
                    .copyWith(fontSize: 11, height: 1.2, letterSpacing: 0.12),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}

class CustomNavigationBar extends StatelessWidget {
  final List<Widget> items;
  final bool centerDotted;
  final int currentIndex;
  final Color? selectedTabColor;
  final Color? unselectedTabColor;
  final ValueChanged<int> onTap;
  final VoidCallback? onTapCenterDotted;

  const CustomNavigationBar({
    super.key,
    required this.items,
    required this.onTap,
    this.onTapCenterDotted,
    this.centerDotted = false,
    this.currentIndex = 0,
    this.selectedTabColor,
    this.unselectedTabColor,
  }) : assert(
  !centerDotted || items.length == 4,
  'Agar centerDotted = true bo‘lsa, items uzunligi 4 bo‘lishi kerak',
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final selectedColor = selectedTabColor ??
        theme.bottomNavigationBarTheme.selectedItemColor ??
        theme.colorScheme.primary;

    final unselectedColor = unselectedTabColor ??
        theme.bottomNavigationBarTheme.unselectedItemColor ??
        theme.colorScheme.onSurfaceVariant;

    final updatedItems = centerDotted
        ? [
      ...items.sublist(0, items.length ~/ 2),
      const SizedBox(),
      ...items.sublist(items.length ~/ 2),
    ]
        : items;

    final selectedIndex =
    (centerDotted && currentIndex > 1) ? currentIndex + 1 : currentIndex;

    return IntrinsicHeight(
      child: Stack(
        children: [
          // Blur background
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 100, sigmaX: 100),
              child: Container(
                color:
                context.appColors.background.base.withValues(alpha: 0.88),
              ),
            ),
          ),

          // Navigation content
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: updatedItems.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    if (item is SizedBox) {
                      return const Expanded(child: SizedBox());
                    }
                    return Expanded(
                      child: Builder(builder: (context) {
                        final isSelected = index == selectedIndex;
                        return GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            HapticFeedback.selectionClick();
                            final adjustedIndex =
                            centerDotted && index > 1 ? index - 1 : index;

                            onTap(adjustedIndex);
                          },
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                                isSelected ? selectedColor : unselectedColor,
                                BlendMode.srcIn),
                            child: item is CustomTabItem
                                ? CustomTabItem(
                              label: item.label,
                              icon: item.icon,
                              isSelected: isSelected,
                            )
                                : item,
                          ),
                        );
                      }),
                    );
                  }).toList(),
                ),
                if (centerDotted)
                  Positioned(

                    left: 0,
                    right: 0,
                    bottom: 6,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          onTapCenterDotted?.call();
                        },
                        behavior: HitTestBehavior.translucent,
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: context.appColors.brand,
                          child: Assets.svgIconQrCode.toSvgImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}