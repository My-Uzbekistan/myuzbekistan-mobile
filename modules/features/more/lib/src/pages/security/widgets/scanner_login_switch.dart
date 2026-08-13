import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/pin/utils.dart';
import 'package:shared/shared.dart' hide Toast;

class ScannerLoginSwitch extends HookWidget {
  final bool hasPin;

  const ScannerLoginSwitch({super.key, required this.hasPin});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final securityStorage = getIt<SecurityStorage>();
    final biometricUtils = getIt<BiometricUtils>();
    final isEnabled = useState(securityStorage.isFaceIdEnabled());

    useEffect(() {
      if (!hasPin && isEnabled.value) {
        securityStorage.setFaceIdEnabled(false);
        isEnabled.value = false;
      }
      return null;
    }, [hasPin]);

    Future<void> changeScannerLogin(bool value) async {
      if (!value) {
        await securityStorage.setFaceIdEnabled(false);
        isEnabled.value = false;
        return;
      }

      final canAuthenticate = await biometricUtils.checkCanAuthenticate();
      if (!canAuthenticate) {
        Toast.showToast(localization.biometricNotAvailable);
        return;
      }

      final authenticated = await biometricUtils
          .authenticateWithCustomDialogMessages(
            localization.scannerLoginPrompt,
          );
      if (!context.mounted) return;
      if (!authenticated) {
        Toast.showToast(localization.biometricNotAvailable);
        return;
      }

      await securityStorage.setFaceIdEnabled(true);
      isEnabled.value = true;
    }

    return AppSwitch(
      isSwitched: hasPin && isEnabled.value,
      onChanged: hasPin ? changeScannerLogin : null,
    );
  }
}
