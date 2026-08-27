import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CityTicketsSection extends StatelessWidget {
  final CityTickets tickets;

  const CityTicketsSection({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Text(
              tickets.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).h3(),
          ),
          SizedBox(
            height: 116,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: tickets.items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) =>
                  _TicketCard(ticket: tickets.items[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _TicketCard extends StatelessWidget {
  final CityTicket ticket;

  const _TicketCard({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1Alt,
        border: Border.all(
          color: context.appColors.background.elevation1Alt,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 12,
        children: [
          Container(
            width: 92,
            height: 112,
            alignment: Alignment.center,
            color: context.appColors.background.elevation2,
            child: SizedBox.square(
              dimension: 48,
              child: _TicketIcon(icon: ticket.icon),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 2,
                    children: [
                      Text(
                        ticket.title ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodyMd(),
                      if ((ticket.subtitle ?? "").isNotEmpty)
                        Text(
                          ticket.subtitle!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).bodySm(
                          color: context.appColors.textIconColor.secondary,
                        ),
                    ],
                  ),
                  if ((ticket.price ?? "").isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                        Text(ticket.price!, maxLines: 1).labelMd(),
                        if ((ticket.priceUnit ?? "").isNotEmpty)
                          Text(
                            ticket.priceUnit!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodySm(
                            color: context.appColors.textIconColor.secondary,
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TicketIcon extends StatelessWidget {
  final String? icon;

  const _TicketIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    final url = icon ?? "";
    if (url.isEmpty) return const SizedBox.shrink();
    if (url.endsWith(".svg")) {
      return SvgPicture.network(
        url,
        fit: BoxFit.contain,
        placeholderBuilder: (_) => const SizedBox.shrink(),
      );
    }
    return AppNetworkImage(url, fit: BoxFit.contain);
  }
}
