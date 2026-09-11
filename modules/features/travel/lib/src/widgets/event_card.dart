import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class EventCard extends StatelessWidget {
  final MainPageContent event;
  final VoidCallback? onTap;

  const EventCard({super.key, required this.event, this.onTap});

  @override
  Widget build(BuildContext context) {
    final badge = _eventBadge(context, event.eventDate, event.eventType);
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
              Positioned.fill(
                child: SoftEdgeBlur(
                  edges: [
                    EdgeBlur(
                      type: EdgeType.bottomEdge,
                      size: 88,
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
                  child: AppNetworkImage(
                    event.mainPhoto ?? "",
                    fit: BoxFit.cover,
                    placeholder: ColoredBox(
                      color: context.appColors.fill.quaternary,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: ColoredBox(
                  color: context.appColors.service.scrim
                      .withValues(alpha: 0.16),
                ),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.6, 0.84, 1.0],
                      colors: [
                        context.appColors.service.scrim
                            .withValues(alpha: 0),
                        context.appColors.service.scrim
                            .withValues(alpha: 0.48),
                        context.appColors.service.scrim
                            .withValues(alpha: 0.72),
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
                      event.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(color: context.appColors.service.onMedia),
                    const SizedBox(height: 4),
                    Text(
                      event.region ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(
                      color: context.appColors.service.onMedia
                          .withValues(alpha: 0.56),
                    ),
                  ],
                ),
              ),
              if (badge.isNotEmpty)
                Positioned(
                  left: 11,
                  top: 11,
                  child: _EventBadge(text: badge),
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
            color: context.appColors.service.onMedia,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: context.appColors.service.onMedia),
          ),
          child: Text(
            text,
            maxLines: 1,
          ).labelSm(color: context.appColors.service.scrim),
        ),
      ),
    );
  }
}

String _eventBadge(BuildContext context, DateTime? date, String? type) {
  final parts = <String>[];
  if (date != null) parts.add(_formatEventDate(context, date));
  if ((type ?? "").isNotEmpty) parts.add(type!);
  return parts.join(" • ");
}

String _formatEventDate(BuildContext context, DateTime date) {
  final langCode = Localizations.localeOf(context).languageCode;
  return DateFormat('d MMMM', langCode).format(date);
}
