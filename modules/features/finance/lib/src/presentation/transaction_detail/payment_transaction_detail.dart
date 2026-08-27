import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/transaction_detail/bloc/payment_check_bloc.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/sheet_nav_bar.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_detail_content.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_detail_loading.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentTransactionDetail extends StatelessWidget {
  const PaymentTransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.base,
      body: BlocConsumer<PaymentCheckBloc, PaymentCheckState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          if (state is PaymentCheckError) {
            showActionAlertDialog(
              context,
              message: state.message,
              barrierDismissible: false,
              onFirstButtonClick: () {
                context.pop();
              },
            );
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SheetGrabber(),
              SheetNavBar(
                title: context.localization.payment_details_title,
                onClose: () => context.pop(),
              ),
              Flexible(
                child: state.when(
                  loading: () => const TransactionDetailLoading(),
                  loaded: (transaction) =>
                      TransactionDetailContent(transaction: transaction),
                  error: (message) => const SizedBox(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
