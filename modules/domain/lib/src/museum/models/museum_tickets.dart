import 'museum_order.dart';

class MuseumTickets {
  final int activeCount;
  final int usedCount;
  final int expiredCount;
  final List<MuseumOrder> items;

  MuseumTickets({
    required this.activeCount,
    required this.usedCount,
    required this.expiredCount,
    required this.items,
  });
}
