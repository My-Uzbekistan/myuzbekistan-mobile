import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';

/// Kichik xizmat plitkasi: rangli yumaloq ikonka + ostida sarlavha.
class SmallServiceTile extends StatelessWidget {
  final ServiceItem item;
  final double iconSize;

  const SmallServiceTile({super.key, required this.item, this.iconSize = 64});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: item.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: iconSize,
            height: iconSize,
            decoration: BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            child: item.iconUrl != null
                ? ExtendedImage.network(
                    item.iconUrl!,
                    fit: BoxFit.cover,
                    width: iconSize,
                    height: iconSize,
                    loadStateChanged: (state) =>
                        state.extendedImageLoadState == LoadState.completed
                            ? null
                            : const SizedBox(),
                  )
                : item.iconPath?.toSvgImage(
                    width: iconSize * 0.5,
                    height: iconSize * 0.5,
                    fit: BoxFit.contain,
                    tintColor: Colors.white,
                  ),
          ),
          const SizedBox(height: 8),
          Text(
            item.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ).bodyXXsm(color: context.appColors.textIconColor.primary),
        ],
      ),
    );
  }
}

/// Katta (featured) xizmat plitkasi: chapda sarlavha, o'ngda katta ikonka.
class FeatureServiceTile extends StatelessWidget {
  final ServiceItem item;

  const FeatureServiceTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: item.onTap,
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                item.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).h3(color: context.appColors.textIconColor.primary),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 48,
              height: 48,
              child: item.iconUrl != null
                  ? ExtendedImage.network(
                      item.iconUrl!,
                      fit: BoxFit.cover,
                      loadStateChanged: (state) =>
                          state.extendedImageLoadState == LoadState.completed
                              ? null
                              : const SizedBox(),
                    )
                  : item.iconPath?.toSvgImage(
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                      tintColor: context.appColors.brandSeaBlue,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Bitta qator: chapda katta plitka (flex 2), o'ngda 2 ta kichik plitka.
class ServiceFeatureRow extends StatelessWidget {
  final ServiceItem feature;
  final ServiceItem? small1;
  final ServiceItem? small2;
  final double spacing;

  const ServiceFeatureRow({
    super.key,
    required this.feature,
    this.small1,
    this.small2,
    this.spacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 2, child: FeatureServiceTile(item: feature)),
          SizedBox(width: spacing),
          Expanded(
            child: small1 == null
                ? const SizedBox()
                : Center(child: SmallServiceTile(item: small1!)),
          ),
          SizedBox(width: spacing),
          Expanded(
            child: small2 == null
                ? const SizedBox()
                : Center(child: SmallServiceTile(item: small2!)),
          ),
        ],
      ),
    );
  }
}

/// Kichik plitkalarni 4 ustunli grid ko'rinishida chizadi.
class ServiceSmallGrid extends StatelessWidget {
  final List<ServiceItem> items;
  final double crossSpacing;
  final double mainSpacing;

  const ServiceSmallGrid({
    super.key,
    required this.items,
    this.crossSpacing = 12,
    this.mainSpacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    const columns = 4;
    final rows = <Widget>[];
    for (var i = 0; i < items.length; i += columns) {
      final rowItems = items.skip(i).take(columns).toList();
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var c = 0; c < columns; c++) ...[
              if (c > 0) SizedBox(width: crossSpacing),
              Expanded(
                child: c < rowItems.length
                    ? Center(child: SmallServiceTile(item: rowItems[c]))
                    : const SizedBox(),
              ),
            ],
          ],
        ),
      );
      if (i + columns < items.length) rows.add(SizedBox(height: mainSpacing));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    );
  }
}
