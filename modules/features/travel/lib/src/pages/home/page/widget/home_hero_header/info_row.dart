part of '../home_hero_header.dart';

/// Yuqori info qatori: hudud + ob-havo, namoz vaqti va bildirishnoma qo'ng'irog'i.
class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.regionName,
    required this.temperature,
    required this.airQuality,
    required this.prayerLabel,
    required this.prayerTime,
    required this.onRegionTap,
    required this.onNotificationTap,
  });

  final String regionName;
  final String temperature;
  final String? airQuality;
  final String prayerLabel;
  final DateTime prayerTime;
  final VoidCallback? onRegionTap;
  final VoidCallback? onNotificationTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                        _AqiBadge(value: airQuality!),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        _PrayerPill(label: prayerLabel, time: prayerTime),
        const SizedBox(width: 8),
        GlassFade(child: _NotificationBell(onTap: onNotificationTap)),
      ],
    );
  }
}

/// Havo sifati (AQI) belgisi.
class _AqiBadge extends StatelessWidget {
  const _AqiBadge({required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: context.appColors.colors.green,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("🙂", style: TextStyle(fontSize: 12)),
          const SizedBox(width: 4),
          Text(value).labelSm(color: Colors.white),
        ],
      ),
    );
  }
}

/// Namoz vaqtigacha qolgan jonli sanoq (countdown) ko'rsatuvchi pill.
class _PrayerPill extends StatefulWidget {
  const _PrayerPill({required this.label, required this.time});

  final String label;
  final DateTime time;

  @override
  State<_PrayerPill> createState() => _PrayerPillState();
}

class _PrayerPillState extends State<_PrayerPill> {
  Timer? _timer;
  late Duration _left;

  @override
  void initState() {
    super.initState();
    _left = _remaining();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) return;
      setState(() => _left = _remaining());
    });
  }

  @override
  void didUpdateWidget(covariant _PrayerPill old) {
    super.didUpdateWidget(old);
    if (old.time != widget.time) _left = _remaining();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Duration _remaining() {
    final d = widget.time.difference(DateTime.now());
    return d.isNegative ? Duration.zero : d;
  }

  String get _formatted {
    String two(int n) => n.toString().padLeft(2, '0');
    return "${two(_left.inHours)}:${two(_left.inMinutes % 60)}:${two(_left.inSeconds % 60)}";
  }

  @override
  Widget build(BuildContext context) {
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
                  widget.label,
                ).bodyXXsm(color: Colors.white.withValues(alpha: 0.56)),
                const SizedBox(height: 2),
                Text(_formatted).labelSm(color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
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
