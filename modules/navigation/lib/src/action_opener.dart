part of 'navigation_paths.dart';

extension AppActionOpener on BuildContext {
  void openAction(
    String? url, {
    required AppActionType actionType,
    bool authRequired = false,
  }) {
    final action = url?.trim() ?? "";
    if (action.isEmpty) return;

    switch (actionType) {
      case AppActionType.deeplink:
        AppLinkRouter.open(action);

      case AppActionType.inner:
        more.pushWebViewPage(
          actionUrl: _webTarget(action),
          authRequired: authRequired,
        );

      case AppActionType.redirect:
        LauncherUtils.urlLauncher(action);
    }
  }

  void openLink(String? url) {
    final link = url?.trim() ?? "";
    if (link.isEmpty) return;

    AppLinkRouter.open(link);
  }

  String _webTarget(String action) {
    final location = AppLinkRouter.locationOf(Uri.tryParse(action));
    if (location == null) return action;

    final uri = Uri.parse(location);
    if (uri.path != AppNavPath.more.webViewPage.path) return action;

    final target = uri.queryParameters["actionUrl"]?.trim() ?? "";
    return target.isEmpty ? action : target;
  }
}
