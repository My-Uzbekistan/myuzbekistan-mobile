part of 'notification_bloc.dart';


@freezed
abstract class NotificationsState with _$NotificationsState{

  factory NotificationsState.loadingState() = LoadingState;
  factory NotificationsState.errorState() = ErrorState;
  factory NotificationsState.successState({
    required List<NotificationItem> notifications,
    NotificationItem? initialNotification,
  }) = SuccessState;


}