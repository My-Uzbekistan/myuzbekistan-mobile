import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/notifications/widgets/notification_image.dart';

class NotificationDetail extends StatelessWidget {
  final NotificationItem item;

  const NotificationDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final hasImage = item.image.orEmpty().isNotEmpty;
    final actionLink = item.actionLink.orEmpty();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          if (hasImage)
            _imageHeader(context)
          else
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).padding.top + kToolbarHeight,
              ),
            ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
                top: hasImage ? 20 : 16,
                bottom: 16,
              ),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title.orEmpty()).h2(),
                      Text(item.publishDate()).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ],
                  ),
                  Text(item.content.orEmpty()).bodyLg(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: actionLink.isEmpty
          ? null
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(bottom: 16),
                child: AppActionButton(
                  actionText: context.coreLocalization.action_more,
                  onPressed: () => AppLinkRouter.open(actionLink),
                ),
              ),
            ),
    );
  }

  Widget _imageHeader(BuildContext context) {
    return SliverAppBar(
      primary: false,
      automaticallyImplyLeading: false,
      expandedHeight: MediaQuery.sizeOf(context).width / (375 / 360),
      stretch: true,
      stretchTriggerOffset: 0.9,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        stretchModes: const [StretchMode.zoomBackground],
        background: NotificationImage(url: item.image),
      ),
    );
  }
}
