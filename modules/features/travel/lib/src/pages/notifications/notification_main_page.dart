import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/notifications/widgets/notification_item.dart';

import 'bloc/notification_bloc.dart';

class NotificationMainPage extends StatefulWidget {
  const NotificationMainPage({super.key});

  @override
  State<NotificationMainPage> createState() => _NotificationMainPageState();
}

class _NotificationMainPageState extends State<NotificationMainPage> {
  NotificationBloc? _bloc;

  @override
  void initState() {
    // TODO: implement initState
    _bloc = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: false,
      appBar: GradientAppBar(title: context.localization.notifications),
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

          return false; // faqat SuccessState dan boshqa holatlarda listener ishlamasin
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
            return _LoadingContent();
          }
          final List<NotificationItem> items =
              state is SuccessState ? state.notifications : [];

          return SizedBox(
            height: double.maxFinite,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ).copyWith(top: MediaQuery.of(context).padding.top + 24),
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                final item = items[index];
                return NotificationItemWidget(
                  title: item.title,
                  image: item.image,
                  date: item.publishDate(),
                  onTap: () {
                    openNotificationDetail(item);

                    // _bloc?.add(NotificationEvent.notificationSeen(notId: 123));
                  },
                );
              },
              itemCount: items.length,
            ),
          );
        },
      ),
    );
  }

  void openNotificationDetail(NotificationItem item) {
    context.travel.pushNotificationsDetail(item: item);
  }
}

class _LoadingContent extends StatelessWidget {
  const _LoadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ).copyWith(top: MediaQuery.of(context).padding.top + 24),
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 343 / 288,
            child: ShimmerDefaultContainer(height: double.infinity),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
