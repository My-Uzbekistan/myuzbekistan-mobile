import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../../../utils/expire_formatter.dart';

class ExternalCardPageWidget extends HookWidget {
  final void Function(String expire, String cvv) updateCardData;

  const ExternalCardPageWidget({super.key, required this.updateCardData});

  @override
  Widget build(BuildContext context) {
    final expireController = useTextEditingController();
    final cvvController = useTextEditingController();

    useEffect(() {
      void listener() {
        updateCardData(expireController.text, cvvController.text);
      }

      expireController.addListener(listener);
      cvvController.addListener(listener);
      return () {
        expireController.removeListener(listener);
        cvvController.removeListener(listener);
      };
    }, const []);

    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: AppInputField(
            controller: expireController,
            label: context.localization.card_expiry_label,
            hintText: context.localization.card_expiry_hint,
            keyboardType: TextInputType.number,
            formatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
              ExpiryDateInputFormatter(),
            ],
          ),
        ),
        Expanded(
          child: AppInputField(
            controller: cvvController,
            label: context.localization.cvv_label,
            hintText: context.localization.cvv_hint,
            keyboardType: TextInputType.number,
            maxLength: 3,
            formatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
          ),
        ),
      ],
    );
  }
}
