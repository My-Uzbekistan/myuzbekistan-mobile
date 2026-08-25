import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/widgets/payment_order_detail_row.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentOrderDetailsCard extends HookWidget {
  final List<CheckoutDetail> details;

  const PaymentOrderDetailsCard({super.key, required this.details});

  static const _chevronSize = 20.0;
  static const _expandDuration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(true);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => isExpanded.value = !isExpanded.value,
            child: Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Text(
                    context.localization.payment_order_details,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                ),
                AnimatedRotation(
                  duration: _expandDuration,
                  turns: isExpanded.value ? 0.5 : 0,
                  child: SizedBox.square(
                    dimension: _chevronSize,
                    child: Assets.svg.iconChevronDown.path.toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: context.appColors.textIconColor.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: _expandDuration,
            alignment: Alignment.topCenter,
            child: isExpanded.value
                ? Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 12,
                      children: [
                        for (final detail in details)
                          PaymentOrderDetailRow(detail: detail),
                      ],
                    ),
                  )
                : const SizedBox(width: double.infinity),
          ),
        ],
      ),
    );
  }
}
