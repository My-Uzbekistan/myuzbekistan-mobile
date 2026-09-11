import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_sheet.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutAddressSheet extends StatelessWidget {
  const CheckoutAddressSheet({super.key});

  static Future<void> show(BuildContext context, CheckoutBloc bloc) {
    bloc.add(CheckoutEvent.loadAddresses());
    return CheckoutSheet.show<void>(
      context,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const CheckoutAddressSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();

    Future<void> openMap({MarketAddress? address}) async {
      final saved = await context.market.pushMarketAddressMap(
        address: address,
      );
      bloc.add(
        saved == null
            ? CheckoutEvent.loadAddresses()
            : CheckoutEvent.selectAddress(address: saved),
      );
    }

    return BlocBuilder<CheckoutBloc, CheckoutState>(
      buildWhen: (previous, current) =>
          previous.addresses != current.addresses ||
          previous.isAddressesLoading != current.isAddressesLoading ||
          previous.address != current.address,
      builder: (context, state) {
        return CheckoutSheet(
          title: context.localization.basket_checkout_my_addresses,
          content: _content(context, state, bloc, openMap),
          footer: AppActionButton(
            actionText: context.localization.basket_checkout_address_new,
            sizeType: ActionButtonSizeType.large,
            type: ActionButtonType.secondary,
            icon: Assets.svg.plusMedium.svg(),
            onPressed: () => openMap(),
          ),
        );
      },
    );
  }

  Widget _content(
    BuildContext context,
    CheckoutState state,
    CheckoutBloc bloc,
    Future<void> Function({MarketAddress? address}) openMap,
  ) {
    if (state.addresses.isEmpty && state.isAddressesLoading) {
      return const SizedBox(
        height: 160,
        child: Center(child: LoadingIndicator(size: 32)),
      );
    }
    if (state.addresses.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Text(
          context.localization.basket_checkout_address_empty,
        ).bodyMd(color: context.appColors.textIconColor.tertiary),
      );
    }

    return Column(
      children: [
        for (var index = 0; index < state.addresses.length; index++)
          _row(
            context,
            state.addresses[index],
            isSelected: state.address?.id == state.addresses[index].id,
            isLast: index == state.addresses.length - 1,
            onTap: () {
              bloc.add(
                CheckoutEvent.selectAddress(address: state.addresses[index]),
              );
              Navigator.of(context).pop();
            },
            onEdit: () => openMap(address: state.addresses[index]),
          ),
      ],
    );
  }

  Widget _row(
    BuildContext context,
    MarketAddress address, {
    required bool isSelected,
    required bool isLast,
    required VoidCallback onTap,
    required VoidCallback onEdit,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : Border(
                  bottom: BorderSide(
                    color: context.appColors.stroke.nonOpaque,
                    width: 0.5,
                  ),
                ),
        ),
        child: Row(
          spacing: 8,
          children: [
            AppCheck(isChecked: isSelected),
            Expanded(
              child: Text(
                address.fullLine,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: context.appColors.textIconColor.primary),
            ),
            BasketRoundChip(
              onTap: onEdit,
              icon: Assets.svg.iconEditPen.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: context.appColors.textIconColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
