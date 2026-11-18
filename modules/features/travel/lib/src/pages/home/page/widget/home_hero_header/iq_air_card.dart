part of '../home_hero_header.dart';

class _IqAirCard extends StatelessWidget {
  const _IqAirCard({required this.value, required this.level});

  final String value;
  final int level;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final (Color background, Color foreground, Color muted) = switch (level) {
      0 => (
        appColors.colors.green,
        appColors.static.white,
        appColors.static.white.withValues(alpha: 0.8),
      ),
      1 => (
        appColors.colors.yellow,
        appColors.accent.aqiModerateLabel,
        appColors.static.black.withValues(alpha: 0.48),
      ),
      2 => (
        appColors.colors.red,
        appColors.static.white,
        appColors.static.white.withValues(alpha: 0.8),
      ),
      _ => (
        appColors.accent.aqiHazardous,
        appColors.static.white,
        appColors.static.white.withValues(alpha: 0.8),
      ),
    };
    final label = switch (level) {
      0 => context.localization.aqi_good,
      1 => context.localization.aqi_moderate,
      2 => context.localization.aqi_bad,
      _ => context.localization.aqi_hazardous,
    };

    return Container(
      width: 105,
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: Assets.svg.iqAir.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: foreground,
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                ).bodyXXsm(color: muted),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text.rich(
                const TextSpan(
                  children: [
                    TextSpan(text: "IQ"),
                    TextSpan(
                      text: "Air",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                style: CustomTypography.bodyXXsm.copyWith(
                  fontWeight: FontWeight.w400,
                  color: muted,
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                ).labelSm(color: foreground),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
