import 'dart:io';

import 'package:local_auth/local_auth.dart';
import 'package:shared/shared.dart';

abstract class BiometricUtils {
  Future<bool> checkCanAuthenticate();

  Future<bool> isSupportBiometric();

  Future<bool> authenticateWithCustomDialogMessages(String localizedReason);
}

@Injectable(as: BiometricUtils)
class BiometricUtilsProvider extends BiometricUtils {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Future<bool> isSupportBiometric() {
    return auth.isDeviceSupported();
  }

  @override
  Future<bool> checkCanAuthenticate() async {
    try {
      if (Platform.isIOS) {
        return (await auth.getAvailableBiometrics()).isNotEmpty;
      }
      return await auth.isDeviceSupported();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> authenticateWithCustomDialogMessages(
    String localizedReason,
  ) async {
    try {
      return await auth.authenticate(
        localizedReason: localizedReason,
        options: AuthenticationOptions(
          sensitiveTransaction: false,
          biometricOnly: Platform.isIOS,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }
}
