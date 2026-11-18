import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/city/widget/city_section.dart';

class CityTicketsSection extends StatelessWidget {
  final CityTickets tickets;

  const CityTicketsSection({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return CitySection(
      title: tickets.title,
      contentPadding: EdgeInsets.zero,
      child: SizedBox(
        height: 92,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: tickets.items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder:
              (context, index) => _TicketCard(ticket: tickets.items[index]),
        ),
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
      height: 92,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1Alt,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          spacing: 12,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(18),
              ),
              child: Container(
                width: 90,
                alignment: Alignment.center,
                color: context.appColors.background.elevation2,
                child: SizedBox.square(
                  dimension: 48,
                  child: AppNetworkImage(
                    ticket.icon ?? "",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      ticket.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodyMd(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                        if ((ticket.price ?? "").isNotEmpty)
                          _TicketPrice(price: ticket.price!),
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
      ),
    );
  }
}

class _TicketPrice extends StatelessWidget {
  final String price;

  const _TicketPrice({required this.price});

  @override
  Widget build(BuildContext context) {
    final separator = price.lastIndexOf(" ");
    final amount = separator > 0 ? price.substring(0, separator) : price;
    final currency = separator > 0 ? price.substring(separator + 1) : "";

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      spacing: 2,
      children: [
        Text(amount, maxLines: 1).labelMd(),
        if (currency.isNotEmpty)
          Text(
            currency,
            maxLines: 1,
          ).bodySm(color: context.appColors.textIconColor.tertiary),
      ],
    );
  }
}
