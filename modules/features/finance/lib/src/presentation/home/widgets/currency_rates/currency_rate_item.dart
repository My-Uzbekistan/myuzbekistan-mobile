import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/widgets/currency_flag.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CurrencyRateItem extends StatelessWidget {
  final Currency currency;

  const CurrencyRateItem({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        spacing: 4,
        children: [
          CurrencyFlag(currency: currency),
          Text(
            currency.ccy.orEmpty(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTypography.labelMd.copyWith(
              color: context.appColors.textIconColor.secondary,
            ),
          ),
          Expanded(
            child: Text(
              currency.rateFormatted(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTypography.labelMd,
            ),
          ),
        ],
      ),
    );
  }
}
