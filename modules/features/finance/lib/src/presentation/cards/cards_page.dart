import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/cards/bloc/cards_bloc.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/add_card/add_card_widget.dart';

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
    // final title =
    //     widget.type == CardsPageType.select
    //         ? context.localization.payment_method
    //         : context.localization.my_cards_title;

    final cardsBloc = useMemoized(() => context.read<CardsBloc>());

    final topPadding = kToolbarHeight + MediaQuery.of(context).padding.top + 16;

    final isEdit = useState(false);

    return Scaffold(
      body: BlocConsumer<CardsBloc, CardsState>(
        listener: (context, state) {
          isEdit.value = state is CardsDataState ? state.isEdit : false;
        },
        builder: (context, state) {
          final listSize = state is CardsDataState ? state.cards.length : 0;
          return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: GradientAppBar(
              title: context.localization.my_cards_title,
              actions: [
                Builder(
                  builder: (context) {
                    if ((state is CardsDataState)) {
                      return isEdit.value
                          ? RoundedButton(
                            assetsSvgIcon: Assets.svgIconCheck,
                            hideShadow: true,
                            backgroundColor: context.appColors.brand,
                            iconColor: Colors.white,

                            onPressed: () {
                              cardsBloc.add(CardsEvent.edit());
                            },
                          )
                          : RoundedButton.edit(
                            onPressed: () {
                              cardsBloc.add(CardsEvent.edit());
                            },
                          );
                    }
                    return SizedBox();
                  },
                ),
              ],
            ),
            body: ListView.separated(
              padding: EdgeInsets.all(16).copyWith(top: topPadding),
              separatorBuilder: (context, index) {
                return SizedBox(height: 12);
              },
              itemBuilder: (context, index) {
                final item = (state as CardsDataState).cards[index];
                return GestureDetector(
                  onTap: () {
                    if (type == CardsPageType.select) {
                      context.pop(item);
                    }
                  },
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: CellCardItemWithImage(
                          iconUrl: item.icon,
                          text: item.cardTitle,
                          trailing: item.cardExpiry,
                          statusMessage: item.statusMessage,
                          photoUrl: item.image,
                        ),
                      ),
                      if (isEdit.value)
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 200),
                          child:
                              isEdit.value
                                  ? GestureDetector(
                                    onTap: () {
                                      showActionAlertDialog(
                                        context,
                                        title:
                                            context
                                                .localization
                                                .alert_title_delete_card,
                                        firstActionText:
                                            context.localization.action_delete,
                                        secondActionText:
                                            context.localization.action_cancel,
                                        firstButtonTextColor:
                                            context.appColors.colors.red,
                                        message:
                                            context
                                                .localization
                                                .card_remove_notice,
                                        onFirstButtonClick: () {
                                          cardsBloc.add(
                                            CardsEvent.deleteCard(item.id),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      color: Colors.transparent,
                                      child: Assets.svgIconTrashCanLine
                                          .toSvgImage(
                                            fit: BoxFit.contain,
                                            colorFilter: ColorFilter.mode(
                                              context.appColors.colors.red,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                    ),
                                  )
                                  : cellTrailing(
                                    state.selectedCardId == item.id,
                                  ),
                        ),
                    ],
                  ),
                );
              },
              itemCount: listSize,
            ),
          );
        },
      ),
      bottomNavigationBar:
          isEdit.value
              ? null
              : SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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
  }

  Widget cellTrailing(isChecked) {
    Widget w =
        type == CardsPageType.select
            ? AppCheck(isChecked: isChecked)
            : SizedBox();

    return w;
  }
}
