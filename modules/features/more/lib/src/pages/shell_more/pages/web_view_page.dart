import 'dart:async';
import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class WebViewPage extends StatefulWidget {
  final String? title;
  final String? actionUrl;

  const WebViewPage({super.key, this.title, this.actionUrl});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> goBack() async {
    final canGoBack = await inAppWebViewController?.canGoBack();

    if (canGoBack ?? false) {
      inAppWebViewController?.goBack();
    } else {
      if (context.canPop()) {
        context.pop();
      }
    }
  }

  InAppWebViewController? inAppWebViewController;
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (b, d) {
        goBack();
      },
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
              thickness: 1,
              color: context.appColors.stroke.nonOpaque,
            ),
          ),
        ),

        body: SafeArea(
          bottom: Platform.isAndroid,
          top: true,
          child: Stack(
            children: [
              Positioned.fill(
                child: InAppWebView(
                  initialSettings: InAppWebViewSettings(
                    javaScriptEnabled: true,
                    javaScriptCanOpenWindowsAutomatically: true,
                    useOnDownloadStart: true,
                    mediaPlaybackRequiresUserGesture: false,
                    allowsInlineMediaPlayback: true,
                    supportZoom: false,
                  ),

                  onWebViewCreated: (controller) {
                    inAppWebViewController =
                        controller..addJavaScriptHandler(
                          handlerName: "MyUzbekistanHandler",
                          callback: (data) async {
                            try {
                              final Map<String, dynamic> json =
                                  Map<String, dynamic>.from(data[0]);
                              final int serviceId = json["serviceId"];
                              final int amount = json["amount"];
                              final completer = Completer<bool>();
                              context.finance.pushMerchantPage(
                                id: serviceId.toString(),
                                amount: amount.toString(),
                                extra: completer,
                              );
                              final result = await completer.future;
                              if (result) {
                                return {"close": true};
                              }
                            } catch (_) {}
                          },
                        );
                  },
                  onPermissionRequest: onPermissionRequest,

                  initialUrlRequest: URLRequest(
                    url: WebUri.uri(Uri.parse(widget.actionUrl ?? "")),
                  ),
                  onProgressChanged: (controller, progress) {
                    setState(() => _progress = progress / 100.0);
                  },
                  onLoadStop: (controller, url) {
                    setState(() => _progress = 1.0);
                  },
                ),
              ),
              if (_progress < 0.1)
                Positioned.fill(
                  child: Container(color: context.appColors.background.base),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<PermissionResponse> onPermissionRequest(
    InAppWebViewController controller,
    PermissionRequest request,
  ) async {
    // Kamera permission
    if (request.resources.contains(PermissionResourceType.CAMERA)) {
      var camStatus = await Permission.camera.request();
      if (camStatus.isGranted) {
        return PermissionResponse(
          resources: request.resources,
          action: PermissionResponseAction.GRANT,
        );
      }
    }

    // Galereya permission (storage/photo library)
    if (request.resources.contains(PermissionResourceType.PROTECTED_MEDIA_ID)) {
      var storageStatus = await Permission.photos.request(); // iOS uchun
      var filesStatus = await Permission.storage.request(); // Android uchun
      if (storageStatus.isGranted || filesStatus.isGranted) {
        return PermissionResponse(
          resources: request.resources,
          action: PermissionResponseAction.GRANT,
        );
      }
    }

    // Default deny
    return PermissionResponse(
      resources: request.resources,
      action: PermissionResponseAction.DENY,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
