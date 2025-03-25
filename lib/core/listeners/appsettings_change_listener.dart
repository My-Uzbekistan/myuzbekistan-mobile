import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract interface class AppStatusChangeListeners {
  late Stream<void> refreshListener;
  late Stream<bool> refreshFavoriteListener;

  void refresh();

  void refreshFavorite({bool require=false});

  void dispose();
}

@LazySingleton(as: AppStatusChangeListeners)
class AppSettingsChangeListenerIml extends AppStatusChangeListeners {
  final PublishSubject<void> _appRefreshStream = PublishSubject();
  final PublishSubject<bool> _refreshFavoriteStream = PublishSubject();

  @override
  Stream<void> get refreshListener => _appRefreshStream;

  @override
  Stream<bool> get refreshFavoriteListener => _refreshFavoriteStream;

  @override
  void refreshFavorite({bool require=false}) {
    // TODO: implement refreshFavorite
    _refreshFavoriteStream.add(require);
  }

  @override
  void refresh() {
    _appRefreshStream.add(null);
  }

  @override
  void dispose() {
    _appRefreshStream.close();
    _refreshFavoriteStream.close();
  }
}
