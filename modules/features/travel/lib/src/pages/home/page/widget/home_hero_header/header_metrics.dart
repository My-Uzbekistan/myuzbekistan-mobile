part of '../home_hero_header.dart';

LinearGradient _imageOverlay(BuildContext context) {
  final scrim = context.appColors.service.scrim;
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0.0, 0.6, 1.0],
    colors: [
      scrim.withValues(alpha: 0.12),
      scrim.withValues(alpha: 0.5),
      scrim.withValues(alpha: 0.8),
    ],
  );
}

List<BoxShadow> _searchShadow(BuildContext context) {
  final shadow = context.appColors.service.shadow;
  return [
    BoxShadow(color: shadow, blurRadius: 124, offset: const Offset(0, 45)),
    BoxShadow(color: shadow, blurRadius: 16, offset: const Offset(0, 6)),
  ];
}

class _HeaderMetrics {
  factory _HeaderMetrics({required double belowH, required double topInset}) {
    final clamped = belowH.clamp(72.0, 295.0);
    final t = ((295 - clamped) / 223).clamp(0.0, 1.0);
    final overscroll = (belowH - 295).clamp(0.0, 500.0);

    return _HeaderMetrics._(
      topInset: topInset,
      t: t,
      overscroll: overscroll,
      zoom: 1.0 + (overscroll / 260).clamp(0.0, 0.6),
      contentOpacity: (1 - t * 2.8).clamp(0.0, 1.0),
      imageOpacity: 1 - Curves.easeIn.transform(t),
      searchTop: topInset + belowH - 48 - 16 * t,
      cardBottom: topInset + belowH - 24 * (1 - t),
    );
  }

  const _HeaderMetrics._({
    required this.topInset,
    required this.t,
    required this.overscroll,
    required this.zoom,
    required this.contentOpacity,
    required this.imageOpacity,
    required this.searchTop,
    required this.cardBottom,
  });

  final double topInset;
  final double t;

  final double overscroll;

  final double zoom;
  final double contentOpacity;
  final double imageOpacity;
  final double searchTop;
  final double cardBottom;
}
