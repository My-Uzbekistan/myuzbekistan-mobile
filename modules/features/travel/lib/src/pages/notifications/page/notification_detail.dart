import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NotificationDetail extends StatefulWidget {
  final NotificationItem item;

  const NotificationDetail({super.key, required this.item});

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16).copyWith(
          top: kToolbarHeight + MediaQuery.of(context).padding.top + 24,
        ),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 334 / 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                clipBehavior: Clip.antiAlias,
                child: ExtendedImage.network(
                  widget.item.image.orEmpty(),
                  fit: BoxFit.cover,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return null;
                      default:
                        return Container(
                          color: context.appColors.fill.tertiary,
                        );
                    }
                  },
                ),
              ),
            ),
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.item.title.orEmpty()).h3(),
                Text(
                  widget.item.publishDate(),
                ).bodySm(color: context.appColors.textIconColor.secondary),
              ],
            ),
            Text(widget.item.content.orEmpty()).bodyLg(),
          ],
        ),
      ),
      bottomNavigationBar:
          widget.item.actionLink.orEmpty().isNotEmpty
              ? SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ).copyWith(bottom: 16),
                  child: AppActionButton(
                    actionText: context.coreLocalization.action_more,
                    onPressed: () {
                      openActionLink(widget.item.actionLink.orEmpty());
                    },
                  ),
                ),
              )
              : SizedBox.shrink(),
    );
  }

  void openActionLink(String actionLink) {
    final uri = Uri.parse(actionLink);
    if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty) {
      context.push(uri.toString());
    } else {
      LauncherUtils.urlLauncher(actionLink);
    }
  }
}
