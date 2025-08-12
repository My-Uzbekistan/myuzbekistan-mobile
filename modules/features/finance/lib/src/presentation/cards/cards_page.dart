import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/cards/bloc/cards_bloc.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/add_card/add_card_widget.dart';

enum CardsPageType { list, select }

class CardsPage extends StatefulWidget {
  final CardsPageType type;

  const CardsPage({super.key, required this.type});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  Completer<bool>? completer;

  void listenCompleter() {
    completer = Completer<bool>();
    completer?.future.then((result) {
      InfoAlertDialog.show(context, message: "Carta muvaffaqiyatli qoshildi");
    });
  }

  CardsBloc? cardsBloc;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    cardsBloc = context.read();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title =
        widget.type == CardsPageType.select
            ? context.localization.payment_method
            : context.localization.my_cards_title;

    return Scaffold(
      body: BlocBuilder<CardsBloc, CardsState>(
        builder: (context, state) {
          final listSize = state is CardsDataState ? state.cards.length : 0;
          final isEdit = state is CardsDataState ? state.isEdit : false;
          return SimpleCollapsedContainer(
            title: isEdit ? context.localization.editing : title,
            sliverContent: SliverPadding(
              padding: EdgeInsets.all(16).copyWith(top: 0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index == listSize) {
                    return Builder(
                      builder: (context) {
                        return AnimatedSwitcher(
                          duration: Duration(milliseconds: 200),
                          switchInCurve: Curves.easeInToLinear,
                          switchOutCurve: Curves.easeOut,
                          child:
                              isEdit
                                  ? SizedBox.shrink(key: ValueKey("empty"))
                                  : AddCardWidget(
                                    key: ValueKey("AddCard"),
                                    onTap: () {
                                      listenCompleter();
                                      context.finance.pushAddCardPage(
                                        extra: completer,
                                      );
                                    },
                                  ),
                        );
                      },
                    );
                  }
                  final item = (state as CardsDataState).cards[index];
                  return GestureDetector(
                    onTap: () {
                      if (widget.type == CardsPageType.select) {
                        context.pop(item);
                      }
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: CellCardItem(
                            iconUrl: item.icon,
                            text: item.cardTitle,
                            statusMessage: item.statusMessage,
                          ),
                        ),
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 200),
                          child:
                              isEdit
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
                                        onFirstButtonClick: () {
                                          cardsBloc?.add(
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
                                            colorFilter: ColorFilter.mode(
                                              context
                                                  .appColors
                                                  .textIconColor
                                                  .primary,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                    ),
                                  )
                                  : cellTrailing(state.selectedCardId == item.id),
                        ),
                      ],
                    ),
                  );
                }, childCount: listSize + 1),
              ),
            ),
            trailing: Builder(
              builder: (context) {
                if ((state is CardsDataState)) {
                  final title =
                      isEdit
                          ? context.coreLocalization.action_done
                          : context.coreLocalization.action_edit;
                  return GestureDetector(
                    onTap: () {
                      cardsBloc?.add(CardsEvent.edit());
                    },
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      switchInCurve: Curves.easeInToLinear,
                      child:
                          isEdit
                              ? Text(title, key: ValueKey(title)).labelLg(
                                color: context.appColors.textIconColor.primary,
                              )
                              : Text(title, key: ValueKey(title)).labelLg(
                                color: context.appColors.textIconColor.primary,
                              ),
                    ),
                  );
                }
                return SizedBox();
              },
            ),
          );
        },
      ),
    );
  }

  Widget cellTrailing(isChecked) {
    Widget w =
        widget.type == CardsPageType.select
            ? AppCheck(isChecked: isChecked,)
            : SizedBox();

    return w;
  }
}
