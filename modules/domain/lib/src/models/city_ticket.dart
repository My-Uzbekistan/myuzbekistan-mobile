class CityTicket {
  final int transportId;
  final String? icon;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? priceUnit;

  const CityTicket({
    required this.transportId,
    this.icon,
    this.title,
    this.subtitle,
    this.price,
    this.priceUnit,
  });
}
