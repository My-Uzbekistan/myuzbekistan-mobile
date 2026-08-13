import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/add_cards/bloc/add_card_bloc.dart';
import 'package:finance/src/presentation/add_cards/widget/card_image_selector.dart';
import 'package:finance/src/presentation/add_cards/widget/external_card_page_widget.dart';
import 'package:finance/src/presentation/add_cards/widget/own_card_page_widget.dart';
import 'package:finance/src/utils/card_input_formatter.dart';
import 'package:finance/src/utils/pan_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class AddCardsPage extends HookWidget {
  const AddCardsPage({super.key});

  static const _cardHorizontalPadding = 32.0;

  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(() => context.read<AddCardBloc>());
    final cardNumberController = useTextEditingController();

    useEffect(() {
      void listener() {
        bloc.add(
          AddCardEvent.setCardNumber(cardNumber: cardNumberController.text),
        );
      }

      cardNumberController.addListener(listener);
      return () => cardNumberController.removeListener(listener);
    }, const []);

    final topPadding = kToolbarHeight + MediaQuery.of(context).padding.top + 16;

    return BlocConsumer<AddCardBloc, AddCardState>(
      listenWhen: (previous, current) => previous.navState != current.navState,
      listener: (context, state) {
        if (state.navState != null) {
          navigation(context, state.navState!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: true,
          appBar: GradientAppBar(
            title: context.localization.addCard,
            centerTitle: true,
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppActionButton(
                actionText: context.localization.addCard,
                disable: !state.hasDataSuccess(),
                isLoading: state.isLoading,
                sizeType: ActionButtonSizeType.large,
                disableContainerColor: context.appColors.nonOpaque.green,
                onPressed: () {
                  bloc.add(AddCardEvent.add());
                },
              ),
            ),
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.only(top: topPadding, bottom: 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: _cardHorizontalPadding,
                    ),
                    child: CardView(
                      cardNumber: state.pan.maskedPan,
                      expiry: state.cardExpire,
                      iconUrl: state.cardBrand,
                      imageUrl: state.selectedImage,
                      showDefaultIcon: false,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CardImageSelector(
                    images: state.images,
                    selectedImage: state.selectedImage,
                    onSelected: (image) {
                      bloc.add(AddCardEvent.selectColor(image));
                    },
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 16,
                      children: [
                        AppInputField(
                          controller: cardNumberController,
                          label: context.localization.card_number_label,
                          hintText: context.localization.card_number_hint,
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
                            updateCardData: (expire, cvv) {
                              bloc.add(
                                AddCardEvent.setExternalParams(
                                  expire: expire,
                                  cvv: cvv,
                                ),
                              );
                            },
                          ),
                        if (state.params is AddCardOwnParams)
                          OwnCardPageWidget(
                            updateCardData: (expire) {
                              bloc.add(
                                AddCardEvent.setOwnParams(expire: expire),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ],
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
