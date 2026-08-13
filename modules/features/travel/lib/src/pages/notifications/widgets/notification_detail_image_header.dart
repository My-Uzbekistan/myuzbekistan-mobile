import 'package:flutter/material.dart';
import 'package:travel/src/pages/notifications/widgets/notification_image.dart';

class NotificationDetailImageHeader extends StatelessWidget {
  static const double _imageAspectRatio = 375 / 360;

  final String? image;

  const NotificationDetailImageHeader({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      automaticallyImplyLeading: false,
      expandedHeight: MediaQuery.of(context).size.width / _imageAspectRatio,
      stretch: true,
      stretchTriggerOffset: 0.9,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        stretchModes: const [StretchMode.zoomBackground],
        background: NotificationImage(url: image),
      ),
    );
  }
}
