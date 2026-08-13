import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'nav_bar/ios_glass_nav_bar.dart';
import 'nav_bar/nav_bar_style.dart';
import 'nav_bar/telegram_nav_bar.dart';

/// Ilova pastki navigatsiya bari.
///
/// Platformaga qarab ko'rinishni tanlaydi:
///  - iOS   → [IosGlassNavBar]  (Liquid Glass)
///  - Android/boshqa → [TelegramNavBar]  (suzuvchi glass kapsula)
///
/// Ikkala versiya ham tab ro'yxatini bitta manbadan (`navBarTabs`) oladi.
class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
    this.profilePhotoUrl,
    this.isPremium = false,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  /// Profil tab avatari uchun rasm URL (null bo'lsa default avatar).
  final String? profilePhotoUrl;

  final bool isPremium;

  @override
  Widget build(BuildContext context) {
    final nav = Platform.isIOS
        ? IosGlassNavBar(
            selectedIndex: selectedIndex,
            onTabSelected: onTabSelected,
            profilePhotoUrl: profilePhotoUrl,
            isPremium: isPremium,
          )
        : TelegramNavBar(
            selectedIndex: selectedIndex,
            onTabSelected: onTabSelected,
            profilePhotoUrl: profilePhotoUrl,
            isPremium: isPremium,
          );

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Kontent tepasidan bar ostigacha yumshoq oqarish (fade).
        const IgnorePointer(
          child: SizedBox(
            height: NavBarStyle.fadeHeight,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: NavBarStyle.fadeGradient),
            ),
          ),
        ),
        nav,
      ],
    );
  }
}
