import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MarketCartFab extends HookWidget {
  const MarketCartFab({
    super.key,
    required this.title,
    required this.visible,
    this.onTap,
  });

  final String title;
  final bool visible;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final duration = Duration(milliseconds: visible ? 380 : 240);
    final curve = visible ? Curves.easeOutBack : Curves.easeInCubic;
    final lastTitle = useRef(title);
    if (title.isNotEmpty) lastTitle.value = title;

    return IgnorePointer(
      ignoring: !visible,
      child: AnimatedSlide(
        offset: visible ? Offset.zero : const Offset(0.45, 0),
        duration: duration,
        curve: curve,
        child: AnimatedScale(
          scale: visible ? 1 : 0.3,
          alignment: Alignment.centerRight,
          duration: duration,
          curve: curve,
          child: AnimatedOpacity(
            opacity: visible ? 1 : 0,
            duration: Duration(milliseconds: visible ? 260 : 200),
            curve: Curves.easeOut,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onTap,
              child:
                  AnimatedSize(
                    duration: const Duration(milliseconds: 260),
                    curve: Curves.easeOutCubic,
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 56,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 8,
                          children: [
                            Assets.svg.tabIconBasket.path.toSvgImage(
                              width: 24,
                              height: 24,
                              fit: BoxFit.contain,
                              colorFilter: ColorFilter.mode(
                                colors.static.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              lastTitle.value,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ).labelLg(color: colors.static.white),
                          ],
                        ),
                      ),
                    ),
                  ).shadow(
                    context,
                    backgroundColor: colors.brandSeaBlue,
                    borderRadius: BorderRadius.circular(28),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
