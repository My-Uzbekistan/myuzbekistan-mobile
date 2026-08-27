import 'museum_order_item.dart';
import 'museum_order_state.dart';
import 'museum_ticket.dart';

class MuseumOrder {
  final int id;
  final String number;
  final MuseumOrderState state;
  final String museumId;
  final String museumTitle;
  final int totalAmount;
  final String currency;
  final DateTime? createdAt;
  final String? paymentId;
  final String? checkUrl;
  final String? cardMask;
  final String? cardPs;
  final String? qr;
  final List<MuseumOrderItem> items;
  final List<MuseumTicket> tickets;

  MuseumOrder({
    required this.id,
    required this.number,
    required this.state,
    required this.museumId,
    required this.museumTitle,
    required this.totalAmount,
    required this.currency,
    required this.items,
    required this.tickets,
    this.createdAt,
    this.paymentId,
    this.checkUrl,
    this.cardMask,
    this.cardPs,
    this.qr,
  });

  bool get isWaitingIssue =>
      state == MuseumOrderState.pending && tickets.isEmpty;

  int get validHours => tickets
      .map((ticket) => ticket.validHours ?? 0)
      .fold(0, (previous, hours) => hours > previous ? hours : previous);
}
