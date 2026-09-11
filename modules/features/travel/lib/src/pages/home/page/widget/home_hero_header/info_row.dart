part of '../home_hero_header.dart';

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.regionName,
    required this.temperature,
    required this.onRegionTap,
    required this.onNotificationTap,
    this.onGiftTap,
  });

  final String regionName;
  final String temperature;

  final VoidCallback? onRegionTap;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onGiftTap;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final onMedia = appColors.service.onMedia;
    return Row(
      children: [
        Expanded(
          child: GlassFade(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onRegionTap,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.svg.locatorFill.path.toSvgImage(
                          width: 16,
                          height: 16,
                          tintColor: onMedia,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            regionName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodySm(color: onMedia),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.svg.sunMax.path.toSvgImage(
                        width: 16,
                        height: 16,
                        fit: BoxFit.contain,
                        tintColor: appColors.colors.yellow,
                      ),
                      const SizedBox(width: 4),
                      Text(temperature).labelMd(color: onMedia),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        if (onGiftTap != null) ...[
          const SizedBox(width: 8),
          GlassFade(
            child: _HeaderIconButton(
              iconPath: Assets.svg.iconGift.path,
              onTap: onGiftTap,
            ),
          ),
        ],

        const SizedBox(width: 8),
        GlassFade(child: _NotificationBell(onTap: onNotificationTap)),
      ],
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  const _HeaderIconButton({
    required this.iconPath,
    required this.onTap,
    this.badge,
  });

  final String iconPath;
  final VoidCallback? onTap;
  final Widget? badge;

  @override
  Widget build(BuildContext context) {
    final onMedia = context.appColors.service.onMedia;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: onMedia.withValues(alpha: 0.2)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: iconPath.toSvgImage(
                fit: BoxFit.contain,
                tintColor: onMedia,
              ),
            ),
            if (badge != null) Positioned(right: -4, top: -4, child: badge!),
          ],
        ),
      ),
    );
  }
}

class _NotificationBell extends StatelessWidget {
  const _NotificationBell({required this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return _HeaderIconButton(
      iconPath: Assets.svg.notificationIcon.path,
      onTap: onTap,
      badge: BlocBuilder<NotificationCountCubit, int>(
        builder: (context, count) {
          if (count == 0) return const SizedBox.shrink();
          return Container(
            constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.appColors.colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              count.toString(),
              overflow: TextOverflow.ellipsis,
            ).bodyXXsm(color: context.appColors.static.white),
          );
        },
      ),
    );
  }
}
