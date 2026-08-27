import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared/shared.dart';

class MuseumTicketCard extends HookWidget {
  const MuseumTicketCard({super.key, required this.order});

  final MuseumOrder order;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final qrCodes = [
      if (order.qr != null) order.qr!,
      for (final ticket in order.tickets)
        if (ticket.qr != null) ticket.qr!,
    ];
    final qrIndex = useState(0);

    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: Container(
        decoration: BoxDecoration(
          color: colors.static.black,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: colors.static.white.withValues(alpha: 0.12),
            width: 4,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            _glow(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.museumTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ).h2(color: colors.static.white),
                  const SizedBox(height: 28),
                  ..._infos(context),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 4,
                          children: [
                            Text(
                              context.localization.museum_ticket_amount(
                                order.tickets.length,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ).h1(color: colors.static.white),
                            if (order.validHours > 0)
                              Text(
                                context.localization.museum_ticket_duration(
                                  order.validHours,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ).h2(
                                color: colors.static.white.withValues(
                                  alpha: 0.6,
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (qrCodes.isNotEmpty)
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap:
                              qrCodes.length < 2
                                  ? null
                                  : () =>
                                      qrIndex.value =
                                          (qrIndex.value + 1) % qrCodes.length,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: colors.static.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: QrImageView(
                              data: qrCodes[qrIndex.value % qrCodes.length],
                              size: 84,
                              padding: EdgeInsets.zero,
                              backgroundColor: colors.static.white,
                              eyeStyle: QrEyeStyle(
                                eyeShape: QrEyeShape.square,
                                color: colors.static.black,
                              ),
                              dataModuleStyle: QrDataModuleStyle(
                                dataModuleShape: QrDataModuleShape.square,
                                color: colors.static.black,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _infos(BuildContext context) {
    final colors = context.appColors;
    final rows = <Widget>[
      if (order.createdAt != null)
        _info(
          context,
          label: context.localization.museum_ticket_date,
          value: order.createdAt.toFormatDMMM(),
        ),
      if (order.number.isNotEmpty)
        _info(
          context,
          label: context.localization.museum_ticket_number,
          value: order.number,
        ),
      if (order.isWaitingIssue)
        Text(
          context.localization.museum_ticket_issuing,
        ).labelLg(color: colors.static.white.withValues(alpha: 0.6)),
    ];

    return [
      for (var index = 0; index < rows.length; index++) ...[
        if (index > 0) const SizedBox(height: 28),
        rows[index],
      ],
    ];
  }

  Widget _info(
    BuildContext context, {
    required String label,
    required String value,
  }) {
    final white = context.appColors.static.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(label).labelLg(color: white.withValues(alpha: 0.6)),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).h3(color: white),
      ],
    );
  }

  Widget _glow(BuildContext context) {
    final colors = context.appColors;
    final glowColor = switch (order.state) {
      MuseumOrderState.active => colors.colors.green,
      MuseumOrderState.pending => colors.colors.yellow,
      MuseumOrderState.used => colors.brandSeaBlue,
      MuseumOrderState.expired => colors.static.white,
    };

    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(0.6, 1.15),
              radius: 1.1,
              colors: [
                glowColor.withValues(alpha: 0.85),
                glowColor.withValues(alpha: 0),
              ],
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(1.25, 0.35),
              radius: 0.9,
              colors: [
                glowColor.withValues(alpha: 0.45),
                glowColor.withValues(alpha: 0),
              ],
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.15, 0.5, 1],
              colors: [
                colors.static.white.withValues(alpha: 0),
                colors.static.white.withValues(alpha: 0.04),
                colors.static.white.withValues(alpha: 0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
