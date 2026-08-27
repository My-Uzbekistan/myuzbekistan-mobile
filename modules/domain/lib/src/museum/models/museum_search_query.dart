class MuseumSearchQuery {
  final String? search;
  final String? cityId;
  final String? cityName;

  MuseumSearchQuery({this.search, this.cityId, this.cityName});

  bool get isEmpty =>
      (search == null || search!.trim().isEmpty) && cityId == null;

  String get title => cityName ?? search ?? "";
}
