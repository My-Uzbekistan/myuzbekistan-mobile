import '../../domain.dart';

class CityTickets {
  final String title;
  final List<CityTicket> items;

  const CityTickets({required this.title, this.items = const []});
}
