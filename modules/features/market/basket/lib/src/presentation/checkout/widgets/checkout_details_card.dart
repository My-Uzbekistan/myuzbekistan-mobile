import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CheckoutDetailsCard extends StatelessWidget {
  const CheckoutDetailsCard({
    super.key,
    required this.deliveryMethods,
    required this.delivery,
    required this.addressLine,
    required this.addressLabel,
    required this.phone,
    this.onDeliverySelected,
    this.onAddressTap,
    this.onPhoneTap,
  });

  final List<DeliveryMethod> deliveryMethods;
  final DeliveryMethod? delivery;
  final String? addressLine;
  final String addressLabel;
  final String? phone;
  final ValueChanged<DeliveryMethod>? onDeliverySelected;
  final VoidCallback? onAddressTap;
  final VoidCallback? onPhoneTap;

  String? get _formattedPhone {
    final digits = (phone ?? "").replaceAll(RegExp(r"\D"), "");
    if (digits.isEmpty) return null;
    return digits.takeLast(9).phoneFormat();
  }

  @override
  Widget build(BuildContext context) {
    final selected = delivery;
    final methods = deliveryMethods.isNotEmpty
        ? deliveryMethods
        : [if (selected != null) selected];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            context.localization.basket_checkout_order_details,
          ).labelLg(color: context.appColors.textIconColor.primary),
          if (methods.isEmpty)
            _deliveryEmptyRow(context)
          else
            Column(
              spacing: 8,
              children: [
                for (var index = 0; index < methods.length; index++)
                  _deliveryRow(
                    context,
                    methods[index],
                    isLast: index == methods.length - 1,
                  ),
              ],
            ),
          _valueRow(
            context,
            icon: Assets.svg.pinLocation,
            label: addressLabel,
            value: addressLine,
            onTap: onAddressTap,
          ),
          _valueRow(
            context,
            icon: Assets.svg.iconPhoneFill,
            label: context.localization.basket_checkout_phone,
            value: _formattedPhone,
            onTap: onPhoneTap,
          ),
        ],
      ),
    );
  }

  Widget _deliveryEmptyRow(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        SizedBox.square(
          dimension: 24,
          child: Assets.svg.carArmored.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.tertiary,
          ),
        ),
        Expanded(
          child: Text(
            context.localization.basket_checkout_delivery_empty,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).bodyLg(color: context.appColors.textIconColor.tertiary),
        ),
      ],
    );
  }

  Widget _deliveryRow(
    BuildContext context,
    DeliveryMethod method, {
    required bool isLast,
  }) {
    final icon = switch (method.type) {
      DeliveryType.courier => Assets.svg.carArmored,
      DeliveryType.pickup => Assets.svg.walkingMan,
    };
    final priceText = method.price == 0
        ? context.localization.basket_checkout_delivery_free
        : "${method.price.amountFormatted()} "
              "${context.localization.basket_currency_som}";
    final place = method.subtitle;
    final subtitle = place == null || place.isEmpty
        ? priceText
        : "$place · $priceText";

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onDeliverySelected == null
          ? null
          : () => onDeliverySelected!(method),
      child: Container(
        padding: EdgeInsets.only(bottom: isLast ? 0 : 12),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : Border(
                  bottom: BorderSide(color: context.appColors.fill.opaque),
                ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  SizedBox.square(
                    dimension: 24,
                    child: icon.path.toSvgImage(
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
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).bodyLg(
                          color: context.appColors.textIconColor.primary,
                        ),
                        Text(
                          subtitle,
                          maxLines: 1,
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
            AppCheck(isChecked: delivery?.id == method.id),
          ],
        ),
      ),
    );
  }

  Widget _valueRow(
    BuildContext context, {
    required SvgGenImage icon,
    required String label,
    required String? value,
    VoidCallback? onTap,
  }) {
    final hasValue = value != null && value.isNotEmpty;

    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: hasValue
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            spacing: 12,
            children: [
              SizedBox.square(
                dimension: 24,
                child: icon.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: context.appColors.textIconColor.primary,
                ),
              ),
              Expanded(
                child: hasValue
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 4,
                        children: [
                          Text(
                            value,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ).bodyLg(
                            color: context.appColors.textIconColor.primary,
                          ),
                          Text(
                            label,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).bodySm(
                            color: context.appColors.textIconColor.tertiary,
                          ),
                        ],
                      )
                    : Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodyLg(color: context.appColors.textIconColor.tertiary),
              ),
            ],
          ),
        ),
        BasketRoundChip(
          onTap: onTap,
          icon: (hasValue ? Assets.svg.iconEditPen : Assets.svg.iconPlus).path
              .toSvgImage(
                fit: BoxFit.contain,
                tintColor: onTap == null
                    ? context.appColors.textIconColor.disable
                    : context.appColors.textIconColor.primary,
              ),
        ),
      ],
    );
  }
}
