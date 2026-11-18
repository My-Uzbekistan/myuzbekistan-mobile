import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumPurchaseTariffs extends StatelessWidget {
  const MuseumPurchaseTariffs({
    super.key,
    required this.tariffs,
    required this.quantities,
    required this.onQuantityChanged,
  });

  final List<MuseumTariff> tariffs;
  final Map<String, int> quantities;
  final void Function(MuseumTariff tariff, int quantity) onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [for (final tariff in tariffs) ..._group(context, tariff)],
    );
  }

  List<Widget> _group(BuildContext context, MuseumTariff tariff) {
    final leaves = tariff.purchasableLeaves;
    if (leaves.isEmpty) return const [];

    final isGroup = !tariff.purchasable && tariffs.length > 1;

    return [
      if (isGroup)
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 4),
          child: Text(
            tariff.title,
          ).labelMd(color: context.appColors.textIconColor.tertiary),
        ),
      for (final leaf in leaves)
        _TariffRow(
          tariff: leaf,
          quantity: quantities[leaf.id] ?? 0,
          onQuantityChanged: (quantity) => onQuantityChanged(leaf, quantity),
        ),
    ];
  }
}

class _TariffRow extends StatelessWidget {
  const _TariffRow({
    required this.tariff,
    required this.quantity,
    required this.onQuantityChanged,
  });

  final MuseumTariff tariff;
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final details = [
      if (tariff.price != null)
        "${tariff.price!.amountFormatted()} ${context.localization.museum_currency_som}",
      if (tariff.validHours != null)
        context.localization.museum_purchase_valid_hours(tariff.validHours!),
    ].join(" • ");

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  tariff.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).labelLg(color: colors.textIconColor.primary),
                if (details.isNotEmpty)
                  Text(
                    details,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: colors.textIconColor.tertiary),
              ],
            ),
          ),
          const SizedBox(width: 12),
          _stepper(context),
        ],
      ),
    );
  }

  Widget _stepper(BuildContext context) {
    final colors = context.appColors;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _stepperButton(
          context,
          icon:
              quantity == 1
                  ? SizedBox.square(
                    dimension: 20,
                    child: Assets.svg.iconTrashCanLine.path.toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: colors.colors.red,
                    ),
                  )
                  : CartGlyphIcon(
                    glyph: CartGlyph.minus,
                    color:
                        quantity == 0
                            ? colors.textIconColor.disable
                            : colors.textIconColor.primary,
                  ),
          onTap: quantity == 0 ? null : () => onQuantityChanged(quantity - 1),
        ),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              "$quantity",
            ).labelLg(color: colors.textIconColor.primary),
          ),
        ),
        _stepperButton(
          context,
          icon: CartGlyphIcon(
            glyph: CartGlyph.plus,
            color: colors.textIconColor.primary,
          ),
          onTap: () => onQuantityChanged(quantity + 1),
        ),
      ],
    );
  }

  Widget _stepperButton(
    BuildContext context, {
    required Widget icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: context.appColors.fill.tertiary,
          shape: BoxShape.circle,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
