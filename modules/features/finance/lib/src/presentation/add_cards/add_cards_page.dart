import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/add_cards/bloc/add_card_bloc.dart';
import 'package:finance/src/presentation/add_cards/widget/external_card_page_widget.dart';
import 'package:finance/src/presentation/add_cards/widget/own_card_page_widget.dart';
import 'package:finance/src/utils/expire_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../../utils/card_input_formatter.dart';

class AddCardsPage extends StatefulWidget {
  const AddCardsPage({super.key});

  @override
  State<AddCardsPage> createState() => _AddCardsPageState();
}

class _AddCardsPageState extends State<AddCardsPage> {
  final TextEditingController _cardNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _cardNumberController.addListener(cardNumberListener);
    bloc = context.read();
  }

  @override
  void dispose() {
    _cardNumberController.removeListener(cardNumberListener);
    _cardNumberController.dispose();

    super.dispose();
  }

  AddCardBloc? bloc;

  void cardNumberListener() {
    if (!mounted) return;
    bloc?.add(
      AddCardEvent.setCardNumber(cardNumber: _cardNumberController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCardBloc, AddCardState>(
      listenWhen: (previous, current) => previous.navState != current.navState,
      listener: (context, state) {
        if (state.navState != null) {
          navigation(context, state.navState!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,

          appBar: AppBar(title: Text(context.localization.addCard)),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppActionButton(
                actionText:context.coreLocalization.action_add,
                disable: !state.hasDataSuccess(),
                isLoading: state.isLoading,
                sizeType: ActionButtonSizeType.large,
                onPressed: () {
                  bloc?.add(AddCardEvent.add());
                },
              ),
            ),
          ),

          body: IgnorePointer(
            ignoring: false,
            child: GestureDetector(
              onTap: () {
                if (FocusScope.of(context).hasFocus) {
                  FocusScope.of(context).unfocus(); // back ni yutib yuboramiz
                }
              },

              child: SizedBox(
                height: double.maxFinite,
                child: SafeArea(
                  bottom: true,
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,

                    child: LayoutBuilder(
                      builder:
                          (context, constraints) => SingleChildScrollView(
                            padding: EdgeInsets.only(
                              top: 16,
                              bottom:
                                  MediaQuery.of(context).viewInsets.bottom + 8,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Column(
                                spacing: 16,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppInputField(
                                    controller: _cardNumberController,
                                    label: context.localization.card_number_label,
                                    hintText: "0000 0000 0000 0000",
                                    keyboardType: TextInputType.number,
                                    formatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9 ]'),
                                      ),
                                      CardInputFormatter(),
                                    ],
                                  ),
                                  if (state.params is AddCardExternalParams)
                                    ExternalCardPageWidget(
                                      updateCardData: (
                                        expire,
                                        cvv,
                                        holderName,
                                      ) {
                                        bloc?.add(
                                          AddCardEvent.setExternalParams(
                                            expire: expire,
                                            cvv: cvv,
                                            holderName: holderName,
                                          ),
                                        );
                                      },
                                    ),
                                  if (state.params is AddCardOwnParams)
                                    OwnCardPageWidget(
                                      updateCardData: (expire, phone) {
                                        bloc?.add(
                                          AddCardEvent.setOwnParams(
                                            expire: expire,
                                            phoneNumber: phone,
                                          ),
                                        );
                                      },
                                    ),
                                ],
                              ),
                            ),
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void navigation(BuildContext context, AddCardNavState navState) {
    switch (navState) {
      case AddCardVerifyNavState():
        final extra = GoRouterState.of(context).extra;
        context.finance.pushAddCardVerification(
          cardId: navState.cardId,
          extra: extra,
        );
        break;

      case AddCardErrorNavState():
        InfoAlertDialog.show(
          context,
          message: navState.message,
          type: InfoAlertType.error,
        );
        break;

      case AddCardCompletedNavState():
        (GoRouterState.of(context).extra as Completer<bool>?)?.complete(true);
        context.pop();
        break;
    }
  }
}
