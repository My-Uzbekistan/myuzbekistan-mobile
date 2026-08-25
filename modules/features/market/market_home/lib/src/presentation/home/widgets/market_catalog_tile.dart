import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class MarketCatalogTile extends StatelessWidget {
  const MarketCatalogTile({super.key, required this.category, this.onTap});

  final MarketCategory category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final photo = category.photo;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 77,
          color: context.appColors.fill.quaternary,
          child: Stack(
            children: [
              if (photo != null && photo.isNotEmpty)
                Positioned(
                  right: -16,
                  bottom: -2,
                  width: 120,
                  height: 84,
                  child: ExtendedImage.network(
                    photo,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomRight,
                    cache: true,
                    loadStateChanged: (state) {
                      switch (state.extendedImageLoadState) {
                        case LoadState.completed:
                          return null;
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
                ),
              Positioned(
                left: 12,
                top: 12,
                right: 44,
                child: Text(
                  category.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: context.appColors.textIconColor.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
