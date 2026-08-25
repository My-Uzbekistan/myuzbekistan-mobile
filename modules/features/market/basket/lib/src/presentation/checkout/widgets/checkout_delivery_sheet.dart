import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutDeliverySheet extends StatelessWidget {
  const CheckoutDeliverySheet({super.key});

  static Future<void> show(BuildContext context, CheckoutBloc bloc) {
    bloc.add(CheckoutEvent.loadDeliveryMethods());
    return showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const CheckoutDeliverySheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<CheckoutBloc, CheckoutState>(
        buildWhen: (previous, current) =>
            previous.deliveryMethods != current.deliveryMethods ||
            previous.isDeliveryMethodsLoading !=
                current.isDeliveryMethodsLoading ||
            previous.delivery != current.delivery,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                context.localization.basket_checkout_delivery_method,
              ).h3(color: context.appColors.textIconColor.primary),
              const SizedBox(height: 4),
              if (state.deliveryMethods.isEmpty &&
                  state.isDeliveryMethodsLoading)
                const SizedBox(
                  height: 120,
                  child: Center(child: LoadingIndicator(size: 32)),
                )
              else
                for (final method in state.deliveryMethods)
                  _DeliveryRow(
                    method: method,
                    isSelected: state.delivery?.id == method.id,
                    onTap: () {
                      context.read<CheckoutBloc>().add(
                        CheckoutEvent.selectDelivery(delivery: method),
                      );
                      Navigator.of(context).pop();
                    },
                  ),
            ],
          );
        },
      ),
    );
  }
}

class _DeliveryRow extends StatelessWidget {
  const _DeliveryRow({
    required this.method,
    required this.isSelected,
    required this.onTap,
  });

  final DeliveryMethod method;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final subtitle = method.subtitle;
    final priceText = method.price == 0
        ? context.localization.basket_checkout_delivery_free
        : "${method.price.amountFormatted()} "
              "${context.localization.basket_currency_som}";

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          spacing: 12,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(method.title).bodyLg(
                    color: context.appColors.textIconColor.primary,
                  ),
                  if (subtitle != null && subtitle.isNotEmpty)
                    Text(subtitle).bodySm(
                      color: context.appColors.textIconColor.tertiary,
                    ),
                  Text(priceText).labelSm(
                    color: context.appColors.textIconColor.secondary,
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
}
