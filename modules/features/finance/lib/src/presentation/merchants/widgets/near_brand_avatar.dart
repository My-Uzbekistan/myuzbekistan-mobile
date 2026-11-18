import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NearBrandAvatar extends StatelessWidget {
  final String? imageUrl;

  const NearBrandAvatar({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 40,
        height: 40,
        color: context.appColors.static.white,
        child: AppNetworkImage(
          imageUrl.orEmpty(),
          cacheMaxAge: const Duration(days: 6),
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
      ),
    );
  }
}
