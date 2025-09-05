part of 'notification_bloc.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  factory NotificationEvent.loadNotifications({int? initialNotId}) =
      _LoadNotifications;

  factory NotificationEvent.notificationSeen({
    required int notId,
  }) = _NotificationSeenEvent;
}
