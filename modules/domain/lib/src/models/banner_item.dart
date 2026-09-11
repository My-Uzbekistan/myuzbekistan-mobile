import 'banner_action_type.dart';

class BannerItem {
  final int id;
  final String imageUrl;
  final String? url;
  final BannerActionType actionType;
  final bool authRequired;

  const BannerItem({
    required this.id,
    required this.imageUrl,
    this.url,
    this.actionType = BannerActionType.redirect,
    this.authRequired = false,
  });
}
