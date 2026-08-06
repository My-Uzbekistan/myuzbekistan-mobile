/// Bosh sahifa banner karuseli elementi — `GET /api/banners`.
class BannerItem {
  final int id;

  /// Banner rasmi (`photo`) — bo'sh joyli URL'lar `%20` ga encode qilingan.
  final String imageUrl;

  /// Bosilganda ochiladigan havola (`url`).
  final String? url;

  const BannerItem({
    required this.id,
    required this.imageUrl,
    this.url,
  });
}
