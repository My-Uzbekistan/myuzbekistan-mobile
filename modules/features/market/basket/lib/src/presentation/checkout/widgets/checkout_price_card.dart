import 'package:basket/src/core/extension.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CheckoutPriceCard extends StatelessWidget {
  const CheckoutPriceCard({
    super.key,
    required this.price,
    this.details,
    this.freeCancellationUntil,
  });

  final CheckoutPrice price;
  final MarketPriceDetails? details;
  final DateTime? freeCancellationUntil;

  @override
  Widget build(BuildContext context) {
    final details = this.details;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      Text(details.title).labelLg(color: context.appColors.textIconColor.primary),
      Column(
        spacing: 9,
        children: [
          for (final row in details.rows) _row(context, row.title, row.value),
          if (total != null) ...[
            Divider(
              height: 1,
              thickness: 1,
              color: context.appColors.stroke.nonOpaque,
            ),
            _row(context, total.title, total.value, isTotal: true),
          ],
        ],
      ),
      if (notice != null) _notice(context, notice.title, notice.text),
    ];
  }

  List<Widget> _localContent(BuildContext context) {
    final currency = context.localization.basket_currency_som;
    final cancellationDate = freeCancellationUntil;
    final locale = Localizations.localeOf(context).languageCode;

    return [
      Text(
        context.localization.basket_price_details,
      ).labelLg(color: context.appColors.textIconColor.primary),
      Column(
        spacing: 9,
        children: [
          _row(
            context,
            context.localization.basket_checkout_products,
            "${price.products.amountFormatted()} $currency",
          ),
          if (price.delivery > 0)
            _row(
              context,
              context.localization.basket_checkout_delivery,
              "${price.delivery.amountFormatted()} $currency",
            ),
          Divider(
            height: 1,
            thickness: 1,
            color: context.appColors.stroke.nonOpaque,
          ),
          _row(
            context,
            context.localization.basket_total,
            "${price.total.amountFormatted()} $currency",
            isTotal: true,
          ),
        ],
      ),
      if (cancellationDate != null)
        _notice(
          context,
          context.localization.basket_free_cancellation_title,
          context.localization.basket_free_cancellation_subtitle(
            DateFormat("d MMMM", locale).format(cancellationDate),
          ),
        ),
    ];
  }

  Widget _row(
    BuildContext context,
    String label,
    String value, {
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 4,
      children: [
        isTotal
            ? Text(label).labelLg(color: context.appColors.textIconColor.primary)
            : Text(
                label,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
        isTotal
            ? Text(value).h3(color: context.appColors.textIconColor.primary)
            : Text(
                value,
              ).labelLg(color: context.appColors.textIconColor.primary),
      ],
    );
  }

  Widget _notice(BuildContext context, String title, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.appColors.background.underlayer,
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
}
