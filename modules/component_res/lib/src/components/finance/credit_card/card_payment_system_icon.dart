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
      child: ExtendedImage.network(
        iconUrl ?? "",
        cache: true,
        cacheMaxAge: const Duration(days: 10),
        fit: BoxFit.contain,
        loadStateChanged: (state) {
          switch (state.extendedImageLoadState) {
            case LoadState.completed:
              return AnimatedOpacity(
                opacity: 1.0,
                duration: const Duration(milliseconds: 200),
                child: state.completedWidget,
              );
            default:
              return showDefaultIcon
                  ? Assets.svg.defaultCreditCard.svg(fit: BoxFit.contain)
                  : const SizedBox();
          }
        },
      ),
    );
  }
}
