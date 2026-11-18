part of '../home_hero_header.dart';

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
      borderRadius: 14,
      blur: 2,
      tint: context.appColors.service.glass,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
