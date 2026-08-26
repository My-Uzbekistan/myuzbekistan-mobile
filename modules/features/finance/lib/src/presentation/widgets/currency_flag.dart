import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CurrencyFlag extends StatelessWidget {
  final Currency currency;
  final double size;

  const CurrencyFlag({super.key, required this.currency, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: AppNetworkImage(
          currency.flag,
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
      ),
    );
  }
}
