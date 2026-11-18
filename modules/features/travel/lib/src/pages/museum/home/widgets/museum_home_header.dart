import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class MuseumHomeHeader extends StatelessWidget {
  const MuseumHomeHeader({
    super.key,
    this.onSearchTap,
    this.onTicketsTap,
    this.onFavoritesTap,
  });

  final VoidCallback? onSearchTap;
  final VoidCallback? onTicketsTap;
  final VoidCallback? onFavoritesTap;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    final title = context.localization.museum_home_title;
    final height =
        topInset + 64 + _titleHeight(context, title) + 16 + 48 + 20;

    return SliverAppBar(
      expandedHeight: height,
      collapsedHeight: height - topInset,
      toolbarHeight: height - topInset,
      stretch: true,
      stretchTriggerOffset: 0.1,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          Assets.png.museumHeaderBg.image(fit: BoxFit.fill),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.82, 1],
                colors: [
                  context.appColors.background.underlayer.withValues(alpha: 0),
                  context.appColors.background.underlayer,
                ],
              ),
            ),
          ),
          Positioned(
            top: topInset + 64,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Text(
                  title,
                ).h1(color: context.appColors.textIconColor.primary),
                _searchRow(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _titleHeight(BuildContext context, String title) {
    final painter = TextPainter(
      text: TextSpan(text: title, style: CustomTypography.H1),
      textDirection: Directionality.of(context),
      textScaler: MediaQuery.textScalerOf(context),
    )..layout(maxWidth: MediaQuery.sizeOf(context).width - 32);
    return painter.height;
  }

  Widget _searchRow(BuildContext context) {
    final colors = context.appColors;

    return Row(
      spacing: 6,
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onSearchTap,
            child: SizedBox(
              height: 48,
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
                        context.localization.museum_search_hint,
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
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        _iconButton(
          context,
          onTap: onTicketsTap,
          icon: Assets.svg.iconTicket.path.toSvgImage(
            width: 20,
            height: 17,
            fit: BoxFit.contain,
            tintColor: colors.colors.green,
          ),
        ),
        _iconButton(
          context,
          onTap: onFavoritesTap,
          icon: Assets.svg.iconFilledHeard.path.toSvgImage(
            width: 24,
            height: 24,
            fit: BoxFit.contain,
            tintColor: colors.colors.red,
          ),
        ),
      ],
    );
  }

  Widget _iconButton(
    BuildContext context, {
    required Widget icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox.square(
        dimension: 48,
        child: Center(child: icon),
      ).shadow(
        context,
        backgroundColor: context.appColors.background.elevation2,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}
