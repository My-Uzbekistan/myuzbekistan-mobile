import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_sheet.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutStoreAddressSheet extends StatelessWidget {
  const CheckoutStoreAddressSheet({super.key});

  static Future<void> show(BuildContext context, CheckoutBloc bloc) {
    bloc.add(CheckoutEvent.loadPickupPoints());
    return CheckoutSheet.show<void>(
      context,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const CheckoutStoreAddressSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();

    return BlocBuilder<CheckoutBloc, CheckoutState>(
      buildWhen: (previous, current) =>
          previous.pickupPoints != current.pickupPoints ||
          previous.isPickupPointsLoading != current.isPickupPointsLoading ||
          previous.pickupPoint != current.pickupPoint,
      builder: (context, state) {
        return CheckoutSheet(
          title: context.localization.basket_checkout_store_address,
          content: _content(context, state, bloc),
          footer: AppActionButton(
            actionText: context.localization.basket_map_save,
            sizeType: ActionButtonSizeType.large,
            onPressed: state.pickupPoint == null
                ? null
                : () => Navigator.of(context).pop(),
          ),
        );
      },
    );
  }

  Widget _content(
    BuildContext context,
    CheckoutState state,
    CheckoutBloc bloc,
  ) {
    if (state.pickupPoints.isEmpty && state.isPickupPointsLoading) {
      return const SizedBox(
        height: 160,
        child: Center(child: LoadingIndicator(size: 32)),
      );
    }
    if (state.pickupPoints.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Text(
          context.localization.basket_checkout_pickup_empty,
        ).bodyMd(color: context.appColors.textIconColor.tertiary),
      );
    }

    return Column(
      children: [
        for (var index = 0; index < state.pickupPoints.length; index++)
          _row(
            context,
            state.pickupPoints[index],
            isSelected: state.pickupPoint?.id == state.pickupPoints[index].id,
            isLast: index == state.pickupPoints.length - 1,
            onTap: () => bloc.add(
              CheckoutEvent.selectPickupPoint(
                point: state.pickupPoints[index],
              ),
            ),
          ),
      ],
    );
  }

  Widget _row(
    BuildContext context,
    MarketPickupPoint point, {
    required bool isSelected,
    required bool isLast,
    required VoidCallback onTap,
  }) {
    final distance = point.distanceMeters;
    final schedule = point.schedule;

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
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  SizedBox.square(
                    dimension: 24,
                    child: Assets.svg.pinLocation.path.toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: context.appColors.textIconColor.primary,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: point.isClosest ? 8 : 4,
                      children: [
                        if (point.isClosest) _closestBadge(context),
                        Text(point.fullLine).bodyLg(
                          color: context.appColors.textIconColor.primary,
                        ),
                        if (distance != null)
                          _metaRow(
                            context,
                            icon: Assets.svg.locatorLine,
                            text: context.localization
                                .basket_checkout_pickup_distance(
                                  (distance / 1000).round(),
                                ),
                          ),
                        if (schedule != null && schedule.isNotEmpty)
                          _metaRow(
                            context,
                            icon: Assets.svg.calendarLine,
                            text: schedule,
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

  Widget _closestBadge(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: context.appColors.fill.tertiary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        context.localization.basket_checkout_pickup_closest,
      ).bodyXsm(color: context.appColors.brandSeaBlue),
    );
  }

  Widget _metaRow(
    BuildContext context, {
    required SvgGenImage icon,
    required String text,
  }) {
    return Row(
      spacing: 4,
      children: [
        SizedBox.square(
          dimension: 16,
          child: icon.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.tertiary,
          ),
        ),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodySm(color: context.appColors.textIconColor.secondary),
        ),
      ],
    );
  }
}
