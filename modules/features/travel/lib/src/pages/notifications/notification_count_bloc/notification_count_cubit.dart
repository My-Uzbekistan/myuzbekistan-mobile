import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@LazySingleton()
class NotificationCountCubit extends Cubit<int> {
  final Repository _repository;

  NotificationCountCubit(this._repository) : super(0);

  Future<void> loadNotificationCount() async {
    try {
      final result = await _repository.getNotificationUnreadCount();
      emit(result);
    } catch (e) {}
  }

}
