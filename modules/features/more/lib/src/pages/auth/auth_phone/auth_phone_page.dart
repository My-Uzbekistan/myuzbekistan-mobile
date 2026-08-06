import 'package:component_res/component_res.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/auth/auth_phone/bloc/auth_phone_bloc.dart';
import 'package:more/src/pages/auth/auth_phone/widgets/phone_input_field.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class AuthPhonePage extends StatefulWidget {
  const AuthPhonePage({super.key});

  @override
  State<AuthPhonePage> createState() => _AuthPhonePageState();
}

class _AuthPhonePageState extends State<AuthPhonePage> {
  TextEditingController? _controller;
  AuthPhoneBloc? authPhoneBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
    authPhoneBloc = context.read<AuthPhoneBloc>();
    listener();
  }
  void listener() {
    _controller?.addListener(() {
      authPhoneBloc?.add(
        AuthPhoneEvent.setPhone(phoneNumber: _controller!.text.withOutSpace()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(),
      body: BlocConsumer<AuthPhoneBloc, AuthPhoneState>(
        listenWhen:
            (previous, current) =>
                previous.codeSend != current.codeSend &&
                current.codeSend == true,
        listener: (context, state) {
          final extra=GoRouterState.of(context).extra;
          authPhoneBloc?.add(AuthPhoneEvent.pushedConfirm());
          context.finance.pushAuthVerification(phone: state.phoneNumber,
          extra: extra
          );
        },
        buildWhen:
            (previous, current) =>
                previous.phoneNumber != current.phoneNumber ||
                previous.isPhoneNumberValid != current.isPhoneNumberValid ||
                previous.error != current.error ||
                previous.isLoading != current.isLoading,
        builder: (context, state) {
          // Raqam kiritilgan bo'lsa "SMS-kod yuboramiz" yordamchi matni chiqadi.
          // Qizil xato faqat haqiqiy xato (state.error) kelganda ko'rsatiladi —
          // raqam yozayotganda qizil bo'lib turmaydi.
          final isEmpty = state.phoneNumber.isEmpty;
          final hasError = state.error.isNotEmpty;
          final keyboardOpen = MediaQuery.viewInsetsOf(context).bottom > 0;

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(top: 8),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.localization.auth_phone_page_title).h1(
                          color: context.appColors.textIconColor.primary,
                        ),
                        PhoneInputField(
                          key: ValueKey("input"),
                          controller: _controller!,
                          prefixText: "+998",
                          label: context.localization.auth_phone_page_hint,
                          supportText: (isEmpty || hasError)
                              ? null
                              : context.localization.auth_phone_sms_hint,
                          errorText: hasError ? state.error : null,
                          formatters: [
                            // Faqat raqam (va oraliq bo'sh joy) — harf kiritilmaydi
                            FilteringTextInputFormatter.allow(RegExp(r'[\d ]')),
                            PhoneInputFormatter(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppActionButton(
                      actionText: context.localization.action_continue,
                      sizeType: ActionButtonSizeType.large,
                      disable: !state.isPhoneNumberValid,
                      isLoading: state.isLoading,
                      onPressed: () {
                        authPhoneBloc?.add(AuthPhoneEvent.sendEvent());
                      },
                    ),
                    if (!keyboardOpen) ...[
                      const SizedBox(height: 16),
                      terms(),
                      SizedBox(height: MediaQuery.of(context).padding.bottom),
                    ],
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget terms() {
    final fullText = context.localization.accept_terms;
    final termsText = context.localization.terms;

    final parts = fullText.split('terms');

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        recognizer: TapGestureRecognizer()..onTap = () {},
        style: CustomTypography.bodySm.copyWith(
          color: context.appColors.textIconColor.primary,
        ),
        children: [
          TextSpan(text: parts.first),
          TextSpan(
            text: termsText,
            style: CustomTypography.bodySm.copyWith(
              color: context.appColors.brand,
            ),
            // recognizer: TapGestureRecognizer()
            //   ..onTap = () {
            //     // agreement ochish
            //   },
          ),
          if (parts.length > 1) TextSpan(text: parts.last),
        ],
      ),
    );
  }
}
