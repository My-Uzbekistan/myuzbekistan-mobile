import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class VerificationScreenWidget extends StatelessWidget {
  final bool isRetryEnable;
  final String time;

  final bool hasError;
  final String? description;
  final FocusNode? focusNode;
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChange;
  final VoidCallback? onSubmit;
  final VoidCallback? onRetry;
  final TextEditingController? textEditingController;
  final SmsRetriever? smsRetriever;

  const VerificationScreenWidget({
    super.key,
    this.description,
    this.time = "",
    this.isRetryEnable = false,
    this.focusNode,
    this.onCompleted,
    this.onChange,
    this.onSubmit,
    this.hasError = false,
    this.onRetry,
    this.textEditingController,
    this.smsRetriever,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (description != null)
          Text(
            description!,
            // "На номер +998 93 *** ** 98  отправлено СМС с кодом подтверждения.",
            textAlign: TextAlign.center,
          ).bodyLg(),
        const SizedBox(height: 28),
        Directionality(
          textDirection: TextDirection.ltr,
          child: Pinput(
            forceErrorState: hasError,
            focusNode: focusNode,
            controller: textEditingController,
            length: 6,
            onCompleted: onCompleted,
            onChanged: onChange,
            smsRetriever: smsRetriever,
            errorBuilder: (context, error) {
              return Text(error);
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],

            errorPinTheme: PinTheme(
              width: 48,
              height: 56,
              textStyle: CustomTypography.H3.copyWith(
                color: context.appColors.colors.red,
              ),
              decoration: BoxDecoration(
                color: context.appColors.nonOpaque.red,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            focusedPinTheme: PinTheme(
              width: 48,
              height: 56,
              textStyle: CustomTypography.H3,
              decoration: BoxDecoration(
                color: context.appColors.fill.quaternary,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            defaultPinTheme: PinTheme(
              width: 48,
              height: 56,
              textStyle: CustomTypography.H3,
              decoration: BoxDecoration(
                color: context.appColors.fill.quaternary,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(height: 24),

        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 40),
          child: SizedBox(
            width: double.maxFinite,
            child: TextButton(
              style: TextButton.styleFrom(overlayColor: Colors.transparent),
              onPressed: isRetryEnable ? onRetry : null,
              child:
                  !isRetryEnable
                      ? Text(
                        context.localization.resend_in_seconds(time),
                        textAlign: TextAlign.center,
                      ).labelLg(color: context.appColors.textIconColor.tertiary)
                      : Text(
                        context.localization.action_resend,
                      ).labelLg(color: context.appColors.textIconColor.primary),
            ),
          ),
        ),
      ],
    );
  }
}
