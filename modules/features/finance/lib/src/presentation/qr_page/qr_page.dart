

import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/qr_page/widgets/qr_scanner_overlay.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class QrReaderPage extends StatefulWidget {
  const QrReaderPage({super.key});

  @override
  State<QrReaderPage> createState() => _QrReaderPageState();
}

class _QrReaderPageState extends State<QrReaderPage> {
  final MobileScannerController controller = MobileScannerController(formats: [
    BarcodeFormat.qrCode,
  ], returnImage: true);
  @override
  Widget build(BuildContext context) {

      final scanWindow = Rect.fromCenter(
        center: MediaQuery.sizeOf(context).center(Offset.zero),
        width: 250,
        height: 250,
      );

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

                return Center(
                  child:  ScannerCornerAnimation(),
                );
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

  @override
  Future<void> dispose() async {
    super.dispose();
    await controller.dispose();
  }
}
