import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:finance/src/presentation/payment/bloc/payment_bloc.dart';
import 'package:finance/src/presentation/payment_success/payment_success_page.dart';
import 'package:finance/src/presentation/widgets/add_card/add_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class PaymentPage extends StatefulWidget {
  final String id;
  final String? amount;
  final Completer<bool>? completer;

  const PaymentPage({super.key, required this.id, this.amount, this.completer});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> with WidgetsBindingObserver {
  PaymentBloc? bloc;

  final FocusNode focusNode = FocusNode();

  final TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = context.read();
    WidgetsBinding.instance.addObserver(this);

    bloc?.add(PaymentEvent.loadMerchantById(merchantId: widget.id));
    _amountController.addListener(listener);
    if (widget.amount != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final formatted = AmountWithSuffixFormatter(
          suffix: context.localization.currency(""),
        ).formatEditUpdate(
          const TextEditingValue(),
          TextEditingValue(text: widget.amount!),
        );

        _amountController.text = formatted.text;
      });
    }
  }

  void listener() {
    debugPrint("listener  ${_amountController.text}");
    bloc?.add(PaymentEvent.setAmount(amount: _amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = kToolbarHeight + MediaQuery.of(context).padding.top + 16;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          if (state is PaymentErrorState) {
            navigation(context, PaymentNavState.error(message: state.message));
          } else if (state is PaymentDataState && state.navState != null) {
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: topPadding),

                      child: Column(
                        spacing: 24,
                        children: [
                          Row(
                            spacing: 16,
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
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
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 4,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      spacing: 16,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 6),
                              child: Row(
                                children: [
                                  Expanded(
                                    child:
                                        Text(
                                          context
                                              .localization
                                              .payment_method_title,
                                        ).h3(),
                                  ),
                                  ColorFiltered(
                                    colorFilter: ColorFilter.mode(
                                      context.appColors.brand,
                                      BlendMode.srcIn,
                                    ),
                                    child: GestureDetector(
                                      onTap: () async {
                                        final result = await context
                                            .pushSelectCardsPage(null);
                                        if (result != null) {
                                          bloc?.add(
                                            PaymentEvent.selectedCard(result),
                                          );
                                        }
                                      },
                                      behavior: HitTestBehavior.translucent,
                                      child: Row(
                                        spacing: 4,
                                        children: [
                                          Text(
                                            context.localization.all_cards,
                                          ).bodyLg(),
                                          Assets.svgIconArrowRight.toSvgImage(
                                            width: 20,
                                            height: 20,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            state.selectedCard != null
                                ? CellCardItemWithImage(
                                  iconUrl: state.selectedCard!.icon,
                                  text: state.selectedCard!.cardTitle,
                                  trailing: state.selectedCard!.expiry,
                                  photoUrl: state.selectedCard!.image,
                                  showDefaultImage: false,
                                )
                                : AddCardWidget(
                                  onTap: () {
                                    context.finance.pushAddCardPage();
                                  },
                                ),
                          ],
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

          if (state is PaymentErrorState) {
            return SizedBox();
          }

          return _Loading();
        },
      ),
    );
  }

  void navigation(BuildContext context, PaymentNavState navState) {
    switch (navState) {
      case PaymentNavStateSuccess(
        :final merchant,
        :final amount,
        :final paymentId,
      ):
        widget.completer?.complete(true);
      debugPrint("navigationResult ${paymentId}");
        context.pushPaymentSuccessPage(
          PaymentSuccessPageParams(
            merchant: merchant,
            amount: amount,
            paymentId: paymentId,
          ),
        );
        break;
      case PaymentNavStateConfirmWithWeb(:final confirmUrl, :final paymentId):
        {
          LauncherUtils.urlLauncher(confirmUrl);
        }
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
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      bloc?.add(PaymentEvent.checkPayDetail());
    }
  }

  @override
  void dispose() {
    _amountController.removeListener(listener);
    _amountController.dispose();
    focusNode.dispose();
    if (widget.completer != null && !widget.completer!.isCompleted) {
      widget.completer?.complete(false);
    }
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }
}

class _Loading extends StatelessWidget {
  const _Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Shimmer.fromDefault(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ).copyWith(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16,
                children: [
                  ShimmerDefaultContainer(height: 80, width: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      ShimmerDefaultContainer(
                        height: 20,
                        width: 100,
                        radius: 8,
                      ),
                      ShimmerDefaultContainer(height: 16, width: 80, radius: 8),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              ShimmerDefaultContainer(height: 56, radius: 16),
              Expanded(child: SizedBox()),
              ShimmerDefaultContainer(height: 110, radius: 24),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: ShimmerDefaultContainer(height: 56, radius: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
