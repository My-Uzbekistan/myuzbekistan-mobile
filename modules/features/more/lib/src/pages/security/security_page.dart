import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/security/widgets/scanner_login_switch.dart';
import 'package:more/src/pages/security/widgets/security_cell.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class SecurityPage extends HookWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final securityStorage = getIt<SecurityStorage>();
    final hasPin = useState(securityStorage.hasPin());

    Future<void> openPinPage() async {
      if (hasPin.value) {
        await context.more.pushChangePinCodePage();
      } else {
        await context.more.pushCreatePinCodePage();
      }
      if (!context.mounted) return;
      hasPin.value = securityStorage.hasPin();
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColors.background.underlayer,
      appBar: GradientAppBar(title: localization.security, centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
          bottom: MediaQuery.of(context).padding.bottom + 16,
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: context.appColors.background.elevation1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SecurityCell(
                icon: Assets.svg.more.password.svg(),
                title: hasPin.value
                    ? localization.changePinTitle
                    : localization.pin_code,
                onTap: openPinPage,
              ),
              SecurityCell(
                icon: Assets.svg.more.faceId.svg(),
                title: localization.scannerLogin,
                trailing: ScannerLoginSwitch(hasPin: hasPin.value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
