import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/widgets/payment_free_cancellation.dart';
import 'package:finance/src/presentation/payment/widgets/payment_summary_row.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentSummaryCard extends StatelessWidget {
  final CheckoutPrice price;
  final MarketPriceDetails? details;
  final DateTime? freeCancellationUntil;

  const PaymentSummaryCard({
    super.key,
    required this.price,
    this.details,
    this.freeCancellationUntil,
  });

  @override
  Widget build(BuildContext context) {
    final details = this.details;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: details == null
            ? _localContent(context)
            : _serverContent(context, details),
      ),
    );
  }

  List<Widget> _serverContent(
    BuildContext context,
    MarketPriceDetails details,
  ) {
    final total = details.total;
    final notice = details.notice;

    return [
      Text(
        details.title,
      ).labelLg(color: context.appColors.textIconColor.primary),
      Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 9,
        children: [
          for (final row in details.rows)
            PaymentSummaryRow(label: row.title, value: row.value),
          if (total != null) ...[
            _divider(context),
            PaymentSummaryRow(
              label: total.title,
              value: total.value,
              isTotal: true,
            ),
          ],
        ],
      ),
      if (notice != null)
        PaymentFreeCancellation(title: notice.title, text: notice.text),
    ];
  }

  List<Widget> _localContent(BuildContext context) {
    final cancellationDate = freeCancellationUntil;
    final locale = Localizations.localeOf(context).languageCode;

    return [
      Text(
        context.localization.payment_summary_title,
      ).labelLg(color: context.appColors.textIconColor.primary),
      Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 9,
        children: [
          PaymentSummaryRow(
            label: context.localization.payment_summary_order,
            value: _amount(context, price.products),
          ),
          PaymentSummaryRow(
            label: context.localization.payment_summary_delivery,
            value: _amount(context, price.delivery),
          ),
          _divider(context),
          PaymentSummaryRow(
            label: context.localization.payment_summary_total,
            value: _amount(context, price.total),
            isTotal: true,
          ),
        ],
      ),
      if (cancellationDate != null)
        PaymentFreeCancellation(
          title: context.localization.payment_free_cancellation_title,
          text: context.localization.payment_free_cancellation_subtitle(
            DateFormat("d MMMM", locale).format(cancellationDate),
          ),
        ),
    ];
  }

  Widget _divider(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: context.appColors.stroke.nonOpaque,
    );
  }

  String _amount(BuildContext context, int value) {
    return context.localization.currency(value.toDouble().amountFormatted());
  }
}
