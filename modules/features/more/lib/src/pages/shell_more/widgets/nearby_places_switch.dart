import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/nearby_places/nearby_places_service.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/shell_more/widgets/nearby_places_disclosure_sheet.dart';
import 'package:shared/shared.dart';

class NearbyPlacesSwitch extends HookWidget {
  const NearbyPlacesSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final service = getIt<NearbyPlacesService>();
    final isEnabled = useValueListenable(service.enabledListenable);
    final isBusy = useState(false);

    Future<void> onChanged(bool value) async {
      if (isBusy.value) return;
      isBusy.value = true;
      if (value) {
        await requestNearbyPlaces(context);
      } else {
        await service.disable();
      }
      if (context.mounted) isBusy.value = false;
    }

    return AppSwitch(isSwitched: isEnabled, onChanged: onChanged);
  }
}
