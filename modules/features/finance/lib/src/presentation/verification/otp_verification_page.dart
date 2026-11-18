import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/verification/bloc/types.dart';
import 'package:finance/src/presentation/verification/bloc/verification_bloc.dart';
import 'package:finance/src/presentation/verification/verificatin_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class OtpVerificationPage extends StatefulWidget {
  final String verificationType;

  const OtpVerificationPage({super.key,required this.verificationType});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  TextEditingController otpTextEditingController = TextEditingController();

  FocusScopeNode? _focusScopeNode;

  FocusNode focusNode = FocusNode();

  VerificationBloc? verificationBloc;

  @override
  void initState() {
    verificationBloc = context.read<VerificationBloc>();
    listen();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus();
    });
    super.initState();
  }

  Future<void> listen() async {
    // final autoFill = SmsAutoFill();
    // await autoFill.listenForCode();
    // autoFill.code.listen((data) {
    //   otpTextEditingController.text = data.toString();
    // });
  }

  @override
  void didChangeDependencies() {
    _focusScopeNode = FocusScope.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Assets.svg.roundedCloseIcon.path.toSvgImage(
                colorFilter: ColorFilter.mode(
                  context.appColors.textIconColor.tertiary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
        body: BlocConsumer<VerificationBloc, VerificationState>(
          listenWhen:
              (previous, current) => previous.navState != current.navState,
          listener: (context, state) {
            if (state.navState is VerificationNavStateComplete) {
              final completer = GoRouterState.of(context).extra;
              if (completer is Completer<bool> && !completer.isCompleted) {
                completer.complete(true);
              }
              context.popUntil([
                AppNavPath.finance.financeCards,
                AppNavPath.finance.financePayment,
                AppNavPath.more.authPage,
              ]);
            }
          },
          builder: (context, state) {

            final description = switch(widget.verificationType){
              VerificationType.addCardVerification => context.localization.cardAddSmsSent,
              VerificationType.authVerification => context.localization.verification_page_code_send_phone(state.phone),
              _ => ""
            };

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerificationScreenWidget(
                      textEditingController: otpTextEditingController,
                      isRetryEnable: state.isRetry,
                      time: state.timer,
                      hasError: state.hasError,
                      description: description,
                      onCompleted: (code) {
                        verificationBloc?.add(
                          VerificationEvent.setCodeEvent(code),
                        );
                      },
                      onChange: (code) {
                        verificationBloc?.add(
                          VerificationEvent.setCodeEvent(code),
                        );
                      },
                      onSubmit: () {
                        verificationBloc?.add(VerificationEvent.verify());
                      },
                      onRetry: () {
                        otpTextEditingController.clear();
                        verificationBloc?.add(
                          const VerificationEvent.resendEvent(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusScopeNode?.unfocus();
    otpTextEditingController.dispose();

    super.dispose();
  }
}
