import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_sheet.dart';
import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class CheckoutPhoneSheet extends HookWidget {
  const CheckoutPhoneSheet({super.key, this.phone});

  final String? phone;

  static Future<String?> show(BuildContext context, {String? phone}) {
    return CheckoutSheet.show<String>(
      context,
      builder: (context) => CheckoutPhoneSheet(phone: phone),
    );
  }

  static String _digits(String value) => value.replaceAll(RegExp(r"\D"), "");

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: _digits(phone ?? "").takeLast(9).phoneFormat(prefix: "").trim(),
    );
    final localPart = useState(_digits(controller.text));

    useEffect(() {
      void listener() => localPart.value = _digits(controller.text);
      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final isValid = localPart.value.length == 9;

    return CheckoutSheet(
      title: context.localization.basket_checkout_phone_add,
      content: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 12,
          bottom: 20,
        ),
        child: PhoneInputField(
          controller: controller,
          label: context.localization.basket_checkout_phone_label,
          keyboardType: TextInputType.phone,
          formatters: [
            FilteringTextInputFormatter.allow(RegExp(r"[\d ]")),
            PhoneInputFormatter(),
          ],
        ),
      ),
      footer: AppActionButton(
        actionText: context.coreLocalization.action_add,
        sizeType: ActionButtonSizeType.large,
        onPressed: isValid
            ? () => Navigator.of(context).pop("998${localPart.value}")
            : null,
      ),
    );
  }
}
