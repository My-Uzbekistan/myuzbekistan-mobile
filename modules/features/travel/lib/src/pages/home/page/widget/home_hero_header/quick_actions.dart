part of '../home_hero_header.dart';

/// Tez amallar qatori (Otel / Aviabilet / ...).
///
/// iOS'da barcha katakchalar YAGONA liquid glass blend-guruhida — bir sirtdek
/// refraction qiladi va yaqin katakchalar suyuqlikdek qo'shiladi. Android/web'da
/// har biri alohida frosted blur bo'ladi. Qarang: [AdaptiveGlassRow].
class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.actions});

  final List<HomeQuickAction> actions;

  @override
  Widget build(BuildContext context) {
    return AdaptiveGlassRow(
      borderRadius: 20,
      blur: 2,
      spacing: 6,
      tint: const Color(0x14FFFFFF),
      items: [
        for (final action in actions)
          AdaptiveGlassRowItem(
            onTap: action.onTap,
            child: _QuickActionContent(action: action),
          ),
      ],
    );
  }
}

/// Bitta tez amal katakchasining ichki kontenti (icon + yorliq) — shisha sirti
/// [AdaptiveGlassRow] tomonidan beriladi.
class _QuickActionContent extends StatelessWidget {
  const _QuickActionContent({required this.action});

  final HomeQuickAction action;

  @override
  Widget build(BuildContext context) {
    final isNetworkIcon = action.iconPath.startsWith('http');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: isNetworkIcon
              ? ExtendedImage.network(
                  action.iconPath,
                  fit: BoxFit.contain,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return null;
                      default:
                        return const SizedBox();
                    }
                  },
                )
              : action.iconPath.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: Colors.white,
                ),
        ),
        const SizedBox(height: 8),
        Text(
          action.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ).bodyXXsm(color: Colors.white),
      ],
    );
  }
}
