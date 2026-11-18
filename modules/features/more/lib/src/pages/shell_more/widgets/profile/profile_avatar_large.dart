import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProfileAvatarLarge extends StatelessWidget {
  final String? photoUrl;
  final bool isLoading;
  final VoidCallback? onTap;

  const ProfileAvatarLarge({
    super.key,
    this.photoUrl,
    this.isLoading = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final url = photoUrl ?? "";
    final placeholder = Assets.png.avatar.image(fit: BoxFit.cover);
    final avatar = ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: SizedBox(
        width: 120,
        height: 120,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(color: context.appColors.background.underlayer),
            AppNetworkImage(
              url,
              fit: BoxFit.cover,
              cacheMaxAge: const Duration(days: 10),
              placeholder: placeholder,
            ),
            if (isLoading)
              ColoredBox(
                color: context.appColors.service.scrim
                    .withValues(alpha: 0.4),
                child: const Center(child: LoadingIndicator(size: 24)),
              ),
          ],
        ),
      ),
    );

    if (onTap == null) return avatar;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          avatar,
          Positioned(
            right: 4,
            bottom: 4,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColors.brand,
                border: Border.all(
                  color: context.appColors.background.elevation1,
                  width: 1.5,
                ),
              ),
              child: Icon(
                Icons.edit,
                size: 12,
                color: context.appColors.service.onMedia,
              ),
            ),
          ),
        ],
      ),
    );
  }
}