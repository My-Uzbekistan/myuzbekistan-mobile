import 'package:flutter/cupertino.dart';
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

  Future<bool> get canAuthenticateWithBiometrics async =>
      await auth.canCheckBiometrics;

  Future<bool> get canAuthenticate async =>
      await canAuthenticateWithBiometrics && await isSupportBiometric();

  Future<List<BiometricType>> get availableBiometrics async =>
      await auth.getAvailableBiometrics();

  @override
  Future<bool> checkCanAuthenticate() async {
    final bool canAuth =
        await canAuthenticate &&
            await canAuthenticateWithBiometrics &&
            (await availableBiometrics).isNotEmpty;
    return Future.value(canAuth);
  }

  @override
  Future<bool> authenticateWithCustomDialogMessages(
      String localizedReason,
      ) async {
    try {
      final bool didAuthenticate = await auth.authenticate(
        localizedReason: localizedReason,
        options: const AuthenticationOptions(
          sensitiveTransaction: false,
          biometricOnly: true,
          stickyAuth: true

        ),
      );

      return Future.value(didAuthenticate);
    } catch (e) {
    }

    return Future.value(false);
  }
}
