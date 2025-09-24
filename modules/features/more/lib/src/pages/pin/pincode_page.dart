import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/di/injection.dart';
import 'package:more/src/pages/pin/pin_code_bloc/pincode_bloc.dart';
import 'package:more/src/pages/pin/widgets/my_pin.dart';
import 'package:more/src/pages/pin/widgets/pin_keyboard.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class CreatePinCodePage extends StatefulWidget {
  final bool changePin;

  const CreatePinCodePage({super.key, this.changePin = false});

  @override
  State<CreatePinCodePage> createState() => _CreatePinCodePageState();
}

class _CreatePinCodePageState extends State<CreatePinCodePage> {
  final mPinController = MPinController();

  String? title;
  PinCodeBloc? pinCodeBloc;

  @override
  void initState() {
    pinCodeBloc = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PinCodeBloc, PinCodeState>(
      listener: (context, state) {
        state.when(
          entryState: (pin) {},
          confirmState: (pin, confirmPin, hasError) {
            if (hasError) {
              mPinController.notifyWrongInput();
              pinCodeBloc?.add(PinCodeEvent.clearPin());
            } else if (confirmPin.isEmpty) {
              mPinController.clear();
            }
          },
          successState: () {
            InfoAlertDialog.show(
              context,
              message: widget.changePin?context.localization.pinUpdated:context.localization.pincode_created,
              seconds: 1,
              type: InfoAlertType.success,
              onDismiss: () {
                context.pop();
              },
            );
          },
          removedState: () {
            InfoAlertDialog.show(
              context,
              message: context.localization.pincode_deleted,
              seconds: 1,
              type: InfoAlertType.warning,
              onDismiss: () {
                context.pop();
              },
            );
          },
          loadingState: () {
            mPinController.loading();
          },
          errorState: (message) {
            InfoAlertDialog.show(
              context,
              message: message,
              type: InfoAlertType.error,
            );

            mPinController.clear();
            pinCodeBloc?.add(PinCodeEvent.reset());
          },
        );
      },
      builder: (context, state) {
        title =
            state is PinEntryState
                ? (widget.changePin
                    ? context.localization.enter_new_code
                    : context.localization.pin_code_create_title)
                : context.localization.pin_code_repeat;
        String errorMessage =
            state is PinConfirmState && state.hasError
                ? context.localization.pinMismatch
                : "";
        return Scaffold(
          appBar: GradientAppBar(),
          body: IgnorePointer(
            ignoring: state is PinLoadingState,
            child: SafeArea(
              child: Column(
                children: [
                  Spacer(flex: 1),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 24,
                    children: [
                      Text(title.orEmpty()).h2(),
                      MPinWidget(
                        pinSize: 4,
                        controller: mPinController,
                        onCompleted: (pin) {},
                      ),
                      Text(
                        errorMessage,
                      ).bodyMd(color: context.appColors.colors.red),
                    ],
                  ),
                  Spacer(flex: 1),
                  PinKeyboard(
                    onClear: () {
                      mPinController.delete();
                      pinCodeBloc?.add(PinCodeEvent.removeLast());
                    },
                    leftButton:
                        state is PinEntryState && widget.changePin
                            ? PinKeyItem(
                              onTap: () {
                                showActionAlertDialog(
                                  context,
                                  title: context.localization.delete_pin_title,
                                  message:
                                      context.localization.delete_pin_message,
                                  firstActionText:
                                      context.localization.delete_code,
                                  secondActionText: context.localization.cancel,
                                  firstButtonTextColor:
                                      context.appColors.colors.red,
                                  onFirstButtonClick: () {
                                    pinCodeBloc?.add(PinCodeEvent.removePin());
                                  },
                                );
                              },
                              child: Text(
                                context.localization.delete_code,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ).bodySm(
                                color:
                                    context.appColors.textIconColor.secondary,
                              ),
                            )
                            : null,
                    onChange: (pin) async {
                      mPinController.addInput.call(pin);
                      await Future.delayed(Duration(milliseconds: 50));
                      pinCodeBloc?.add(PinCodeEvent.setPinCode(pin: pin));
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

// class RowToStackDemo extends StatefulWidget {
//   const RowToStackDemo({super.key});
//
//   @override
//   State<RowToStackDemo> createState() => _RowToStackDemoState();
// }
//
// class _RowToStackDemoState extends State<RowToStackDemo> {
//   bool _collapsed = false;
//
//   void _toggle() {
//     setState(() {
//       _collapsed = !_collapsed;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final items = ["A", "B", "C"];
//
//     return Scaffold(
//       body: Center(
//         child: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 600),
//           transitionBuilder: (child, animation) {
//             return FadeTransition(
//               opacity: animation,
//               child: ScaleTransition(
//                 scale: CurvedAnimation(
//                   parent: animation,
//                   curve: Curves.easeInOutBack,
//                 ),
//                 child: child,
//               ),
//             );
//           },
//           child:
//               !_collapsed
//                   ? Row(
//                     key: const ValueKey("row"),
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       for (var item in items)
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: Colors.blue,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Text(
//                               item,
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                     ],
//                   )
//                   : Stack(
//                     key: const ValueKey("stack"),
//                     alignment: Alignment.center,
//                     children: [
//                       for (var item in items)
//                         Container(
//                           padding: const EdgeInsets.all(16),
//                           margin: const EdgeInsets.all(2),
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Text(
//                             item,
//                             style: const TextStyle(color: Colors.white),
//                           ),
//                         ),
//                     ],
//                   ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         child: const Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }

// class RowToCenterDemo extends StatefulWidget {
//   const RowToCenterDemo({super.key});
//
//   @override
//   State<RowToCenterDemo> createState() => _RowToCenterDemoState();
// }
//
// class _RowToCenterDemoState extends State<RowToCenterDemo> {
//   bool _centered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final items = ["A", "B", "C","E"];
//
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           height: 100,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               for (int i = 0; i < items.length; i++)
//                 AnimatedAlign(
//                   duration: const Duration(milliseconds: 600),
//                   curve: Curves.easeInOutBack,
//                   alignment: _centered
//                       ? Alignment.center
//                       : Alignment(-1.0 + i * 1.0, 0), // Row holati
//                   child: Container(
//                     margin: const EdgeInsets.all(8),
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Text(items[i],
//                         style: const TextStyle(color: Colors.white)),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() => _centered = !_centered),
//         child: const Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }
