import 'package:basket/src/core/extension.dart';
import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class CheckoutPhoneSheet extends HookWidget {
  const CheckoutPhoneSheet({super.key, this.phone});

  final String? phone;

  static Future<String?> show(BuildContext context, {String? phone}) {
    return showModalBottomSheet<String>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => CheckoutPhoneSheet(phone: phone),
    );
  }

  static String _digits(String value) => value.replaceAll(RegExp(r"\D"), "");

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: _digits(phone ?? "").takeLast(9),
    );
    final localPart = useState(_digits(controller.text));

    useEffect(() {
      void listener() => localPart.value = _digits(controller.text);
      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final isValid = localPart.value.length == 9;

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
            context.localization.basket_checkout_phone,
          ).h3(color: context.appColors.textIconColor.primary),
          AppInputField(
            controller: controller,
            prefixText: "+998",
            label: context.localization.basket_checkout_phone,
            autoFocus: true,
            keyboardType: TextInputType.phone,
            formatters: [
              FilteringTextInputFormatter.allow(RegExp(r"[\d ]")),
              PhoneInputFormatter(),
            ],
          ),
          AppActionButton(
            actionText: context.coreLocalization.action_done,
            sizeType: ActionButtonSizeType.large,
            onPressed: isValid
                ? () => Navigator.of(context).pop("998${localPart.value}")
                : null,
          ),
        ],
      ),
    );
  }
}
