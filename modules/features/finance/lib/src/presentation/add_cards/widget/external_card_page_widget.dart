import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/expire_formatter.dart';

class ExternalCardPageWidget extends StatefulWidget {
  final Function(String expire, String cvv, String holderName) updateCardData;

  const ExternalCardPageWidget({super.key, required this.updateCardData});

  @override
  State<ExternalCardPageWidget> createState() => _ExternalCardPageWidgetState();
}

class _ExternalCardPageWidgetState extends State<ExternalCardPageWidget> {
  final TextEditingController _expireController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _holderNameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expireController.addListener(listener);
    _cvvController.addListener(listener);
    _holderNameController.addListener(listener);
  }

  listener() {
    widget.updateCardData.call(
      _expireController.text,
      _cvvController.text,
      _holderNameController.text,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _expireController.removeListener(listener);
    _cvvController.removeListener(listener);
    _holderNameController.removeListener(listener);
    _expireController.dispose();
    _cvvController.dispose();
    _holderNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          spacing: 16,
          children: [
            Flexible(
              child: AppInputField(
                controller: _expireController,
                label: context.localization.card_expiry_label,
                hintText: context.localization.card_expiry_hint,
                keyboardType: TextInputType.number,
                formatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                  ExpiryDateInputFormatter(),
                ],
              ),
            ),
            Flexible(
              child: AppInputField(
                controller: _cvvController,
                label: "CVV / CVC",
                hintText: "000",
                keyboardType: TextInputType.number,
                formatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              ),
            ),
          ],
        ),
        AppInputField(
          controller: _holderNameController,
          label: context.localization.card_holder_label,
          hintText: context.localization.card_holder_hint,
        ),
      ],
    );
  }
}
