import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Profil tab uchun yumaloq avatar — iOS (glass) va Android (telegram) ikkalasi
/// ham shu widgetni ishlatadi, shuning uchun ko'rinish har ikki platformada
/// bir xil bo'ladi.
///
/// [photoUrl] bo'sh yoki `null` bo'lsa (premium emas yoki mehmon) — default
/// avatar rasmi ko'rsatiladi. Tanlanganda ([selected]) [ringColor] rangida
/// yupqa halqa chiziladi.
class NavProfileAvatar extends StatelessWidget {
  const NavProfileAvatar({
    super.key,
    required this.photoUrl,
    required this.selected,
    required this.ringColor,
    this.size = 24,
  });

  final String? photoUrl;
  final bool selected;
  final Color ringColor;
  final double size;

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

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: selected ? ringColor : Colors.transparent,
          width: 1.5,
        ),
      ),
      child: ClipOval(child: image),
    );
  }
}
