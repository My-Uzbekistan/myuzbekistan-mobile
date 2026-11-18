import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/core/nearby_places/nearby_places_service.dart';
import 'package:more/src/di/injection.dart';
import 'package:shared/shared.dart' show Geolocator, LocationPermission;

Future<void> askNearbyPlacesOnLaunch(BuildContext context) async {
  final service = getIt<NearbyPlacesService>();
  if (!await service.shouldAskOnLaunch()) return;

  await Future.delayed(const Duration(seconds: 3));
  var idleChecks = 0;
  var waitedSeconds = 0;
  while (idleChecks < 2) {
    if (!context.mounted) return;
    final permissionDecided =
        await Geolocator.checkPermission() != LocationPermission.denied ||
            waitedSeconds >= 20;
    if (!context.mounted) return;
    final isIdle = permissionDecided &&
        WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed &&
        (ModalRoute.of(context)?.isCurrent ?? false);
    idleChecks = isIdle ? idleChecks + 1 : 0;
    waitedSeconds++;
    await Future.delayed(const Duration(seconds: 1));
  }
  if (!context.mounted || service.isEnabled) return;

  await requestNearbyPlaces(context);
}

Future<bool> requestNearbyPlaces(BuildContext context) async {
  final service = getIt<NearbyPlacesService>();
  final canSkip = service.canSkipDisclosure;
  final accepted = await showModalBottomSheet<bool>(
    context: context,
    useRootNavigator: true,
    isDismissible: canSkip,
    enableDrag: canSkip,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => NearbyPlacesDisclosureSheet(canSkip: canSkip),
  );
  if (accepted != true || !context.mounted) return false;

  final localization = context.localization;
  final enabled = await service.enable();
  if (!enabled) {
    Toast.showToast(localization.nearbyPlacesPermissionDenied);
  }
  return enabled;
}

class NearbyPlacesDisclosureSheet extends StatelessWidget {
  final bool canSkip;

  const NearbyPlacesDisclosureSheet({super.key, required this.canSkip});

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
                Flexible(child: _content(context)),
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
                    child: Column(
                      spacing: 8,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: AppActionButton(
                            actionText:
                                localization.nearbyPlacesDisclosureContinue,
                            sizeType: ActionButtonSizeType.large,
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ),
                        if (canSkip)
                          SizedBox(
                            width: double.infinity,
                            child: AppActionButton(
                              actionText: localization.nearbyPlacesDisclosureLater,
                              sizeType: ActionButtonSizeType.large,
                              type: ActionButtonType.secondary,
                              onPressed: () => Navigator.of(context).pop(false),
                            ),
                          ),
                      ],
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

  Widget _content(BuildContext context) {
    final localization = context.localization;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
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
                  child: Assets.svg.pinLocationLine.svg(),
                ),
              ),
            ),
            Column(
              spacing: 8,
              children: [
                Text(
                  localization.nearbyPlacesDisclosureTitle,
                  textAlign: TextAlign.center,
                ).h3(color: context.appColors.textIconColor.primary),
                Text(
                  localization.nearbyPlacesDisclosureBody,
                  textAlign: TextAlign.center,
                ).bodyLg(color: context.appColors.textIconColor.secondary),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.appColors.fill.quaternary,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                children: [
                  _point(context, localization.nearbyPlacesDisclosureDistance),
                  _point(context, localization.nearbyPlacesDisclosureLimit),
                  _point(context, localization.nearbyPlacesDisclosureTurnOff),
                ],
              ),
            ),
            Text(
              localization.nearbyPlacesDisclosureHint,
              textAlign: TextAlign.center,
            ).bodySm(color: context.appColors.textIconColor.tertiary),
          ],
        ),
      ),
    );
  }

  Widget _point(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox.square(
            dimension: 20,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.appColors.brandSeaBlue,
                BlendMode.srcIn,
              ),
              child: Assets.svg.iconCheck.svg(),
            ),
          ),
          Expanded(
            child: Text(
              text,
            ).bodyLg(color: context.appColors.textIconColor.primary),
          ),
        ],
      ),
    );
  }
}
