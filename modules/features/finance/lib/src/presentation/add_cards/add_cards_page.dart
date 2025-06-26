import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/add_cards/bloc/add_card_bloc.dart';
import 'package:finance/src/utils/expire_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import '../../utils/card_input_formatter.dart';

class AddCardsPage extends StatefulWidget {
  const AddCardsPage({super.key});

  @override
  State<AddCardsPage> createState() => _AddCardsPageState();
}

class _AddCardsPageState extends State<AddCardsPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardExpireController = TextEditingController();
  final TextEditingController _cardCvvController = TextEditingController();
  final TextEditingController _cardAliasController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _cardAliasController.addListener(listener);
    _cardCvvController.addListener(listener);
    _cardExpireController.addListener(listener);
    _cardNumberController.addListener(listener);
    bloc = context.read();
  }

  @override
  void dispose() {
    _cardCvvController.removeListener(listener);
    _cardExpireController.removeListener(listener);
    _cardNumberController.removeListener(listener);
    _cardAliasController.removeListener(listener);

    _cardCvvController.dispose();
    _cardExpireController.dispose();
    _cardNumberController.dispose();
    _cardAliasController.dispose();
    super.dispose();
  }

  AddCardBloc? bloc;

  void listener() {
    if (!mounted) return;

    bloc?.add(
      AddCardEvent.setData(
        cardNumber: _cardNumberController.text,
        expire: _cardExpireController.text,
        cvv: _cardCvvController.text,
        name: _cardAliasController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
    //   CupertinoTheme(
    //
    //   data: CupertinoThemeData(),
    //   child: CustomScrollView(
    //     slivers: [
    //       CupertinoSliverNavigationBar(
    //         largeTitle: Text("Add cards"),
    //       )
    //     ],
    //   ),
    // );
    BlocBuilder<AddCardBloc, AddCardState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(title: Text("Добавить карту")),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppActionButton(
                actionText: "Добавить",
                sizeType: ActionButtonSizeType.large,
              ),
            ),
          ),

          body: IgnorePointer(
            ignoring: false,
            child: SafeArea(
              bottom: true,
              child: LayoutBuilder(
                builder:
                    (context, constraints) => SingleChildScrollView(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: MediaQuery.of(context).viewInsets.bottom + 8,
                      ),
                      child: Column(
                        spacing: 24,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Column(
                              spacing: 16,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppInputField(
                                  controller: _cardNumberController,
                                  label: "Номер карты",
                                  hintText: "0000 0000 0000 0000",
                                  keyboardType: TextInputType.number,
                                  formatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9 ]')),
                                    CardInputFormatter()
                                  ],
                                ),
                                Row(
                                  spacing: 16,
                                  children: [
                                    Flexible(
                                      child: AppInputField(
                                        controller: _cardExpireController,
                                        label: "Срок действия",
                                        hintText: "00/00",
                                        keyboardType: TextInputType.number,
                                        formatters: [
                                          FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                                          ExpiryDateInputFormatter()
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: AppInputField(
                                        controller: _cardCvvController,
                                        label: "CVV / CVC",
                                        hintText: "000",
                                      keyboardType: TextInputType.number,
                                        formatters: [
                                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                AppInputField(
                                  controller: _cardAliasController,
                                  label: "Название карты",
                                  hintText: "Название карты",
                                ),
                              ],
                            ),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 16,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Text("Цвет карты").labelLg(),
                              ),

                              SizedBox(
                                height: 40,
                                child: ListView.separated(
                                  itemCount: 10,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 12);
                                  },
                                  itemBuilder: (context, index) {
                                    return CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.red,

                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Assets.svgIconCheck.toSvgImage(
                                          fit: BoxFit.contain,
                                          colorFilter: ColorFilter.mode(
                                            Colors.white,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
