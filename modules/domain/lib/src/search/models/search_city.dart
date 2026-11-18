class SearchCity {
  final int id;
  final String name;
  final String? subtitle;
  final String? photo;
  final String? deeplink;

  const SearchCity({
    required this.id,
    required this.name,
    this.subtitle,
    this.photo,
    this.deeplink,
  });
}
