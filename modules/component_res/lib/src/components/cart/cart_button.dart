import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CartButton extends HookWidget {
  final int count;
  final ValueChanged<int> onCountChanged;
  final int maxCount;
  final Duration animationDuration;

  const CartButton({
    super.key,
    required this.count,
    required this.onCountChanged,
    this.maxCount = 99,
    this.animationDuration = const Duration(milliseconds: 320),
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: animationDuration,
      initialValue: count > 0 ? 1 : 0,
    );
    final expandAnimation = useMemoized(
      () => CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeOutCubic,
      ),
      [controller],
    );
    final visibleCount = useState(count);

    useEffect(() {
      void handleStatus(AnimationStatus status) {
        if (status == AnimationStatus.dismissed) visibleCount.value = 0;
      }

      controller.addStatusListener(handleStatus);
      return () => controller.removeStatusListener(handleStatus);
    }, [controller]);

    useEffect(() {
      if (count > 0) {
        visibleCount.value = count;
        controller.forward();
      } else {
        controller.reverse();
      }
      return null;
    }, [count]);

    final brandColor = context.appColors.brandSeaBlue;
    final stepperColor = context.appColors.textIconColor.tertiary;

    void increase() {
      if (count < maxCount) onCountChanged(count + 1);
    }

    void decrease() {
      if (count > 0) onCountChanged(count - 1);
    }

    Widget stepper(CartGlyph glyph, VoidCallback onTap) => FadeTransition(
          opacity: expandAnimation,
          child: SizeTransition(
            axis: Axis.horizontal,
            alignment: glyph == CartGlyph.minus
                ? Alignment.centerLeft
                : Alignment.centerRight,
            sizeFactor: expandAnimation,
            fixedCrossAxisSizeFactor: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.only(
                  left: glyph == CartGlyph.plus ? 16 : 0,
                  right: glyph == CartGlyph.minus ? 16 : 0,
                ),
                child: CartGlyphIcon(glyph: glyph, color: stepperColor),
              ),
            ),
          ),
        );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: count == 0 ? increase : null,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            stepper(CartGlyph.minus, decrease),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: CartGlyphIcon.boxSize,
                minHeight: CartGlyphIcon.boxSize,
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                layoutBuilder: (currentChild, previousChildren) => Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    for (final previousChild in previousChildren)
                      Positioned(child: previousChild),
                    if (currentChild != null) currentChild,
                  ],
                ),
                child: visibleCount.value == 0
                    ? CartGlyphIcon(
                        key: const ValueKey(0),
                        glyph: CartGlyph.plus,
                        color: brandColor,
                      )
                    : Text(
                        "${visibleCount.value}",
                        key: ValueKey(visibleCount.value),
                        style: CustomTypography.labelMd
                            .copyWith(color: brandColor),
                      ),
              ),
            ),
            stepper(CartGlyph.plus, increase),
          ],
        ),
      ).shadow(
        context,
        backgroundColor: context.appColors.textIconColor.oposite,
        borderRadius: BorderRadius.circular(34),
      ),
    );
  }
}
