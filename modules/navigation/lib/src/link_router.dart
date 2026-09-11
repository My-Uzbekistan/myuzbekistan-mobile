part of 'navigation_paths.dart';

abstract class AppLinkRouter {
  static String? _pending;
  static String? _opened;
  static DateTime? _openedAt;
  static bool _attached = false;

  static void init() {
    WidgetsBinding.instance.addObserver(_PlatformLinkObserver());
    _pending = locationOf(
      Uri.tryParse(WidgetsBinding.instance.platformDispatcher.defaultRouteName),
    );
    _attach();
  }

  static void open(String? link) {
    final trimmed = link?.trim();
    if (trimmed == null || trimmed.isEmpty) return;

    final location = locationOf(Uri.tryParse(trimmed));
    if (location == null) {
      appRootNavigatorKey.currentContext?.more.openUrl(trimmed);
      return;
    }
    if (_isRepeat(location)) return;

    _pending = location;
    _flush();
  }

  static String? locationOf(Uri? uri) {
    if (uri == null) return null;

    final path = switch (uri.scheme) {
      '' when uri.path.startsWith('/') => uri.path,
      AppLinks.scheme =>
        uri.host.isEmpty ? uri.path : '/${uri.host}${uri.path}',
      'http' || 'https' when AppLinks.isInternalHost(uri.host) => uri.path,
      _ => '',
    };

    if (path.isEmpty || path == '/') return null;

    final trimmed = path.endsWith('/')
        ? path.substring(0, path.length - 1)
        : path;
    return uri.hasQuery ? '$trimmed?${uri.query}' : trimmed;
  }

  static String shareLink(
    AppNavPath navPath, {
    Map<String, String> queryParameters = const {},
  }) {
    return Uri.parse('${AppLinks.base}${navPath.path}')
        .replace(
          queryParameters: queryParameters.isEmpty ? null : queryParameters,
        )
        .toString();
  }

  static void _attach() {
    if (_attached) return;

    final context = appRootNavigatorKey.currentContext;
    if (context == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _attach());
      return;
    }

    _attached = true;
    GoRouter.of(context).routerDelegate.addListener(_flush);
    _flush();
  }

  static void _flush() {
    final location = _pending;
    if (location == null) return;

    final context = appRootNavigatorKey.currentContext;
    if (context == null) return;

    final router = GoRouter.of(context);
    if (!_isReady(router)) return;

    _pending = null;
    WidgetsBinding.instance.addPostFrameCallback((_) => _navigate(location));
  }

  static bool _isRepeat(String location) {
    final openedAt = _openedAt;
    if (_opened != location || openedAt == null) return false;

    return DateTime.now().difference(openedAt) < const Duration(seconds: 3);
  }

  static void _navigate(String location) {
    final context = appRootNavigatorKey.currentContext;
    if (context == null) return;

    _opened = location;
    _openedAt = DateTime.now();

    final match = GoRouter.of(
      context,
    ).configuration.findMatch(Uri.parse(location));
    if (!match.isError && match.matches.first is ShellRouteMatch) {
      context.go(location);
      return;
    }
    context.push(location);
  }

  static bool _isReady(GoRouter router) {
    if (router.routerDelegate.currentConfiguration.isEmpty) return false;
    final name = router.state.name;
    return !AppNavPath.root.values.any((navPath) => navPath.name == name);
  }
}

class _PlatformLinkObserver extends WidgetsBindingObserver {
  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    final uri = routeInformation.uri;
    if (uri.scheme.isEmpty || AppLinkRouter.locationOf(uri) == null) {
      return Future.value(false);
    }

    AppLinkRouter.open(uri.toString());
    return Future.value(true);
  }
}
