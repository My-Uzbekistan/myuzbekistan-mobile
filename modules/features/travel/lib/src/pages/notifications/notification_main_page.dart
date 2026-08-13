import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/notifications/widgets/notification_item.dart';
import 'package:travel/src/pages/notifications/widgets/notifications_loading_content.dart';

import 'bloc/notification_bloc.dart';

class NotificationMainPage extends StatelessWidget {
  const NotificationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NotificationBloc>();

    void openNotificationDetail(NotificationItem item) {
      context.travel.pushNotificationsDetail(item: item);
      bloc.add(NotificationEvent.notificationSeen(notId: item.id));
    }

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.notifications,
        centerTitle: true,
      ),
      body: BlocConsumer<NotificationBloc, NotificationsState>(
        listenWhen: (previous, current) {
          if (current is SuccessState) {
            final currNotif = current.initialNotification;
            if (currNotif == null) return false;

            if (previous is SuccessState) {
              return previous.initialNotification != currNotif;
            }
            return true;
          }

          return false;
        },
        listener: (context, state) {
          state.maybeMap(
            successState: (st) {
              if (st.initialNotification != null) {
                context.travel.pushNotificationsDetail(
                  item: st.initialNotification!,
                );
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const NotificationsLoadingContent();
          }
          final List<NotificationItem> items = state is SuccessState
              ? state.notifications
              : [];

          return ListView.separated(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 16,
              bottom: MediaQuery.of(context).padding.bottom + 16,
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final item = items[index];
              return NotificationItemWidget(
                title: item.title,
                image: item.image,
                date: item.publishDate(),
                isSeen: item.isSeen,
                onTap: () {
                  openNotificationDetail(item);
                },
              );
            },
            itemCount: items.length,
          );
        },
      ),
    );
  }
}
