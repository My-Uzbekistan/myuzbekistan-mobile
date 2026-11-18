import 'package:domain/src/listeners/app_refresh_topic.dart';
import 'package:domain/src/listeners/item_change.dart';
import 'package:domain/src/listeners/refresh_entity.dart';
import 'package:shared/shared.dart';

abstract interface class AppRefreshListener {
  void notifyItem(ItemChange change);

  Stream<ItemChange> observeItems(RefreshEntity entity);

  void notify(AppRefreshTopic topic);

  void notifyAll(Set<AppRefreshTopic> topics);

  Stream<AppRefreshTopic> observe(Set<AppRefreshTopic> topics);

  void dispose();
}

@LazySingleton(as: AppRefreshListener)
class AppRefreshListenerImpl implements AppRefreshListener {
  final PublishSubject<ItemChange> _items = PublishSubject();
  final PublishSubject<AppRefreshTopic> _topics = PublishSubject();

  @override
  void notifyItem(ItemChange change) {
    _items.add(change);
  }

  @override
  Stream<ItemChange> observeItems(RefreshEntity entity) {
    return _items.stream.where((change) => change.entity == entity);
  }

  @override
  void notify(AppRefreshTopic topic) {
    _topics.add(topic);
  }

  @override
  void notifyAll(Set<AppRefreshTopic> topics) {
    topics.forEach(notify);
  }

  @override
  Stream<AppRefreshTopic> observe(Set<AppRefreshTopic> topics) {
    return _topics.stream
        .where(topics.contains)
        .debounceTime(const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    _items.close();
    _topics.close();
  }
}
