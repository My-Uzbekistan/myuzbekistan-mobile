part of '../home_hero_header.dart';

// Status bar ostidagi o'lchovlar (Figma 184:3873 → 350:4208).
const double _kExpanded = 305; // to'liq ochilgan balandlik
const double _kCollapsed = 84; // yig'ilgan (faqat qidiruv qatori)
const double _kInfoTop = 24;
const double _kQuickTop = 148;
const double _kSearchH = 48;
const double _kSearchBottomPad = 16;
const double _kRadius = 28;
const double _kHPad = 16;

// Qidiruv qatori ochilganda kartadan yarmi chiqib turadi (Figma 374:7864),
// yig'ilganda esa oq panel ichiga kiradi.
const double _kOverhangMax = _kSearchH / 2 + _kSearchBottomPad;

const LinearGradient _kImageOverlay = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 0.6, 1.0],
  colors: [Color(0x1F14191A), Color(0x8014191A), Color(0xCC14191A)],
);

const List<BoxShadow> _kSearchShadow = [
  BoxShadow(color: Color(0x14000000), blurRadius: 40, offset: Offset(0, 16)),
  BoxShadow(color: Color(0x14000000), blurRadius: 16, offset: Offset(0, 6)),
];

/// Header'ning joriy scroll holatidan (`belowH`) kelib chiqadigan barcha
/// animatsiya va joylashuv qiymatlari.
class _HeaderMetrics {
  factory _HeaderMetrics({required double belowH, required double topInset}) {
    final clamped = belowH.clamp(_kCollapsed, _kExpanded);
    // 0 = ochilgan, 1 = yig'ilgan.
    final t = ((_kExpanded - clamped) / (_kExpanded - _kCollapsed))
        .clamp(0.0, 1.0);
    final overscroll = (belowH - _kExpanded).clamp(0.0, 500.0);

    return _HeaderMetrics._(
      topInset: topInset,
      t: t,
      overscroll: overscroll,
      // Overscroll'da fon rasm markazdan parallax zoom bo'ladi.
      zoom: 1.0 + (overscroll / 260).clamp(0.0, 0.6),
      // Kontent (ob-havo/tez amallar) yig'ilishning ~yarmida so'nadi.
      contentOpacity: (1 - t * 2.2).clamp(0.0, 1.0),
      // Fon rasm asta oqqa o'tadi.
      imageOpacity: 1 - Curves.easeIn.transform(t),
      // Overscroll'da karta bilan birga cho'zilishi uchun `belowH` ishlatiladi.
      searchTop: topInset + belowH - _kSearchH - _kSearchBottomPad,
      cardBottom: topInset + belowH - _kOverhangMax * (1 - t),
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

  /// `_kExpanded`dan oshib ketgan cho'zilish (overscroll) miqdori — kontentni
  /// karta bilan bir tekis pastga surish uchun.
  final double overscroll;

  final double zoom;
  final double contentOpacity;
  final double imageOpacity;
  final double searchTop;
  final double cardBottom;
}
