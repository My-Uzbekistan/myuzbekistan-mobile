import 'dart:async';
import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class WebViewPage extends StatefulWidget {
  final String? title;
  final String? actionUrl;
  final bool authRequired;

  const WebViewPage({super.key, this.title, this.actionUrl,this.authRequired=false});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  void initState() {
    super.initState();
  }

  final externalHosts = {
    "t.me",
    "telegram.me",
    "instagram.com",
    "www.instagram.com",
    "facebook.com",
    "www.facebook.com",
    "m.facebook.com",
    "linkedin.com",
    "www.linkedin.com",
    "x.com",
    "www.x.com",
    "twitter.com",
    "www.twitter.com",
    "youtube.com",
    "www.youtube.com",
    "youtu.be",
    "wa.me",
    "whatsapp.com",
  };

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
  bool _showCloseButton = false;

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

          actions: [
            if(_showCloseButton)Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap:
                () {
              HapticFeedback.mediumImpact();
              context.pop();

            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                clipBehavior: Clip.none,
                child:  Center(
                    child: Assets.svg.iconClose.path.toSvgImage(
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                               context.appColors.textIconColor.primary,
                              BlendMode.srcIn)),

                  ),
                ),
            )
            ),
          ),
        ]
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
                              final dynamic serviceId = json["serviceId"];
                              final dynamic amount = json["amount"];
                              final dynamic orderId = json["orderId"];
                              final completer = Completer<bool>();

                              context.finance.pushMerchantPage(
                                id: serviceId.toString(),
                                amount: amount.toString(),
                                orderId: orderId?.toString(),
                                extra: completer,
                              );
                              final result = await completer.future;
                              return {"close": result};
                            } catch (e) {
                              return {"close": false, "error": e.toString()};
                            }
                          },
                        );
                  },

                  onUpdateVisitedHistory: (controller, url, isReload) async {
                    final canGoBack = await controller.canGoBack();
                    if (_showCloseButton != canGoBack) {
                      setState(() {
                        _showCloseButton = canGoBack;
                      });
                    }
                  },
                  onPermissionRequest: onPermissionRequest,

                  initialUrlRequest: URLRequest(
                    url: WebUri.uri(Uri.parse(widget.actionUrl ?? "")),
                  ),
                  onProgressChanged: (controller, progress) {
                    setState(() => _progress = progress / 100.0);
                  },
                  shouldOverrideUrlLoading: (
                    controller,
                    navigationAction,
                  ) async {
                    final uri = navigationAction.request.url;

                    if (uri == null) {
                      return NavigationActionPolicy.CANCEL;
                    }

                    // Telefon, SMS, Email
                    if (["tel", "sms", "mailto"].contains(uri.scheme)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                      return NavigationActionPolicy.CANCEL;
                    }

                    // Ijtimoiy tarmoqlar
                    if (shouldOpenExternally(uri)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                      return NavigationActionPolicy.CANCEL;
                    }

                    return NavigationActionPolicy.ALLOW;
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

  bool shouldOpenExternally(Uri uri) {
    return externalHosts.any(
          (host) => uri.host == host || uri.host.endsWith(".$host"),
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
    return PermissionResponse(
      resources: request.resources,
      action: PermissionResponseAction.DENY,
    );
  }

  @override
  void dispose() {
    InAppWebViewController.clearAllCache();
    inAppWebViewController?.dispose();

    super.dispose();
  }
}
