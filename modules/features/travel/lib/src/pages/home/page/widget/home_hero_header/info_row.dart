part of '../home_hero_header.dart';

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.regionName,
    required this.temperature,
    required this.airQuality,
    required this.airQualityLevel,
    required this.currentPrayer,
    required this.onRegionTap,
    required this.onNotificationTap,
    this.onPrayerExpired,
    this.onPrayerTap,
  });

  final String regionName;
  final String temperature;
  final String? airQuality;

  final int? airQualityLevel;

  final PrayerCurrent? currentPrayer;
  final VoidCallback? onRegionTap;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onPrayerExpired;
  final VoidCallback? onPrayerTap;

  @override
  Widget build(BuildContext context) {
    final onMedia = context.appColors.service.onMedia;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
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
                      const Text("☀️", style: TextStyle(fontSize: 15)),
                      const SizedBox(width: 4),
                      Text(temperature).labelMd(color: onMedia),
                      if (airQuality != null) ...[
                        const SizedBox(width: 6),
                        Container(
                          width: 1,
                          height: 20,
                          color: onMedia.withValues(alpha: 0.2),
                        ),
                        const SizedBox(width: 6),
                        _AqiBadge(
                          value: airQuality!,
                          level: airQualityLevel ?? 0,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        if (currentPrayer?.hasNext == true)
          _PrayerPill(
            current: currentPrayer!,
            onExpired: onPrayerExpired,
            onTap: onPrayerTap,
          ),

        GlassFade(child: _NotificationBell(onTap: onNotificationTap)),
      ],
    );
  }
}

class _AqiBadge extends StatelessWidget {
  const _AqiBadge({required this.value, required this.level});

  final String value;
  final int level;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final (Color background, Color foreground, String emoji) = switch (level) {
      0 => (appColors.colors.green, appColors.static.white, "🙂"),
      1 => (appColors.colors.yellow, appColors.static.black, "😐"),
      2 => (appColors.colors.red, appColors.static.white, "🙁"),
      _ => (appColors.colors.purple, appColors.static.white, "😷"),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 12)),
          const SizedBox(width: 4),
          Text(value).labelSm(color: foreground),
        ],
      ),
    );
  }
}

class _PrayerPill extends HookWidget {
  const _PrayerPill({required this.current, this.onExpired, this.onTap});

  final PrayerCurrent current;
  final VoidCallback? onExpired;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final left = useState(Duration(seconds: current.remainingSeconds ?? 0));

    useEffect(() {
      final deadline = DateTime.now().add(
        Duration(seconds: current.remainingSeconds ?? 0),
      );
      left.value = _remaining(deadline);
      var notified = false;
      final timer = Timer.periodic(const Duration(seconds: 1), (_) {
        final remaining = _remaining(deadline);
        left.value = remaining;
        if (remaining == Duration.zero && !notified) {
          notified = true;
          onExpired?.call();
        }
      });
      return timer.cancel;
    }, [current.nextKey, current.remainingSeconds]);

    final onMedia = context.appColors.service.onMedia;

    return AdaptiveGlass(
      borderRadius: 20,
      blur: 2,
      tint: context.appColors.service.glass,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Assets.svg.namazIcon.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: onMedia,
                ),
              ),
              const SizedBox(width: 6),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    current.nextName ?? "",
                  ).bodyXXsm(color: onMedia.withValues(alpha: 0.56)),
                  const SizedBox(height: 2),
                  Text(_format(left.value)).labelSm(color: onMedia),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Duration _remaining(DateTime deadline) {
    final d = deadline.difference(DateTime.now());
    return d.isNegative ? Duration.zero : d;
  }

  String _format(Duration left) {
    String two(int n) => n.toString().padLeft(2, '0');
    return "${two(left.inHours)}:${two(left.inMinutes % 60)}:${two(left.inSeconds % 60)}";
  }
}

class _NotificationBell extends StatelessWidget {
  const _NotificationBell({required this.onTap});

  final VoidCallback? onTap;

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
              child: Assets.svg.notificationIcon.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: onMedia,
              ),
            ),
            Positioned(
              right: -4,
              top: -4,
              child: BlocBuilder<NotificationCountCubit, int>(
                builder: (context, count) {
                  if (count == 0) return const SizedBox.shrink();
                  return Container(
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
