import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/payment_status_badge.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/payment_status_label.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_detail_actions.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_info_card.dart';
import 'package:finance/src/presentation/transaction_detail/widgets/transaction_merchant_card.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class TransactionDetailContent extends StatelessWidget {
  final TransactionItem transaction;

  const TransactionDetailContent({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final amount = context.localization.currency(
      transaction.amount.amountFormatted(),
    );
    final action = transaction.action;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                PaymentStatusBadge(status: transaction.status),
                const SizedBox(height: 8),
                PaymentStatusLabel(
                  status: transaction.status,
                  amount: amount,
                ),
                if (action?.key == PaymentActionKey.marketOrder) ...[
                  const SizedBox(height: 12),
                  _orderAction(context, action!),
                ],
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    TransactionMerchantCard(merchant: transaction.merchant),
                    if (transaction.items.isNotEmpty)
                      TransactionInfoCard(items: transaction.items),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        TransactionDetailActions(
          status: transaction.status,
          taxQr: transaction.taxQr.orEmpty(),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
      ],
    );
  }

  Widget _orderAction(BuildContext context, PaymentAction action) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => context.market.pushMarketOrderDetail(orderId: action.id),
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: context.appColors.fill.tertiary,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Assets.svg.tabIconBasket.path.toSvgImage(
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                tintColor: context.appColors.textIconColor.primary,
              ),
              Text(
                action.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).labelMd(),
            ],
          ),
        ),
      ),
    );
  }
}
