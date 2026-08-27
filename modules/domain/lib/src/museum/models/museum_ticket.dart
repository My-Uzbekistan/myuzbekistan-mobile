class MuseumTicket {
  final String ticketNumber;
  final String tariffTitle;
  final int unitPrice;
  final String? qr;
  final int? validHours;
  final DateTime? validUntil;

  MuseumTicket({
    required this.ticketNumber,
    required this.tariffTitle,
    required this.unitPrice,
    this.qr,
    this.validHours,
    this.validUntil,
  });
}
