import '../../domain.dart';

class CityDetail {
  final int id;
  final String name;
  final String? subtitle;
  final String? photo;
  final CityLocation? location;
  final CityTickets? tickets;
  final List<CityBlock> blocks;

  const CityDetail({
    required this.id,
    required this.name,
    this.subtitle,
    this.photo,
    this.location,
    this.tickets,
    this.blocks = const [],
  });
}
