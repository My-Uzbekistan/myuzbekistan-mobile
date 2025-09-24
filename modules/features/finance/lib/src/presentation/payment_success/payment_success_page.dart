import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentSuccessPageParams {
  final MerchantItem merchant;
  final int amount;
  final String paymentId;

  const PaymentSuccessPageParams({
    required this.merchant,
    required this.amount,
    required this.paymentId,
  });
}

class PaymentSuccessPage extends StatefulWidget {
  final PaymentSuccessPageParams params;

  const PaymentSuccessPage({super.key, required this.params});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(bottom: kBottomNavigationBarHeight),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Stack(
                    clipBehavior: Clip.none,

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          color: context.appColors.fill.quaternary,
                          child: ExtendedImage.network(
                            widget.params.merchant.icon ?? "",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                            colorBlendMode: BlendMode.hardLight,
                            color: context.appColors.fill.quaternary,

                            loadStateChanged: (state) {
                              switch (state.extendedImageLoadState) {
                                case LoadState.completed:
                                  return AnimatedOpacity(
                                    opacity: 1.0,
                                    duration: Duration(milliseconds: 300),
                                    child: state.completedWidget,
                                  );
                                default:
                                  return SizedBox();
                              }
                            },
                          ),
                        ),
                      ),

                      // Assets.svgIconCheck.toSvgImage()
                      Positioned(
                        top: -12,
                        right: -12,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: context.appColors.colors.green,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Assets.svgIconCheck.toSvgImage(
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                context.appColors.static.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 6,
                    children: [
                      Text(context.localization.payment_success,textAlign: TextAlign.center,).h3(),
                      Text(
                        "-${context.localization.currency(widget.params.amount.amountFormatted())}",
                      ).bodyLg(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                AppActionButton(
                  actionText: context.coreLocalization.action_close,
                  sizeType: ActionButtonSizeType.large,
                  onPressed: () {
                    context.pop();
                  },
                ),
                AppActionButton(
                  actionText: context.localization.payment_details,
                  onPressed: () {
                    context.pushTransactionDetailPage(widget.params.paymentId);
                  },

                  type: ActionButtonType.text,
                  sizeType: ActionButtonSizeType.large,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
