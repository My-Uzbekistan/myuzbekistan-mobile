part of '../home_hero_header.dart';

class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.actions});

  final List<HomeQuickAction> actions;

  @override
  Widget build(BuildContext context) {
    if (actions.isEmpty) {
      return const GlassFade(child: _QuickActionsShimmer());
    }
    return AdaptiveGlassRow(
      borderRadius: 20,
      blur: 2,
      spacing: 6,
      tint: context.appColors.service.glass,
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

class _QuickActionsShimmer extends StatelessWidget {
  const _QuickActionsShimmer();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Row(
        children: [
          for (var i = 0; i < 4; i++) ...[
            if (i > 0) const SizedBox(width: 6),
            const Expanded(
              child: ShimmerDefaultContainer(height: 69, radius: 20),
            ),
          ],
        ],
      ),
    );
  }
}

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
              ? AppNetworkImage(action.iconPath, fit: BoxFit.contain)
              : action.iconPath.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: context.appColors.service.onMedia,
                ),
        ),
        const SizedBox(height: 8),
        Text(
          action.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ).bodyXXsm(color: context.appColors.service.onMedia),
      ],
    );
  }
}
