import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';

Future<bool?> showDeviceSessionSheet(
  BuildContext context, {
  required DeviceSession session,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => DeviceSessionSheet(session: session),
  );
}

class DeviceSessionSheet extends StatelessWidget {
  final DeviceSession session;

  const DeviceSessionSheet({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: 32,
            height: 4,
            decoration: BoxDecoration(
              color: context.appColors.service.overlay,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: context.appColors.background.underlayer,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 6,
              children: [
                Flexible(child: _header(context)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.appColors.background.elevation1,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: SafeArea(
                    top: false,
                    child: AppActionButton(
                      actionText: localization.signOutFromDevice,
                      sizeType: ActionButtonSizeType.large,
                      type: ActionButtonType.secondary,
                      contentColor: context.appColors.colors.red,
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _header(BuildContext context) {
    final localization = context.localization;
    final ipAddress = session.ipAddress;
    final location = session.location;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 12,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: context.appColors.brandSeaBlue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox.square(
                dimension: 40,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.appColors.static.white,
                    BlendMode.srcIn,
                  ),
                  child: Assets.svg.more.device.svg(),
                ),
              ),
            ),
            Column(
              spacing: 4,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    session.deviceModel ?? localization.unknownDevice,
                    textAlign: TextAlign.center,
                  ).h3(color: context.appColors.textIconColor.primary),
                ),
                Text(
                  session.isOnline
                      ? localization.deviceOnline
                      : localization.deviceOffline,
                ).bodySm(
                  color:
                      session.isOnline
                          ? context.appColors.brandSeaBlue
                          : context.appColors.textIconColor.tertiary,
                ),
              ],
            ),
            if (ipAddress != null || location != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.appColors.fill.quaternary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (ipAddress != null)
                        _infoCell(
                          context,
                          label: localization.deviceIpAddress,
                          value: ipAddress,
                        ),
                      if (location != null)
                        _infoCell(
                          context,
                          label: localization.deviceLocation,
                          value: location,
                        ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _infoCell(
    BuildContext context, {
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodySm(color: context.appColors.textIconColor.secondary),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              value,
            ).bodyLg(color: context.appColors.textIconColor.primary),
          ),
        ],
      ),
    );
  }
}
