import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketDetailDelivery extends StatelessWidget {
  const MarketDetailDelivery({
    super.key,
    required this.methods,
    required this.selectedId,
    required this.onSelect,
  });

  final List<DeliveryMethod> methods;
  final int? selectedId;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        for (var index = 0; index < methods.length; index++)
          _tile(
            context,
            method: methods[index],
            isSelected: methods[index].id == selectedId,
            showDivider: index < methods.length - 1,
          ),
      ],
    );
  }

  Widget _tile(
    BuildContext context, {
    required DeliveryMethod method,
    required bool isSelected,
    required bool showDivider,
  }) {
    final priceText = method.price == 0
        ? context.localization.market_detail_delivery_free
        : "${method.price.amountFormatted()} ${context.localization.market_currency_som}";
    final subtitle = [
      if (method.subtitle.orEmpty().isNotEmpty) method.subtitle!,
      priceText,
    ].join(" · ");

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onSelect(method.id),
      child: Container(
        padding: EdgeInsets.only(bottom: showDivider ? 12 : 0),
        decoration: BoxDecoration(
          border: showDivider
              ? Border(
                  bottom: BorderSide(
                    color: context.appColors.background.underlayer,
                  ),
                )
              : null,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  SizedBox.square(
                    dimension: 24,
                    child: _glyphPath(method.type).toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: context.appColors.textIconColor.primary,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          method.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ).bodyLg(
                          color: context.appColors.textIconColor.primary,
                        ),
                        Text(
                          subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ).bodySm(
                          color: context.appColors.textIconColor.tertiary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppCheck(isChecked: isSelected),
          ],
        ),
      ),
    );
  }

  String _glyphPath(DeliveryType type) => switch (type) {
    DeliveryType.courier => Assets.svg.market.orderStepCar.path,
    DeliveryType.pickup => Assets.svg.iconWalkingMan.path,
  };
}
