import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'notification_event.dart';

part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationsState> {
  final Repository _repository;

  NotificationBloc(this._repository)
    : super(NotificationsState.loadingState()) {
    on<_LoadNotifications>(_loadNotifications);
    on<_NotificationSeenEvent>(_notificationSeen);
  }

  Future<void> _loadNotifications(
    _LoadNotifications event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      emit(NotificationsState.loadingState());
      final result = await _repository.getNotifications();
      final initialNotification = result.firstOrNullWhere(
        (e) => e.id == event.initialNotId,
      );

      emit(
        NotificationsState.successState(
          notifications: result,
          initialNotification: initialNotification,
        ),
      );
      if (initialNotification?.isSeen == false) {
        add(NotificationEvent.notificationSeen(notId: initialNotification!.id));
      }
    } catch (e) {
      // emit(
      //   NotificationsState.successState(
      //     notifications: [],
      //     initialNotification: null,
      //   ),
      // );
      debugPrint("NotificationExaption ${e}");
    }
  }

  Future<void> _notificationSeen(
    _NotificationSeenEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      emit(
        state.maybeMap(
          successState: (st) {
            final updatedList =
                st.notifications.map((n) {
                  if (n.id == event.notId) {
                    return n.copyWith(isSeen: true); // endi toza o‘zgartirish
                  }
                  return n;
                }).toList();

            return st.copyWith(
              notifications: updatedList,
              initialNotification: null,
            );
          },
          orElse: () => state,
        ),
      );
      _repository.seenNotification(id: event.notId);
    } catch (e) {}
  }
}
