import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CardPaymentSystemIcon extends StatelessWidget {
  final String? iconUrl;
  final bool showDefaultIcon;

  const CardPaymentSystemIcon({
    super.key,
    this.iconUrl,
    this.showDefaultIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: AppNetworkImage(
        iconUrl ?? "",
        cacheMaxAge: const Duration(days: 10),
        fit: BoxFit.contain,
        placeholder: showDefaultIcon
            ? Assets.svg.defaultCreditCard.svg(fit: BoxFit.contain)
            : const SizedBox(),
      ),
    );
  }
}
