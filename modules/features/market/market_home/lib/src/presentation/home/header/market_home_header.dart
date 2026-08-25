import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/widgets/market_circle_button.dart';
import 'package:market_home/src/presentation/widgets/market_search_hero.dart';

const double _expandedHeight = 116;
const double _collapsedHeight = 64;
const double _searchHeight = 48;
const double _horizontalPadding = 16;

class MarketHomeHeader extends StatelessWidget {
  const MarketHomeHeader({
    super.key,
    required this.regionName,
    this.onRegionTap,
    this.onCatalogTap,
    this.onSearchTap,
  });

  final String regionName;
  final VoidCallback? onRegionTap;
  final VoidCallback? onCatalogTap;
  final VoidCallback? onSearchTap;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;

    return SliverAppBar(
      pinned: true,
      stretch: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      toolbarHeight: _collapsedHeight,
      expandedHeight: _expandedHeight,
      stretchTriggerOffset: 80,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final metrics = _HeaderMetrics(
            belowHeight: constraints.maxHeight - topInset,
            topInset: topInset,
          );

          return Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              _card(context, metrics),
              Positioned(
                top: metrics.searchTop,
                left: _horizontalPadding,
                right: _horizontalPadding,
                child: _searchRow(context),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _card(BuildContext context, _HeaderMetrics metrics) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: metrics.cardBottom,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(24 * (1 - metrics.collapseProgress)),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            _surface(context, metrics),
            Positioned(
              top: metrics.topInset,
              left: _horizontalPadding,
              right: _horizontalPadding,
              child: IgnorePointer(
                ignoring: metrics.contentOpacity < 0.05,
                child: Opacity(
                  opacity: metrics.contentOpacity,
                  child: Transform.translate(
                    offset: Offset(0, -20 * metrics.collapseProgress),
                    child: _titleRow(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _surface(BuildContext context, _HeaderMetrics metrics) {
    final progress = metrics.collapseProgress;
    final gradientOpacity = metrics.gradientOpacity;
    final base = context.appColors.background.base;

    return Positioned.fill(
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (progress > 0.02)
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 0.55, 1],
                  colors: [
                    base.withValues(alpha: 0.92 * progress),
                    base.withValues(alpha: 0.82 * progress),
                    base.withValues(alpha: 0),
                  ],
                ),
              ),
            ),
          if (gradientOpacity > 0.001)
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.11, -1),
                  end: const Alignment(-0.11, 1),
                  stops: const [0.044, 1],
                  colors: [
                    const Color(
                      0xFF26BF0D,
                    ).withValues(alpha: gradientOpacity),
                    const Color(
                      0xFFB8E53C,
                    ).withValues(alpha: gradientOpacity),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _titleRow(BuildContext context) {
    final white = context.appColors.static.white;

    return Row(
      children: [
        Expanded(
          child: Text(
            context.localization.market_home_title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).h1(color: white),
        ),
        if (regionName.isNotEmpty) ...[
          const SizedBox(width: 8),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onRegionTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.svg.locatorFill.path.toSvgImage(
                  width: 16,
                  height: 16,
                  fit: BoxFit.contain,
                  tintColor: white,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    regionName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelSm(color: white),
                ),
                const SizedBox(width: 2),
                RotatedBox(
                  quarterTurns: 1,
                  child: Assets.svg.prayers.chevronRight.path.toSvgImage(
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                    tintColor: white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _searchRow(BuildContext context) {
    final colors = context.appColors;

    return Row(
      spacing: 8,
      children: [
        MarketSearchHero(
          tag: MarketSearchHero.leadingTag,
          child: MarketCircleButton(
            size: _searchHeight,
            onTap: onCatalogTap,
            icon: Assets.svg.tabIconCatalog.path.toSvgImage(
              width: 24,
              height: 24,
              fit: BoxFit.contain,
              tintColor: colors.colors.green,
            ),
          ),
        ),
        Expanded(
          child: MarketSearchHero(
            tag: MarketSearchHero.fieldTag,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onSearchTap,
              child: SizedBox(
                height: _searchHeight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 8,
                    children: [
                      Assets.svg.searchLine.path.toSvgImage(
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        tintColor: colors.colors.green,
                      ),
                      Expanded(
                        child: Text(
                          context.localization.market_search_hint,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).bodyMd(color: colors.textIconColor.secondary),
                      ),
                    ],
                  ),
                ),
              ).shadow(
                context,
                backgroundColor: colors.background.elevation2,
                borderRadius: BorderRadius.circular(_searchHeight / 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _HeaderMetrics {
  factory _HeaderMetrics({
    required double belowHeight,
    required double topInset,
  }) {
    final clamped = belowHeight.clamp(_collapsedHeight, _expandedHeight);
    final progress =
        ((_expandedHeight - clamped) / (_expandedHeight - _collapsedHeight))
            .clamp(0.0, 1.0);

    return _HeaderMetrics._(
      topInset: topInset,
      collapseProgress: progress,
      contentOpacity: (1 - progress * 2.2).clamp(0.0, 1.0),
      gradientOpacity: 1 - Curves.easeIn.transform(progress),
      searchTop: topInset + belowHeight - _searchHeight - 16,
      cardBottom: topInset + belowHeight,
    );
  }

  const _HeaderMetrics._({
    required this.topInset,
    required this.collapseProgress,
    required this.contentOpacity,
    required this.gradientOpacity,
    required this.searchTop,
    required this.cardBottom,
  });

  final double topInset;
  final double collapseProgress;
  final double contentOpacity;
  final double gradientOpacity;
  final double searchTop;
  final double cardBottom;
}
