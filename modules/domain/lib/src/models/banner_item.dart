import 'app_action_type.dart';

class BannerItem {
  final int id;
  final String imageUrl;
  final String? url;
  final AppActionType actionType;
  final bool authRequired;

  const BannerItem({
    required this.id,
    required this.imageUrl,
    this.url,
    this.actionType = AppActionType.inner,
    this.authRequired = false,
  });
}
