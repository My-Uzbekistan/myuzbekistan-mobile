part of '../home_hero_header.dart';

/// Tez amallar qatori (Otel / Aviabilet / ...).
class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.actions});

  final List<HomeQuickAction> actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < actions.length; i++) ...[
          if (i > 0) const SizedBox(width: 6),
          Expanded(child: _QuickActionTile(action: actions[i])),
        ],
      ],
    );
  }
}

class _QuickActionTile extends StatelessWidget {
  const _QuickActionTile({required this.action});

  final HomeQuickAction action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: action.onTap,
      child: AdaptiveGlass(
        borderRadius: 20,
        blur: 14,
        tint: const Color(0x14FFFFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: action.iconPath.toSvgImage(
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
          ),
        ),
      ),
    );
  }
}
