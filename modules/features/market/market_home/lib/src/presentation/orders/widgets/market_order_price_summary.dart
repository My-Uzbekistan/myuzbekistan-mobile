import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketOrderPriceSummary extends StatelessWidget {
  const MarketOrderPriceSummary({
    super.key,
    required this.price,
    this.details,
  });

  final MarketOrderPrice price;
  final MarketPriceDetails? details;

  @override
  Widget build(BuildContext context) {
    final details = this.details;

    return Container(
      padding: const EdgeInsets.all(12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: context.appColors.fill.quaternary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 9,
        children: details == null
            ? _localRows(context)
            : _serverRows(context, details),
      ),
    );
  }

  List<Widget> _serverRows(BuildContext context, MarketPriceDetails details) {
    final total = details.total;
    final notice = details.notice;

    return [
      for (final row in details.rows) _row(context, row.title, row.value),
      if (total != null) ...[
        Divider(
          height: 1,
          thickness: 1,
          color: context.appColors.stroke.nonOpaque,
        ),
        _totalRow(context, total.title, total.value),
      ],
      if (notice != null) _notice(context, notice.title, notice.text),
    ];
  }

  List<Widget> _localRows(BuildContext context) {
    final currency = context.localization.market_currency_som;

    return [
      _row(
        context,
        context.localization.market_order_summary_products,
        "${_amount(price.products)} $currency",
      ),
      _row(
        context,
        context.localization.market_order_summary_delivery,
        "${_amount(price.delivery)} $currency",
      ),
      Divider(
        height: 1,
        thickness: 1,
        color: context.appColors.stroke.nonOpaque,
      ),
      _totalRow(
        context,
        context.localization.market_order_summary_total,
        "${_amount(price.total)} $currency",
      ),
    ];
  }

  Widget _row(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 4,
      children: [
        Text(label).bodyMd(color: context.appColors.textIconColor.secondary),
        Text(value).labelLg(color: context.appColors.textIconColor.primary),
      ],
    );
  }

  Widget _totalRow(BuildContext context, String label, String value) {
    return Row(
      spacing: 4,
      children: [
        Expanded(
          child: Text(
            label,
          ).labelLg(color: context.appColors.textIconColor.primary),
        ),
        Text(value).h3(color: context.appColors.textIconColor.primary),
      ],
    );
  }

  Widget _notice(BuildContext context, String title, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Text(title).labelMd(color: context.appColors.textIconColor.primary),
          Text(text).bodySm(color: context.appColors.textIconColor.tertiary),
        ],
      ),
    );
  }

  String _amount(int value) => value == 0 ? "0" : value.amountFormatted();
}
