import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutAddressFormSheet extends HookWidget {
  const CheckoutAddressFormSheet({super.key, this.address});

  final MarketAddress? address;

  static Future<void> show(
    BuildContext context,
    CheckoutBloc bloc, {
    MarketAddress? address,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: CheckoutAddressFormSheet(address: address),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lineController = useTextEditingController(text: address?.line ?? "");
    final districtController = useTextEditingController(
      text: address?.district ?? "",
    );
    final line = useState(lineController.text.trim());

    useEffect(() {
      void listener() => line.value = lineController.text.trim();
      lineController.addListener(listener);
      return () => lineController.removeListener(listener);
    }, [lineController]);

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.viewInsetsOf(context).bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            address == null
                ? context.localization.basket_checkout_address_add
                : context.localization.basket_checkout_address,
          ).h3(color: context.appColors.textIconColor.primary),
          AppInputField(
            controller: lineController,
            label: context.localization.basket_checkout_address_line,
            autoFocus: true,
          ),
          AppInputField(
            controller: districtController,
            label: context.localization.basket_checkout_address_district,
          ),
          AppActionButton(
            actionText: context.coreLocalization.action_done,
            sizeType: ActionButtonSizeType.large,
            onPressed: line.value.isEmpty
                ? null
                : () {
                    final district = districtController.text.trim();
                    context.read<CheckoutBloc>().add(
                      CheckoutEvent.saveAddress(
                        addressId: address?.id,
                        line: line.value,
                        district: district.isEmpty ? null : district,
                      ),
                    );
                    Navigator.of(context).pop();
                  },
          ),
        ],
      ),
    );
  }
}
