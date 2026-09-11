part of 'navigation_paths.dart';

class _RootNavPath {
  const _RootNavPath();

  AppNavPath get splash => _NavPathImpl(name: 'splash', path: '/splash');

  AppNavPath get invisiblePage =>
      _NavPathImpl(name: 'invisiblePage', path: '/invisiblePage');

  List<AppNavPath> get values => [splash, invisiblePage];
}
