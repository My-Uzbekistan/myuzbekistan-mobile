import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:finance/src/presentation/payment/bloc/payment_bloc.dart';
import 'package:finance/src/presentation/payment_success/payment_success_page.dart';
import 'package:finance/src/presentation/widgets/add_card/add_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentPage extends StatefulWidget {
  final String id;

  const PaymentPage({super.key, required this.id});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentBloc? bloc;

  final FocusNode focusNode = FocusNode();

  final TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = context.read();

    bloc?.add(PaymentEvent.loadMerchantById(merchantId: widget.id));
    _amountController.addListener(listener);
  }

  void listener() {
    bloc?.add(PaymentEvent.setAmount(amount: _amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          if (state is PaymentDataState && state.navState != null) {
            navigation(context, state.navState!);
          }
        },
        builder: (context, state) {
          if (state is PaymentDataState) {
            return IgnorePointer(
              ignoring: state.isPayLoading,
              child: Scaffold(
                body: KeyboardActions(
                  enable: true,

                  config: KeyboardActionsConfig(
                    keyboardBarColor:
                        context.brightness == Brightness.dark
                            ? Color(0xFF2C2C2E)
                            : Color(0xFFF1F3F4),
                    keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
                    nextFocus: false,
                    defaultDoneWidget: Text(
                      "Done",
                    ).bodyMd(color: context.appColors.brand),
                    actions: [
                      KeyboardActionsItem(
                        focusNode: focusNode,
                        displayDoneButton: true,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        children: [
                          Column(
                            spacing: 16,
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: RepaintBoundary(
                                    child: ExtendedImage.network(
                                      state.merchant.logo ?? "",
                                      cache: true,
                                      cacheMaxAge: Duration(days: 6),
                                      fit: BoxFit.fill,
                                      colorBlendMode: BlendMode.hardLight,
                                      color: context.appColors.fill.quaternary,
                                      loadStateChanged: (state) {
                                        switch (state.extendedImageLoadState) {
                                          case LoadState.completed:
                                            return AnimatedOpacity(
                                              opacity: 1.0,
                                              duration: Duration(
                                                milliseconds: 200,
                                              ),
                                              child: state.completedWidget,
                                            );

                                          default:
                                            return Container(
                                              color:
                                                  context
                                                      .appColors
                                                      .fill
                                                      .quaternary,
                                            );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 2,
                                children: [
                                  Text(state.merchant.name.orEmpty()).h3(),
                                  Text(
                                    state.merchant.description.orEmpty(),
                                  ).bodyMd(
                                    color:
                                        context
                                            .appColors
                                            .textIconColor
                                            .secondary,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          AppInputField(
                            controller: _amountController,
                            label: context.localization.paymentAmount,
                            keyboardType: TextInputType.number,
                            focusNode: focusNode,
                            hintText: context.localization.currency("0"),

                            formatters: [
                              AmountWithSuffixFormatter(
                                suffix: context.localization.currency(""),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                bottomNavigationBar: SafeArea(
                  bottom: true,
                  top: false,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      spacing: 24,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final result = await context
                                .pushSelectCardsPage<CardItem>(
                                  state.selectedCard?.id,
                                );
                            if (result != null) {
                              bloc?.add(PaymentEvent.selectedCard(result));
                            }
                          },
                          child:
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      context.appColors.background.elevation1,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.localization.payment_method,
                                    ).h3(),
                                    Row(
                                      children: [
                                        Expanded(
                                          child:
                                              state.selectedCard != null
                                                  ? CellCardItem(
                                                    iconUrl:
                                                        state
                                                            .selectedCard!
                                                            .icon,
                                                    text:
                                                        state
                                                            .selectedCard!
                                                            .cardTitle,
                                                  )
                                                  : AddCardWidget(),
                                        ),
                                        Assets.svgIconArrowRight.toSvgImage(
                                          colorFilter: ColorFilter.mode(
                                            context
                                                .appColors
                                                .textIconColor
                                                .secondary,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ).shadow(context),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: AppActionButton(
                            actionText: context.localization.pay,
                            disable: !state.hasDataSucceed,
                            isLoading: state.isPayLoading,
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              bloc?.add(PaymentEvent.pay());
                            },
                            sizeType: ActionButtonSizeType.large,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return Container();
        },
      ),
    );
  }

  void navigation(BuildContext context, PaymentNavState navState) {
    switch (navState) {
      case PaymentNavStateSuccess(:final merchant, :final amount,:final paymentId):
        context.pushPaymentSuccessPage(
          PaymentSuccessPageParams(merchant: merchant, amount: amount,paymentId:paymentId ),
        );
        break;
      case PaymentNavStateConfirmWithWeb():
        // Webview yoki external browser ochiladi
        break;
      case PaymentNavStateExaception():
        InfoAlertDialog.show(
          context,
          message: navState.message,
          type: InfoAlertType.error,
        );
        break;
    }
  }

  @override
  void dispose() {
    _amountController.removeListener(listener);
    _amountController.dispose();
    focusNode.dispose();
    super.dispose();
  }
}
