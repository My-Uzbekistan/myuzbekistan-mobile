import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/cards/bloc/cards_bloc.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'widgets/delete_card_button.dart';

enum CardsPageType { list, select }

class CardsPage extends HookWidget {
  final CardsPageType type;

  CardsPage({super.key, required this.type});

  Completer<bool>? completer;

  void listenCompleter(BuildContext context) {
    completer = Completer<bool>();
    completer?.future.then((result) {
      InfoAlertDialog.show(
        context,
        message: context.localization.card_added_success_message,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardsBloc = useMemoized(() => context.read<CardsBloc>());

    final topPadding = kToolbarHeight + MediaQuery.of(context).padding.top + 16;

    final isEdit = useState(false);

    return BlocConsumer<CardsBloc, CardsState>(
      listener: (context, state) {
        isEdit.value = state is CardsDataState ? state.isEdit : false;
      },
      builder: (context, state) {
        final cards = state is CardsDataState ? state.cards : <CardItem>[];
        final selectedCardId =
            state is CardsDataState ? state.selectedCardId : null;

        return Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: GradientAppBar(
            title: context.localization.my_cards_title,
            actions: [
              if (state is CardsDataState)
                isEdit.value
                    ? RoundedButton(
                      assetsSvgIcon: Assets.svg.iconCheck.path,
                      hideShadow: true,
                      backgroundColor: context.appColors.brand,
                      iconColor: context.appColors.static.white,
                      onPressed: () {
                        cardsBloc.add(CardsEvent.edit());
                      },
                    )
                    : RoundedButton.edit(
                      onPressed: () {
                        cardsBloc.add(CardsEvent.edit());
                      },
                    ),
            ],
          ),
          body: ListView.separated(
            padding: EdgeInsets.all(16).copyWith(top: topPadding),
            separatorBuilder: (context, index) {
              return SizedBox(height: 12);
            },
            itemCount: cards.length,
            itemBuilder: (context, index) {
              final item = cards[index];
              return Row(
                spacing: 16,
                children: [
                  Expanded(
                    child: CardView(
                      cardNumber: item.cardTitle,
                      expiry: item.cardExpiry,
                      iconUrl: item.icon,
                      imageUrl: item.image,
                      statusMessage: item.statusMessage,
                      onTap: () {
                        if (type == CardsPageType.select) {
                          context.pop(item);
                        }
                      },
                    ),
                  ),
                  if (isEdit.value)
                    DeleteCardButton(
                      onPressed: () {
                        showActionAlertDialog(
                          context,
                          title: context.localization.alert_title_delete_card,
                          firstActionText: context.localization.action_delete,
                          secondActionText: context.localization.action_cancel,
                          firstButtonTextColor: context.appColors.colors.red,
                          message: context.localization.card_remove_notice,
                          onFirstButtonClick: () {
                            cardsBloc.add(CardsEvent.deleteCard(item.id));
                          },
                        );
                      },
                    )
                  else if (type == CardsPageType.select)
                    AppCheck(isChecked: selectedCardId == item.id),
                ],
              );
            },
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppActionButton(
                actionText: context.localization.addCard,
                sizeType: ActionButtonSizeType.large,
                onPressed: () {
                  listenCompleter(context);
                  context.finance.pushAddCardPage(extra: completer);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
