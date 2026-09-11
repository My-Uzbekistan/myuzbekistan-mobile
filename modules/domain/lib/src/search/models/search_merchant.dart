class SearchMerchant {
  final int id;
  final String name;
  final String? logo;
  final String? type;
  final String? deeplink;

  const SearchMerchant({
    required this.id,
    required this.name,
    this.logo,
    this.type,
    this.deeplink,
  });
}
