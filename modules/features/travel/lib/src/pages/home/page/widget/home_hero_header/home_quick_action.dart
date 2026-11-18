part of '../home_hero_header.dart';

class HomeQuickAction {
  const HomeQuickAction({
    required this.iconPath,
    required this.label,
    this.onTap,
  });

  final String iconPath;
  final String label;
  final VoidCallback? onTap;
}
