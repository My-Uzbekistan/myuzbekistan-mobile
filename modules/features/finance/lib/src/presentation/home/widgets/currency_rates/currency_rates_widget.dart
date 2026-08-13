import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_card.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_header.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'currency_rate_item.dart';
import 'currency_rates_scroll_indicator.dart';

const _horizontalPadding = 16.0;
const _columnGap = 12.0;
const _peekWidth = 19.0;
const _rowsPerColumn = 2;
const _rowHeight = 44.0;
const _fadeWidth = 60.0;

class CurrencyRatesWidget extends HookWidget {
  final List<Currency> currencies;
  final VoidCallback onShowAll;

  const CurrencyRatesWidget({
    super.key,
    required this.currencies,
    required this.onShowAll,
  });

  @override
  Widget build(BuildContext context) {
    final columns = currencies.chunked(_rowsPerColumn).toList();
    final controller = useScrollController();
    final progress = useState(0.0);

    useEffect(() {
      void onScroll() {
        final position = controller.position;
        progress.value = position.maxScrollExtent <= 0
            ? 0
            : (position.pixels / position.maxScrollExtent).clamp(0.0, 1.0);
      }

      controller.addListener(onScroll);
      return () => controller.removeListener(onScroll);
    }, [controller]);

    final lastUpdatedAt = currencies.lastUpdatedAt();

    return FinanceSectionCard(
      clipContent: true,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
            child: FinanceSectionHeader(
              title: context.localization.exchange_rates,
              subtitle: lastUpdatedAt == null
                  ? null
                  : context.localization.rates_last_update(
                      lastUpdatedAt.format(),
                    ),
              onActionTap: onShowAll,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final trackWidth = constraints.maxWidth - _horizontalPadding * 2;
              final columnWidth = (trackWidth - _columnGap - _peekWidth) / 2;
              final contentWidth =
                  columns.length * columnWidth +
                  (columns.length - 1) * _columnGap;
              final visibleFraction = contentWidth <= 0
                  ? 1.0
                  : (trackWidth / contentWidth).clamp(0.0, 1.0);

              return Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: _rowHeight * _rowsPerColumn,
                        child: ListView.separated(
                          controller: controller,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: _horizontalPadding,
                          ),
                          itemCount: columns.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: _columnGap),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: columnWidth,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: columns[index]
                                    .map((e) => CurrencyRateItem(currency: e))
                                    .toList(),
                              ),
                            );
                          },
                        ),
                      ),
                      if (visibleFraction < 1)
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: IgnorePointer(
                            child: Container(
                              width: _fadeWidth,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    context.appColors.background.elevation1
                                        .withValues(alpha: 0),
                                    context.appColors.background.elevation1,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _horizontalPadding,
                    ),
                    child: CurrencyRatesScrollIndicator(
                      visibleFraction: visibleFraction,
                      progress: progress.value,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
