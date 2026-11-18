enum MuseumOrderState {
  active("Active"),
  pending("Pending"),
  used("Used"),
  expired("Expired");

  final String value;

  const MuseumOrderState(this.value);
}
