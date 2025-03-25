import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

enum AvatarType { circle, rectangle }

enum AvatarSizeType { small, medium, large }

class AppAvatar extends StatelessWidget {
  final AvatarSizeType sizeType;
  final AvatarType type;
  final bool showBorder;
  final String? imageUrl;

  const AppAvatar(
      {super.key,
      this.sizeType = AvatarSizeType.small,
      this.type = AvatarType.circle,
      this.imageUrl,
      this.showBorder = false});

  @override
  Widget build(BuildContext context) {
    final size = switch (sizeType) {
      AvatarSizeType.small => 40.0,
      AvatarSizeType.medium => 56.0,
      _ => 80.0,
    };

    final radius = type == AvatarType.circle
        ? size
        : switch (sizeType) {
            AvatarSizeType.small => 12.0,
            AvatarSizeType.medium => 16.0,
            _ => 16.0,
          };

    return Container(
      decoration: showBorder
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: Colors.white, width: 2),
            )
          : null,
      child: SizedBox(
        width: size,
        height: size,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            color: Color(0xffD9D9D9),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrl ?? "",
              errorWidget: (c, w, o) {
                return Assets.pngAvatar.toImage(fit: BoxFit.cover);
              },
            ),
          ),
        ),
      ),
    );
  }
}
