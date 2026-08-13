import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/pin/check_pin/bloc/check_pin_bloc.dart';
import 'package:more/src/pages/pin/widgets/my_pin.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/pin_keyboard.dart';

class CheckPinCodePage extends HookWidget {
  const CheckPinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final pinCodeBloc = context.read<CheckPinCodeBloc>();
    final mPinController = useMemoized(MPinController.new);
    final enteredPin = useState("");

    void authBiometric() {
      pinCodeBloc.add(
        CheckPinCodeEvent.openBiometricAuth(
          localizedReason: localization.authPrompt,
        ),
      );
    }

    useEffect(() {
      final timer = Timer(const Duration(milliseconds: 200), authBiometric);
      return timer.cancel;
    }, const []);

    return BlocConsumer<CheckPinCodeBloc, CheckPinCodeState>(
      listener: (context, state) {
        state.when(
          entryState: (pin, canBiometric) {},
          successState: () {
            context.travel.goMain();
            pinCodeBloc.add(CheckPinCodeEvent.clear());
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
        final showBiometricKey =
            pinCodeBloc.canBiometric && enteredPin.value.isEmpty;

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
                      Text(localization.enter_code).h2(),
                      MPinWidget(
                        pinSize: 4,
                        controller: mPinController,
                        onChange: (pin) => enteredPin.value = pin,
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
                      pinCodeBloc.add(CheckPinCodeEvent.removeLast());
                    },
                    rightButton: showBiometricKey
                        ? PinKeyItem(
                            onTap: authBiometric,
                            child: Assets.svg.scanIdentification.path
                                .toSvgImage(
                                  tintColor:
                                      context.appColors.textIconColor.secondary,
                                ),
                          )
                        : null,
                    leftButton: PinKeyItem(
                      onTap: () {
                        showActionAlertDialog(
                          context,
                          title: localization.resetPinTitle,
                          message: localization.resetPinMessage,
                          firstActionText: localization.resetPinAction,
                          secondActionText: localization.cancel,
                          firstButtonTextColor: context.appColors.colors.red,
                          onFirstButtonClick: () {
                            pinCodeBloc.add(CheckPinCodeEvent.reset());
                          },
                        );
                      },
                      child: Text(
                        localization.resetPinAction,
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
                      pinCodeBloc.add(
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
