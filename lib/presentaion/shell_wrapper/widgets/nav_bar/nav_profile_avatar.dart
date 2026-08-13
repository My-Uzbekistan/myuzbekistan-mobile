import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'nav_premium_badge.dart';

class NavProfileAvatar extends StatelessWidget {
  const NavProfileAvatar({
    super.key,
    required this.photoUrl,
    required this.selected,
    required this.ringColor,
    this.isPremium = false,
    this.size = 24,
  });

  final String? photoUrl;
  final bool selected;
  final Color ringColor;
  final bool isPremium;
  final double size;

  static const double _badgeTop = -4;
  static const double _badgeRight = -8.875;
  static const double _ringWidth = 1.5;

  @override
  Widget build(BuildContext context) {
    final url = photoUrl ?? '';
    final Widget image = url.isEmpty
        ? Assets.png.avatar.image(fit: BoxFit.cover)
        : ExtendedImage.network(
            url,
            fit: BoxFit.cover,
            cache: true,
            cacheMaxAge: const Duration(days: 10),
            loadStateChanged: (state) {
              switch (state.extendedImageLoadState) {
                case LoadState.completed:
                  return state.completedWidget;
                default:
                  return Assets.png.avatar.image(fit: BoxFit.cover);
              }
            },
          );

    final Color ring = isPremium
        ? context.appColors.colors.yellow
        : selected
            ? ringColor
            : Colors.transparent;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutCubic,
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ring, width: _ringWidth),
          ),
          child: ClipOval(child: image),
        ),
        if (isPremium)
          const Positioned(
            top: _badgeTop,
            right: _badgeRight,
            child: NavPremiumBadge(),
          ),
      ],
    );
  }
}
