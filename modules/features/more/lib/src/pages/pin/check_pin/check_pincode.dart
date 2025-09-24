import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/pin/check_pin/bloc/check_pin_bloc.dart';
import 'package:more/src/pages/pin/widgets/my_pin.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/pin_keyboard.dart';

class CheckPinCodePage extends StatefulWidget {
  const CheckPinCodePage({super.key});

  @override
  State<CheckPinCodePage> createState() => _CheckPinCodePageState();
}

class _CheckPinCodePageState extends State<CheckPinCodePage> {
  final mPinController = MPinController();

  String? title;
  CheckPinCodeBloc? pinCodeBloc;

  @override
  void initState() {
    pinCodeBloc = context.read();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((t) {
      Future.delayed(const Duration(milliseconds: 200), () {
        authBiometric();
      });
    });

    super.initState();
  }

  void authBiometric() {
    pinCodeBloc?.add(
      CheckPinCodeEvent.openBiometricAuth(
        localizedReason: context.localization.authPrompt,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckPinCodeBloc, CheckPinCodeState>(
      listener: (context, state) {
        state.when(
          entryState: (pin, canBiometric) {},
          successState: () {
            context.travel.goMain();
            pinCodeBloc?.add(CheckPinCodeEvent.clear());
            // context.pop();
          },
          loadingState: () {
            mPinController.loading();
          },
          errorState: (message) {
            mPinController.notifyWrongInput();
          },
          reset: () {
            context.travel.goMain();
          },
        );
      },
      builder: (context, state) {
        final errorMessage = state.whenOrNull(errorState: (message) => message);
        final canBiometric = state.whenOrNull(
          entryState: (pin, canBiometric) => canBiometric,
        );
        final pin = state.whenOrNull(entryState: (pin, canBiometric) => pin);
        return Scaffold(
          body: IgnorePointer(
            ignoring: state is CheckPinLoadingState,
            child: SafeArea(
              child: Column(
                children: [
                  Spacer(flex: 1),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 24,
                    children: [
                      Text(context.localization.enter_code).h2(),
                      MPinWidget(
                        pinSize: 4,
                        controller: mPinController,
                        onCompleted: (pin) {},
                      ),
                      Text(
                        errorMessage ?? "",
                      ).bodyMd(color: context.appColors.colors.red),
                    ],
                  ),
                  Spacer(flex: 1),
                  PinKeyboard(
                    onClear: () {
                      mPinController.delete();
                      pinCodeBloc?.add(CheckPinCodeEvent.removeLast());
                    },
                    rightButton:
                        canBiometric == true && pin.orEmpty().isEmpty
                            ? PinKeyItem(
                              onTap: () {
                                authBiometric();
                              },
                              child: Assets.svgScanIdentification.toSvgImage(
                                tintColor:
                                    context.appColors.textIconColor.secondary,
                              ),
                            )
                            : null,
                    leftButton: PinKeyItem(
                      onTap: () {
                        showActionAlertDialog(
                          context,
                          title: context.localization.resetPinTitle,
                          message: context.localization.resetPinMessage,
                          firstActionText: context.localization.resetPinAction,
                          secondActionText: context.localization.cancel,
                          firstButtonTextColor: context.appColors.colors.red,
                          onFirstButtonClick: () {
                            pinCodeBloc?.add(CheckPinCodeEvent.reset());
                          },
                        );
                      },
                      child: Text(
                        context.localization.resetPinAction,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ),
                    onChange: (pin) async {
                      mPinController.addInput.call(pin);
                      await Future.delayed(Duration(milliseconds: 50));
                      pinCodeBloc?.add(
                        CheckPinCodeEvent.setPinCode(pinCode: pin),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
