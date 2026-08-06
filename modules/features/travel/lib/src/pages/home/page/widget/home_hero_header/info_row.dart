part of '../home_hero_header.dart';

/// Yuqori info qatori: hudud + ob-havo, namoz vaqti va bildirishnoma qo'ng'irog'i.
class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.regionName,
    required this.temperature,
    required this.airQuality,
    required this.airQualityLevel,
    required this.nextPrayer,
    required this.onRegionTap,
    required this.onNotificationTap,
  });

  final String regionName;
  final String temperature;
  final String? airQuality;

  /// IQAir `level` — rang darajasi: 0 yashil, 1 sariq, 2 qizil, 3 qora.
  final int? airQualityLevel;

  /// Keyingi namoz vaqti — `null` bo'lsa countdown pill ko'rsatilmaydi.
  final PrayerTimesItemModel? nextPrayer;
  final VoidCallback? onRegionTap;
  final VoidCallback? onNotificationTap;

  @override
  Widget build(BuildContext context) {
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
                          tintColor: Colors.white,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            regionName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodySm(color: Colors.white),
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
                      Text(temperature).labelMd(color: Colors.white),
                      if (airQuality != null) ...[
                        const SizedBox(width: 6),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.white.withValues(alpha: 0.2),
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

        if (nextPrayer != null) _PrayerPill(prayer: nextPrayer!),

        GlassFade(child: _NotificationBell(onTap: onNotificationTap)),
      ],
    );
  }
}

/// Havo sifati (AQI) belgisi.
///
/// Rang va emoji IQAir `level` bo'yicha tanlanadi (server faqat raqamni beradi):
/// 0 yashil 🙂, 1 sariq 😐, 2 qizil 🙁, 3 (va undan yuqori) qora 😷.
class _AqiBadge extends StatelessWidget {
  const _AqiBadge({required this.value, required this.level});

  final String value;
  final int level;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors.colors;
    final (Color color, String emoji) = switch (level) {
      0 => (colors.green, "🙂"),
      1 => (colors.yellow, "😐"),
      2 => (colors.red, "🙁"),
      _ => (const Color(0xFF3F3844), "😷"),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 12)),
          const SizedBox(width: 4),
          Text(value).labelSm(color: Colors.white),
        ],
      ),
    );
  }
}

/// Keyingi namoz vaqtigacha qolgan jonli sanoq (countdown) ko'rsatuvchi pill.
class _PrayerPill extends HookWidget {
  const _PrayerPill({required this.prayer});

  final PrayerTimesItemModel prayer;

  @override
  Widget build(BuildContext context) {
    final left = useState(_remaining(prayer.time));

    useEffect(() {
      left.value = _remaining(prayer.time);
      final timer = Timer.periodic(const Duration(seconds: 1), (_) {
        left.value = _remaining(prayer.time);
      });
      return timer.cancel;
    }, [prayer.time]);

    return AdaptiveGlass(
      borderRadius: 20,
      blur: 2,
      tint: const Color(0x14FFFFFF),
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
                tintColor: Colors.white,
              ),
            ),
            const SizedBox(width: 6),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localization.prayerTime(prayer.type.name),
                ).bodyXXsm(color: Colors.white.withValues(alpha: 0.56)),
                const SizedBox(height: 2),
                Text(_format(left.value)).labelSm(color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Duration _remaining(DateTime time) {
    final d = time.difference(DateTime.now());
    return d.isNegative ? Duration.zero : d;
  }

  String _format(Duration left) {
    String two(int n) => n.toString().padLeft(2, '0');
    return "${two(left.inHours)}:${two(left.inMinutes % 60)}:${two(left.inSeconds % 60)}";
  }
}

/// Bildirishnoma qo'ng'irog'i (o'qilmagan uchun qizil nuqta bilan).
class _NotificationBell extends StatelessWidget {
  const _NotificationBell({required this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Assets.svg.notificationIcon.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: Colors.white,
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
                    ).bodyXXsm(color: Colors.white),
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
