import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:finance/src/presentation/payment/bloc/payment_bloc.dart';
import 'package:finance/src/presentation/payment/payment_amount_suggestions.dart';
import 'package:finance/src/presentation/payment/widgets/payment_amount_card.dart';
import 'package:finance/src/presentation/payment/widgets/payment_card_picker_sheet.dart';
import 'package:finance/src/presentation/payment/widgets/payment_loading.dart';
import 'package:finance/src/presentation/payment/widgets/payment_merchant_card.dart';
import 'package:finance/src/presentation/payment/widgets/payment_method_card.dart';
import 'package:finance/src/presentation/payment_success/payment_success_page.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class PaymentPage extends HookWidget {
  final String id;
  final String? amount;
  final String? orderId;
  final Completer<bool>? completer;

  const PaymentPage({
    super.key,
    required this.id,
    this.amount,
    this.orderId,
    this.completer,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(() => context.read<PaymentBloc>());
    final controller = useTextEditingController();
    final focusNode = useFocusNode();

    useEffect(() {
      bloc.add(PaymentEvent.loadMerchantById(merchantId: id, orderId: orderId));

      final initialAmount = amount;
      if (initialAmount != null) {
        controller.value = _formattedAmount(initialAmount);
      }

      return () {
        if (completer != null && !completer!.isCompleted) {
          completer!.complete(false);
        }
      };
    }, const []);

    useEffect(() {
      void onAmountChanged() {
        bloc.add(PaymentEvent.setAmount(amount: controller.text));
      }

      controller.addListener(onAmountChanged);
      return () => controller.removeListener(onAmountChanged);
    }, [controller]);

    useOnAppLifecycleStateChange((previous, current) {
      if (current == AppLifecycleState.resumed) {
        bloc.add(PaymentEvent.checkPayDetail());
      }
    });

    final contentPadding = EdgeInsets.only(
      top: kToolbarHeight + MediaQuery.of(context).padding.top + 16,
    );
    final isKeyboardOpen = MediaQuery.viewInsetsOf(context).bottom > 0;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(title: context.localization.payment_title),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          if (state is PaymentErrorState) {
            _navigate(context, PaymentNavState.error(message: state.message));
          } else if (state is PaymentDataState && state.navState != null) {
            _navigate(context, state.navState!);
          }
        },
        builder: (context, state) {
          if (state is! PaymentDataState) {
            return state is PaymentErrorState
                ? const SizedBox()
                : PaymentLoading(padding: contentPadding);
          }

          return IgnorePointer(
            ignoring: state.isPayLoading,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => FocusScope.of(context).unfocus(),
              child: ListView(
                padding: contentPadding.copyWith(bottom: 16),
                children: [
                  PaymentMerchantCard(merchant: state.merchant),
                  const SizedBox(height: 8),
                  PaymentAmountCard(
                    controller: controller,
                    focusNode: focusNode,
                    suggestions: paymentAmountSuggestions,
                    onSuggestionTap: (suggestion) {
                      controller.value = _formattedAmount("$suggestion");
                    },
                  ),
                  const SizedBox(height: 8),
                  PaymentMethodCard(
                    selectedCard: state.selectedCard,
                    onChangeCard: () => _changeCard(context, bloc, state),
                    onAddCard: () => context.finance.pushAddCardPage(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<PaymentBloc, PaymentState>(
        builder: (context, state) {
          if (state is! PaymentDataState) return const SizedBox.shrink();

          return SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 8,
                bottom: isKeyboardOpen ? 16 : 8,
              ),
              child: AppActionButton(
                actionText: context.localization.pay,
                disable: !state.hasDataSucceed,
                isLoading: state.isPayLoading,
                sizeType: ActionButtonSizeType.large,
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  bloc.add(PaymentEvent.pay());
                },
              ),
            ),
          );
        },
      ),
    );
  }

  TextEditingValue _formattedAmount(String value) {
    final formatted = AmountWithSuffixFormatter(suffix: "").formatEditUpdate(
      const TextEditingValue(),
      TextEditingValue(text: value),
    );
    return formatted.copyWith(
      selection: TextSelection.collapsed(offset: formatted.text.length),
    );
  }

  Future<void> _changeCard(
    BuildContext context,
    PaymentBloc bloc,
    PaymentDataState state,
  ) async {
    FocusScope.of(context).unfocus();
    final card = await showPaymentCardPicker(
      context,
      cards: state.cards,
      selectedCardId: state.selectedCard?.id,
    );
    if (card != null) {
      bloc.add(PaymentEvent.selectedCard(card));
    }
  }

  void _navigate(BuildContext context, PaymentNavState navState) {
    switch (navState) {
      case PaymentNavStateSuccess(
        :final merchant,
        :final amount,
        :final paymentId,
      ):
        completer?.complete(true);
        context.pushPaymentSuccessPage(
          PaymentSuccessPageParams(
            merchant: merchant,
            amount: amount,
            paymentId: paymentId,
          ),
        );
        break;
      case PaymentNavStateConfirmWithWeb(:final confirmUrl):
        LauncherUtils.urlLauncher(confirmUrl);
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
}
