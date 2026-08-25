import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CheckoutDetailsCard extends StatelessWidget {
  const CheckoutDetailsCard({
    super.key,
    required this.delivery,
    required this.address,
    required this.phone,
    this.onDeliveryTap,
    this.onAddressTap,
    this.onPhoneTap,
  });

  final DeliveryMethod? delivery;
  final MarketAddress? address;
  final String? phone;
  final VoidCallback? onDeliveryTap;
  final VoidCallback? onAddressTap;
  final VoidCallback? onPhoneTap;

  String? get _formattedPhone {
    final digits = (phone ?? "").replaceAll(RegExp(r"\D"), "");
    if (digits.isEmpty) return null;
    return digits.takeLast(9).phoneFormat();
  }

  @override
  Widget build(BuildContext context) {
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
          _row(
            context,
            icon: Assets.svg.iconWalkingMan,
            label: context.localization.basket_checkout_delivery_method,
            value: delivery?.title,
            onTap: onDeliveryTap,
          ),
          _row(
            context,
            icon: Assets.svg.iconPinLocationFill,
            label: context.localization.basket_checkout_address,
            value: address?.fullLine,
            onTap: onAddressTap,
          ),
          _row(
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

  Widget _row(
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
