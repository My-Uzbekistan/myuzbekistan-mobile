import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class EventsWidget extends StatelessWidget {
  final List<EventData> events;
  final VoidCallback? onSeeAll;
  final ValueChanged<EventData>? onEventTap;

  const EventsWidget({
    super.key,
    required this.events,
    this.onSeeAll,
    this.onEventTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Мероприятия",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onSeeAll,
                    child: Text("Все")
                        .bodyLg(color: context.appColors.brandSeaBlue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: events.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final event = events[index];
                  return _EventCard(
                    event: event,
                    onTap: onEventTap == null ? null : () => onEventTap!(event),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final EventData event;
  final VoidCallback? onTap;

  const _EventCard({required this.event, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          width: 320,
          height: 280,
          child: Stack(
            children: [
              SoftEdgeBlur(
                edges: [
                  EdgeBlur(
                    type: EdgeType.bottomEdge,
                    size: 160,
                    sigma: 6,
                    tileMode: TileMode.mirror,
                    controlPoints: [
                      ControlPoint(
                        position: 0.8,
                        type: ControlPointType.visible,
                      ),
                      ControlPoint(
                        position: 1,
                        type: ControlPointType.transparent,
                      ),
                    ],
                  ),
                ],
                child: Positioned.fill(
                  child: ExtendedImage.network(
                    event.imageUrl,
                    fit: BoxFit.cover,
                    loadStateChanged: (state) {
                      switch (state.extendedImageLoadState) {
                        case LoadState.completed:
                          return AnimatedOpacity(
                            opacity: 1.0,
                            duration: const Duration(milliseconds: 200),
                            child: state.completedWidget,
                          );
                        default:
                          return Container(
                            color: context.appColors.fill.quaternary,
                          );
                      }
                    },
                  ),
                ),
              ),
              Positioned.fill(
                child: ColoredBox(color: Colors.black.withValues(alpha: 0.16)),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.596, 1.0],
                      colors: [
                        const Color(0xFF14191A).withValues(alpha: 0),
                        const Color(0xFF14191A).withValues(alpha: 0.48),
                        const Color(0xFF14191A).withValues(alpha: 0.72),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                right: 15,
                bottom: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      event.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(color: context.appColors.static.white),
                    const SizedBox(height: 4),
                    Text(
                      event.location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(
                      color: context.appColors.static.white
                          .withValues(alpha: 0.56),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 11,
                top: 11,
                child: _EventBadge(text: event.badgeText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EventBadge extends StatelessWidget {
  final String text;

  const _EventBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          height: 28,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.appColors.static.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: context.appColors.static.white),
          ),
          child: Text(
            text,
            maxLines: 1,
          ).labelSm(color: context.appColors.static.black),
        ),
      ),
    );
  }
}

class EventData {
  final String imageUrl;
  final String title;
  final String location;
  final String badgeText;

  const EventData({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.badgeText,
  });
}
