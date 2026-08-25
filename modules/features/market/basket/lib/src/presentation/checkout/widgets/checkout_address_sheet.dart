import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_address_form_sheet.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutAddressSheet extends StatelessWidget {
  const CheckoutAddressSheet({super.key});

  static Future<void> show(BuildContext context, CheckoutBloc bloc) {
    bloc.add(CheckoutEvent.loadAddresses());
    return showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const CheckoutAddressSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<CheckoutBloc, CheckoutState>(
        buildWhen: (previous, current) =>
            previous.addresses != current.addresses ||
            previous.isAddressesLoading != current.isAddressesLoading ||
            previous.address != current.address,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                context.localization.basket_checkout_address,
              ).h3(color: context.appColors.textIconColor.primary),
              const SizedBox(height: 4),
              if (state.addresses.isEmpty && state.isAddressesLoading)
                const SizedBox(
                  height: 120,
                  child: Center(child: LoadingIndicator(size: 32)),
                )
              else if (state.addresses.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    context.localization.basket_checkout_address_empty,
                  ).bodyMd(color: context.appColors.textIconColor.tertiary),
                )
              else
                for (final address in state.addresses)
                  _AddressRow(
                    address: address,
                    isSelected: state.address?.id == address.id,
                    onTap: () {
                      bloc.add(CheckoutEvent.selectAddress(address: address));
                      Navigator.of(context).pop();
                    },
                    onEdit: () => CheckoutAddressFormSheet.show(
                      context,
                      bloc,
                      address: address,
                    ),
                    onDelete: () => bloc.add(
                      CheckoutEvent.deleteAddress(addressId: address.id),
                    ),
                  ),
              const SizedBox(height: 4),
              AppActionButton(
                actionText: context.localization.basket_checkout_address_add,
                sizeType: ActionButtonSizeType.large,
                type: ActionButtonType.secondary,
                icon: Assets.svg.iconPlus.svg(),
                onPressed: () => CheckoutAddressFormSheet.show(context, bloc),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AddressRow extends StatelessWidget {
  const _AddressRow({
    required this.address,
    required this.isSelected,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  final MarketAddress address;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final district = address.district;

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
                  Text(address.line).bodyLg(
                    color: context.appColors.textIconColor.primary,
                  ),
                  if (district != null && district.isNotEmpty)
                    Text(district).bodySm(
                      color: context.appColors.textIconColor.tertiary,
                    ),
                ],
              ),
            ),
            BasketRoundChip(
              onTap: onEdit,
              icon: Assets.svg.iconEditPen.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: context.appColors.textIconColor.primary,
              ),
            ),
            BasketRoundChip(
              onTap: onDelete,
              icon: Assets.svg.iconTrashCanLine.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: context.appColors.colors.red,
              ),
            ),
            AppCheck(isChecked: isSelected),
          ],
        ),
      ),
    );
  }
}
