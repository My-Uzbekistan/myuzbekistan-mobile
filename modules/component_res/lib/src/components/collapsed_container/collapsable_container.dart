import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CollapsableContainer extends HookWidget {
  final String? backgroundImageUrl;
  final Widget? background;
  final Widget? content;
  final Widget? expandedAppBarContent;
  final List<Widget> Function(bool isCollapsed)? actions;
  final Color? overlayColor;

  final String title;

  CollapsableContainer({
    super.key,
    required this.title,
    this.content,
    this.expandedAppBarContent,
    this.backgroundImageUrl,
    this.background,
    this.actions,
    this.overlayColor,
  }) : assert(backgroundImageUrl != null || background != null);

  double collapsedBarHeight = 0.0;
  double expandedBarHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final iconTheme = Theme.of(context).iconTheme;
    useEffect(() {
      collapsedBarHeight = kToolbarHeight;
      expandedBarHeight = 280.0 - collapsedBarHeight;
      return null;
    });
    final scrollController = useScrollController();
    final isCollapsed = useState(false);
    final didAddFeedback = useState(false);
    return NotificationListener(
        onNotification: (notification) {
          isCollapsed.value = scrollController.hasClients &&
              scrollController.offset >
                  (expandedBarHeight -
                      (collapsedBarHeight + statusBarHeight / 2));
          if (isCollapsed.value && !didAddFeedback.value) {
            HapticFeedback.mediumImpact();
            didAddFeedback.value = true;
          } else if (!isCollapsed.value) {
            didAddFeedback.value = false;
          }

          return false;
        },
        child: Scaffold(
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                stretch: true,
                centerTitle: false,
                systemOverlayStyle:
                    Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).appBarTheme.systemOverlayStyle
                        : SystemUiOverlayStyle(
                            statusBarIconBrightness: isCollapsed.value
                                ? Brightness.dark
                                : Brightness.light),
                expandedHeight: expandedBarHeight,
                scrolledUnderElevation: Platform.isIOS ? 0 : 4,
                elevation: Platform.isIOS ? 0 : 4,
                iconTheme: isCollapsed.value
                    ? iconTheme
                    : iconTheme.copyWith(color: Colors.white),
                actionsIconTheme: isCollapsed.value
                    ? iconTheme
                    : iconTheme.copyWith(color: Colors.white),
                title: RepaintBoundary(
                  key: ValueKey("collapsTitle"),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: isCollapsed.value ? 1 : 0,
                    child: Text(
                      title,
                      maxLines: 2,
                      style: Theme.of(context).appBarTheme.titleTextStyle,
                    ),
                  ),
                ),
                actions: actions?.call(isCollapsed.value),
                flexibleSpace: RepaintBoundary(
                  key: ValueKey("flexibleSpace"),
                  child: AnimatedOpacity(
                    opacity: !isCollapsed.value ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final double currentHeight =
                            constraints.biggest.height - (statusBarHeight);
                        double collapseFactor =
                            ((currentHeight - collapsedBarHeight) /
                                    (expandedBarHeight - collapsedBarHeight))
                                .clamp(0.0, 1.0);
                        if (collapseFactor >= 0.9) collapseFactor = 1.0;

                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            FlexibleSpaceBar(
                              background: background ??
                                  CachedNetworkImage(
                                    imageUrl: backgroundImageUrl ?? "",
                                    errorWidget: (context, o, s) {
                                      return Assets.pngDefaultContentImage
                                          .toImage(fit: BoxFit.cover);
                                    },
                                    placeholder: (context, s) {
                                      return Assets.pngDefaultContentImage
                                          .toImage(fit: BoxFit.cover);
                                    },
                                    fit: BoxFit.cover,
                                  ),
                            ),
                            Positioned.fill(
                                child: Container(
                              color: overlayColor ??
                                  Colors.black.withValues(alpha: 0.48),
                            )),
                            if (content != null)
                              Positioned(
                                left: 16.0,
                                bottom: 16.0,
                                right: 16.0,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: collapsedBarHeight),
                                  child: Opacity(
                                    opacity: collapseFactor,
                                    child: expandedAppBarContent,
                                  ),
                                ),
                              ),
                            // Positioned(
                            //     top: 0,
                            //     left: 0,
                            //     right: 0,
                            //     child: Container(
                            //       height: collapsedBarHeight,
                            //       color: Colors.green,
                            //     ))
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: 24),
                  child: content,
                ),
              )
            ],
          ),
        ));
  }
}
