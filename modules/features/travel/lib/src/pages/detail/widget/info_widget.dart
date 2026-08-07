import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';

class InfoWidget extends StatelessWidget {
  final DetailInfo info;
  final double? distanceMeters;

  const InfoWidget({
    super.key,
    this.info = const DetailInfo(),
    this.distanceMeters,
  });

  @override
  Widget build(BuildContext context) {
    final items = info.items;
    if (items.isEmpty) return const SizedBox.shrink();

    final slots = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      slots.add(Expanded(child: _slot(context, items[i])));
      if (i != items.length - 1) {
        slots.add(
          VerticalDivider(
            thickness: 1,
            width: 32,
            color: context.appColors.stroke.nonOpaque,
          ),
        );
      }
    }

    return IntrinsicHeight(
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: slots),
    );
  }

  bool _isRating(InfoItem item) =>
      item.type == InfoType.rating || item.slug == InfoSlug.rating;

  Widget _slot(BuildContext context, InfoItem item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: _isRating(item) ? 8 : 4,
      children: [_topLine(context, item), _bottomLine(context, item)],
    );
  }

  Widget _topLine(BuildContext context, InfoItem item) {
    if (item.type == InfoType.dollarRating) {
      return PriceCategory(
        priceCategory: item.value?.toIntOrNull() ?? 0,
        textStyle: CustomTypography.labelLg,
      );
    }
    final formatted = item.type == InfoType.distance
        ? distanceMeters.formatDistance(
            meterLabel: context.localization.distanceM,
            kmLabel: context.localization.distanceKm,
          )
        : null;
    final text = formatted ?? (item.value ?? "");
    return Text(text, maxLines: 1, overflow: TextOverflow.ellipsis).labelLg();
  }

  Widget _bottomLine(BuildContext context, InfoItem item) {
    final state = item.state;
    if (state != null) {
      final isOpen = state == InfoState.open;
      return Text(
        isOpen ? context.localization.open : context.localization.closed,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ).bodySm(
        color: isOpen
            ? context.appColors.colors.green
            : context.appColors.colors.red,
      );
    }
    if (_isRating(item)) {
      return ReviewStars(
        stars: (double.tryParse(item.value ?? "") ?? 0).round(),
        filled: true,
        selectedColor: context.appColors.colors.yellow,
      );
    }
    return _label(context, item.key);
  }

  Widget _label(BuildContext context, String text) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ).bodySm(color: context.appColors.textIconColor.secondary);
  }
}
