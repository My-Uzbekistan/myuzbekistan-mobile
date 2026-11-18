enum MuseumSort {
  popular("popular"),
  priceAsc("price_asc"),
  priceDesc("price_desc"),
  ratingDesc("rating_desc"),
  newest("newest");

  final String value;

  const MuseumSort(this.value);
}
