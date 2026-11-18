import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';

class DeviceSessionCell extends StatelessWidget {
  final DeviceSession session;
  final bool isTerminating;
  final VoidCallback? onTap;

  const DeviceSessionCell({
    super.key,
    required this.session,
    this.isTerminating = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final tertiary = context.appColors.textIconColor.tertiary;
    final location = session.location;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: isTerminating ? null : onTap,
      child: Opacity(
        opacity: isTerminating ? 0.4 : 1,
        child: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: context.appColors.brandSeaBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox.square(
                dimension: 24,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.appColors.static.white,
                    BlendMode.srcIn,
                  ),
                  child: Assets.svg.more.device.svg(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    session.deviceModel ?? localization.unknownDevice,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                  Text(
                    _osLine(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: tertiary),
                  Row(
                    spacing: 4,
                    children: [
                      if (location != null && location.isNotEmpty) ...[
                        Flexible(
                          child: Text(
                            location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodySm(color: tertiary),
                        ),
                        Text("•").bodySm(color: tertiary),
                      ],
                      Text(
                        session.isOnline
                            ? localization.deviceOnline
                            : localization.deviceOffline,
                      ).bodySm(
                        color:
                            session.isOnline
                                ? context.appColors.brandSeaBlue
                                : tertiary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isTerminating)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: LoadingIndicator(size: 24),
              ),
          ],
        ),
      ),
    );
  }

  String _osLine() {
    return [_platformLabel(), session.osVersion]
        .whereType<String>()
        .where((e) => e.isNotEmpty)
        .join(" ");
  }

  String? _platformLabel() {
    return switch (session.platform) {
      DevicePlatform.android => "Android",
      DevicePlatform.ios => "iOS",
      DevicePlatform.web => "Web",
      DevicePlatform.unknown => null,
    };
  }
}
