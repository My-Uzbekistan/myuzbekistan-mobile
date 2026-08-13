import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../../../utils/expire_formatter.dart';

class OwnCardPageWidget extends HookWidget {
  final void Function(String expire) updateCardData;

  const OwnCardPageWidget({super.key, required this.updateCardData});

  @override
  Widget build(BuildContext context) {
    final expireController = useTextEditingController();

    useEffect(() {
      void listener() {
        updateCardData(expireController.text);
      }

      expireController.addListener(listener);
      return () => expireController.removeListener(listener);
    }, const []);

    return AppInputField(
      controller: expireController,
      label: context.localization.card_expiry_full_label,
      hintText: context.localization.card_expiry_hint,
      keyboardType: TextInputType.number,
      formatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
        ExpiryDateInputFormatter(),
      ],
    );
  }
}
