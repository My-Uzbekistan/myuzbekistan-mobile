import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../../../utils/expire_formatter.dart';
import '../../../utils/upper_case_formatter.dart';

class ExternalCardPageWidget extends HookWidget {
  final void Function(String expire, String cvv, String cardHolderName)
  updateCardData;

  const ExternalCardPageWidget({super.key, required this.updateCardData});

  @override
  Widget build(BuildContext context) {
    final expireController = useTextEditingController();
    final cvvController = useTextEditingController();
    final cardHolderController = useTextEditingController();

    useEffect(() {
      void listener() {
        updateCardData(
          expireController.text,
          cvvController.text,
          cardHolderController.text,
        );
      }

      expireController.addListener(listener);
      cvvController.addListener(listener);
      cardHolderController.addListener(listener);
      return () {
        expireController.removeListener(listener);
        cvvController.removeListener(listener);
        cardHolderController.removeListener(listener);
      };
    }, const []);

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        AppInputField(
          controller: cardHolderController,
          label: context.localization.card_holder_label,
          hintText: context.localization.card_holder_hint,
          keyboardType: TextInputType.name,
          autofillHints: const [AutofillHints.creditCardName],
          formatters: [
            FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z '-]")),
            UpperCaseTextInputFormatter(),
          ],
        ),
        Row(
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
                formatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
