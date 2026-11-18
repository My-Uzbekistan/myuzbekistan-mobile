import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/qr_page/widgets/qr_scanner_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class QrReaderPage extends HookWidget {
  const QrReaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(
      () => MobileScannerController(
        formats: [BarcodeFormat.qrCode],
        returnImage: true,
      ),
    );

    useEffect(() {
      return controller.dispose;
    }, [controller]);

    useOnAppLifecycleStateChange((previous, current) {
      final denied =
          controller.value.error?.errorCode ==
          MobileScannerErrorCode.permissionDenied;
      if (current == AppLifecycleState.resumed && denied) {
        controller.start();
      }
    });

    final scanWindow = Rect.fromCenter(
      center: MediaQuery.sizeOf(context).center(Offset.zero),
      width: 250,
      height: 250,
    );
    final isHandling = useState(false);

    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
            controller: controller,
            scanWindow: scanWindow,
            errorBuilder: (context, error) => _errorView(context, error),
            onDetect: (detect) {
              if (!isHandling.value) {
                if (detect.barcodes.firstOrNull?.displayValue != null) {
                  isHandling.value = true;
                  isHandling.value = handleQr(
                    context,
                    path: detect.barcodes.first.displayValue!,
                  );
                }
              }
            },
          ),
          ValueListenableBuilder(
            valueListenable: controller,
            builder: (context, value, child) {
              if (!value.isInitialized ||
                  !value.isRunning ||
                  value.error != null) {
                return const SizedBox();
              }

              return Center(child: ScannerCornerAnimation());
            },
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: context.appColors.static.white),
          ),
        ],
      ),
    );
  }

  Widget _errorView(BuildContext context, MobileScannerException error) {
    final denied = error.errorCode == MobileScannerErrorCode.permissionDenied;
    return ColoredBox(
      color: context.appColors.service.heroSurface,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Icon(
                Icons.no_photography_outlined,
                size: 48,
                color: context.appColors.service.onMedia,
              ),
              Text(
                denied
                    ? context.localization.camera_permission_denied
                    : context.localization.camera_unavailable,
                textAlign: TextAlign.center,
              ).bodyLg(color: context.appColors.service.onMedia),
              if (denied)
                AppActionButton(
                  actionText: context.coreLocalization.action_open_settings,
                  onPressed: openAppSettings,
                ),
            ],
          ),
        ),
      ),
    );
  }

  bool handleQr(BuildContext context, {required String path}) {
    final location = AppLinkRouter.locationOf(Uri.tryParse(path));
    if (location == null) return true;

    HapticFeedback.selectionClick();
    context.pushReplacement(location);
    return true;
  }
}
