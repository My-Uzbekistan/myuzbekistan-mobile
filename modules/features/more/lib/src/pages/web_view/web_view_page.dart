import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class WebViewPage extends HookWidget {
  final String? actionUrl;
  final bool authRequired;

  const WebViewPage({
    super.key,
    this.actionUrl,
    this.authRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useRef<InAppWebViewController?>(null);
    final progress = useState(0.0);

    Future<void> goBack() async {
      if ((await controller.value?.canGoBack()) ?? false) {
        await controller.value?.goBack();
        return;
      }
      if (context.mounted && context.canPop()) context.pop();
    }

    void confirmClose() {
      showActionAlertDialog(
        context,
        title: context.localization.webViewExitTitle,
        message: context.localization.webViewExitMessage,
        firstActionText: context.localization.yes,
        firstButtonTextColor: context.appColors.colors.red,
        secondActionText: context.localization.cancel,
        onFirstButtonClick: () {
          if (context.canPop()) context.pop();
        },
      );
    }

    useEffect(() {
      return () {
        InAppWebViewController.clearAllCache();
        controller.value?.dispose();
      };
    }, const []);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.systemUiOverlyStyle.copyWith(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) => goBack(),
        child: Scaffold(
          backgroundColor: context.appColors.static.black,
          body: Column(
            children: [
              SafeArea(
                bottom: false,
                child: _navbar(
                  context,
                  onBack: goBack,
                  onReload: () => controller.value?.reload(),
                  onClose: confirmClose,
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: ColoredBox(
                    color: context.appColors.background.underlayer,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: InAppWebView(
                            initialUrlRequest: URLRequest(
                              url: WebUri.uri(Uri.parse(actionUrl.orEmpty())),
                            ),
                            initialSettings: _settings,
                            onWebViewCreated: (created) {
                              controller.value = created;
                              created.addJavaScriptHandler(
                                handlerName: "MyUzbekistanHandler",
                                callback: (data) =>
                                    _openMerchant(context, data),
                              );
                            },
                            onProgressChanged: (webViewController, value) {
                              progress.value = value / 100.0;
                            },
                            onLoadStop: (webViewController, url) {
                              progress.value = 1.0;
                            },
                            onPermissionRequest: _onPermissionRequest,
                            onGeolocationPermissionsShowPrompt:
                                _onGeolocationPermissionsShowPrompt,
                            onDownloadStartRequest: (
                              webViewController,
                              request,
                            ) {
                              LauncherUtils.urlLauncher(
                                request.url.toString(),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            onCreateWindow: (webViewController, action) async {
                              final url = action.request.url;
                              if (url != null) {
                                await webViewController.loadUrl(
                                  urlRequest: URLRequest(url: url),
                                );
                              }
                              return false;
                            },
                            shouldOverrideUrlLoading: (
                              webViewController,
                              action,
                            ) async {
                              final url = action.request.url;
                              if (url == null) {
                                return NavigationActionPolicy.CANCEL;
                              }
                              if (url.scheme == "http" ||
                                  url.scheme == "https" ||
                                  url.scheme == "about" ||
                                  url.scheme == "data" ||
                                  url.scheme == "blob") {
                                return NavigationActionPolicy.ALLOW;
                              }
                              await LauncherUtils.urlLauncher(
                                url.toString(),
                                mode: LaunchMode.externalApplication,
                              );
                              return NavigationActionPolicy.CANCEL;
                            },
                          ),
                        ),
                        if (progress.value < 0.1)
                          Positioned.fill(
                            child: ColoredBox(
                              color: context.appColors.background.underlayer,
                              child: const Center(child: LoadingIndicator()),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navbar(
    BuildContext context, {
    required VoidCallback onBack,
    required VoidCallback onReload,
    required VoidCallback onClose,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: SizedBox(
        height: 48,
        child: Row(
          spacing: 12,
          children: [
            _NavbarButton(
              icon: Assets.svg.prayers.chevronLeft.path,
              onTap: onBack,
            ),
            const Spacer(),
            _NavbarButton(
              icon: Assets.svg.arrowRefresh.path,
              onTap: onReload,
            ),
            _NavbarButton(
              icon: Assets.svg.iconClose.path,
              onTap: onClose,
            ),
          ],
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> _openMerchant(
    BuildContext context,
    List<dynamic> data,
  ) async {
    try {
      final json = Map<String, dynamic>.from(data[0]);
      final completer = Completer<bool>();

      context.finance.pushMerchantPage(
        id: json["serviceId"].toString(),
        amount: json["amount"].toString(),
        orderId: json["orderId"]?.toString(),
        extra: completer,
      );
      return {"close": await completer.future};
    } catch (e) {
      return {"close": false, "error": e.toString()};
    }
  }

  Future<PermissionResponse> _onPermissionRequest(
    InAppWebViewController controller,
    PermissionRequest request,
  ) async {
    for (final resource in request.resources) {
      for (final permission in _nativePermissions(resource)) {
        if (await permission.isGranted) continue;
        await permission.request();
      }
    }
    return PermissionResponse(
      resources: request.resources,
      action: PermissionResponseAction.GRANT,
    );
  }

  Future<GeolocationPermissionShowPromptResponse>
  _onGeolocationPermissionsShowPrompt(
    InAppWebViewController controller,
    String origin,
  ) async {
    if (!await Permission.locationWhenInUse.isGranted) {
      await Permission.locationWhenInUse.request();
    }
    return GeolocationPermissionShowPromptResponse(
      origin: origin,
      allow: true,
      retain: true,
    );
  }

  List<Permission> _nativePermissions(PermissionResourceType resource) {
    if (resource == PermissionResourceType.CAMERA) {
      return [Permission.camera];
    }
    if (resource == PermissionResourceType.MICROPHONE) {
      return [Permission.microphone];
    }
    if (resource == PermissionResourceType.CAMERA_AND_MICROPHONE) {
      return [Permission.camera, Permission.microphone];
    }
    if (resource == PermissionResourceType.GEOLOCATION) {
      return [Permission.locationWhenInUse];
    }
    if (resource == PermissionResourceType.PROTECTED_MEDIA_ID ||
        resource == PermissionResourceType.FILE_READ_WRITE) {
      return [Permission.photos, Permission.storage];
    }
    if (resource == PermissionResourceType.NOTIFICATIONS) {
      return [Permission.notification];
    }
    if (resource == PermissionResourceType.DEVICE_ORIENTATION_AND_MOTION ||
        resource == PermissionResourceType.OTHER_SENSORS) {
      return [Permission.sensors];
    }
    return const [];
  }

  static final _settings = InAppWebViewSettings(
    javaScriptEnabled: true,
    javaScriptCanOpenWindowsAutomatically: true,
    supportMultipleWindows: true,
    useShouldOverrideUrlLoading: true,
    useOnDownloadStart: true,
    supportZoom: false,
    transparentBackground: true,
    mediaPlaybackRequiresUserGesture: false,
    allowsInlineMediaPlayback: true,
    allowsPictureInPictureMediaPlayback: true,
    iframeAllow:
        "camera; microphone; geolocation; clipboard-read; clipboard-write; fullscreen; autoplay; payment",
    iframeAllowFullscreen: true,
    geolocationEnabled: true,
    domStorageEnabled: true,
    databaseEnabled: true,
    allowFileAccess: true,
    allowContentAccess: true,
    allowFileAccessFromFileURLs: true,
    allowUniversalAccessFromFileURLs: true,
    thirdPartyCookiesEnabled: true,
    sharedCookiesEnabled: true,
    useHybridComposition: true,
  );
}

class _NavbarButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const _NavbarButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BounceTap(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: context.appColors.static.white.withValues(alpha: 0.16),
          borderRadius: BorderRadius.circular(40),
        ),
        alignment: Alignment.center,
        child: icon.toSvgImage(
          width: 20,
          height: 20,
          fit: BoxFit.contain,
          tintColor: context.appColors.service.onMedia,
        ),
      ),
    );
  }
}
