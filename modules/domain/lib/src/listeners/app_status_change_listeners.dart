import 'package:shared/shared.dart';

class GlobalHandler {
  static final GlobalHandler _instance = GlobalHandler._internal();

  factory GlobalHandler() => _instance;

  GlobalHandler._internal();

  Function? refreshListener;
  Function? unauthorizedListener;

  void setRefreshListener(Function listener) {
    refreshListener = refreshListener ?? listener;
  }

  void setUnauthorizedListener(Function listener) {
    unauthorizedListener = unauthorizedListener ?? listener;
  }
}

abstract interface class AppStatusChangeListeners {
  late Stream<void> refreshListener;
  late Stream<bool> prayersToggleListenChangeListener;
  late Stream<bool> refreshFavoriteListener;
  late Stream<void> refreshProfileListener;

  void refresh();

  void refreshProfile();

  void refreshFavorite({bool require = false});

  void prayersChange(bool isChange);

  void dispose();
}

@LazySingleton(as: AppStatusChangeListeners)
class AppSettingsChangeListenerIml extends AppStatusChangeListeners {
  final PublishSubject<void> _appRefreshStream = PublishSubject();
  final PublishSubject<void> _refreshProfileStream = PublishSubject();
  final PublishSubject<bool> _refreshFavoriteStream = PublishSubject();

  final BehaviorSubject<bool> _prayersToggleStream = BehaviorSubject();

  @override
  Stream<void> get refreshListener => _appRefreshStream.stream;

  @override
  Stream<bool> get refreshFavoriteListener => _refreshFavoriteStream.stream;

  @override
  Stream<void> get refreshProfileListener => _refreshProfileStream.stream;

  @override
  Stream<bool> get prayersToggleListenChangeListener =>
      _prayersToggleStream.stream;

  @override
  void refreshFavorite({bool require = false}) {
    _refreshFavoriteStream.add(require);
  }

  @override
  void refresh() {
    _appRefreshStream.add(null);
  }

  @override
  void prayersChange(bool isChange) {
    _prayersToggleStream.add(isChange);
  }

  @override
  void dispose() {
    _appRefreshStream.close();
    _refreshFavoriteStream.close();
    _prayersToggleStream.close();
  }

  @override
  void refreshProfile() {
    _refreshProfileStream.add(null);
  }
}
