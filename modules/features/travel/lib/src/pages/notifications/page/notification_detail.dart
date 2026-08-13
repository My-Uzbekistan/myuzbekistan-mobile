import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/notifications/widgets/notification_detail_image_header.dart';

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
            NotificationDetailImageHeader(image: item.image)
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
                  onPressed: () => openActionLink(context, actionLink),
                ),
              ),
            ),
    );
  }

  void openActionLink(BuildContext context, String actionLink) {
    final uri = Uri.parse(actionLink);
    if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty ||
        uri.host.isEmpty) {
      context.push(uri.toString());
    } else {
      LauncherUtils.urlLauncher(actionLink);
    }
  }
}
