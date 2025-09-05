import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/qr_page/widgets/qr_scanner_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    // Controller dispose qilish
    useEffect(() {
      return controller.dispose;
    }, [controller]);

    final scanWindow = Rect.fromCenter(
      center: MediaQuery.sizeOf(context).center(Offset.zero),
      width: 250,
      height: 250,
    );
    final isHandling = useState(false);

    return Scaffold(
      body: Stack(
        children: [
          // if (image != null)
          //   Image.memory(image!)
          // else
          MobileScanner(
            controller: controller,
            scanWindow: scanWindow,
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

  bool handleQr(BuildContext context, {required String path}) {
    try {
      final uri = Uri.parse(path);
      if ((uri.host == "myuz.uz" || uri.host == "myuzb.uz") &&
          uri.pathSegments.isNotEmpty) {
        HapticFeedback.selectionClick();
        context.pushReplacement(uri.path);
        return true;
      }
    } catch (e) {}

    return true;
  }
}
