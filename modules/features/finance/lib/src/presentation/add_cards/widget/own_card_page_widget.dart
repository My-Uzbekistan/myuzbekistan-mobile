import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/utils/phone_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../../utils/expire_formatter.dart';

class OwnCardPageWidget extends StatefulWidget {
  final Function(String expire, String phone) updateCardData;

  const OwnCardPageWidget({super.key, required this.updateCardData});

  @override
  State<OwnCardPageWidget> createState() => _OwnCardPageWidgetWidgetState();
}

class _OwnCardPageWidgetWidgetState extends State<OwnCardPageWidget> {
  final TextEditingController _expireController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expireController.addListener(listener);
    _phoneController.addListener(listener);
  }

  listener() {
    widget.updateCardData.call(
      _expireController.text,
      _phoneController.text.withOutSpace(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _expireController.removeListener(listener);
    _phoneController.removeListener(listener);
    _expireController.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AppInputField(
          controller: _expireController,
          label: context.localization.card_expiry_label,
          hintText: context.localization.card_expiry_hint,
          keyboardType: TextInputType.number,
          formatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
            ExpiryDateInputFormatter(),
          ],
        ),
        AppInputField(
          controller: _phoneController,
          label: context.localization.phone_number_label,
          prefixText: "+998",
          keyboardType: TextInputType.phone,
          formatters: [PhoneInputFormatter()],
        ),
      ],
    );
  }
}
