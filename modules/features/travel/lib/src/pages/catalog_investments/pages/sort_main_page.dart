import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';
import 'package:travel/src/pages/catalog_investments/sort_cubit/sort_cubit.dart';

class InvestSortMainPage extends StatefulWidget {
  final InvestSortCubit cubit;
  const InvestSortMainPage({super.key,required this.cubit});

  @override
  State<InvestSortMainPage> createState() => _InvestSortMainPageState();
}

class _InvestSortMainPageState extends State<InvestSortMainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Scaffold(
        appBar: GradientAppBar(title: context.localization.investment_page_sort_title, centerTitle: true),

        body: BlocBuilder<InvestSortCubit, SortState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 8,
                children: [
                  SettingsCell(
                    borderRadius: BorderRadius.circular(16),
                    containerColor: context.appColors.fill.quaternary,
                    onTap: () {
                      context.pushNamed(
                        AppNavPath.travel.travelCatalogInvestmentsPriceSort.name,
                        extra: widget.cubit,
                      );
                    },
                    text: context.localization.investment_page_sort_price,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16,
                      children: [
                        Flexible(
                          child: InvestCurrencyCell(type: state.currencyType),
                        ),
                        Assets.svgIconArrowRight.toSvgImage(
                          height: 18,
                          width: 18,
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                            context.appColors.textIconColor.secondary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SettingsCell(
                    borderRadius: BorderRadius.circular(16),
                    containerColor: context.appColors.fill.quaternary,
                    text: context.localization.investment_page_sort,
                    onTap: () {
                      context.pushNamed(
                        AppNavPath.travel.travelCatalogInvestmentsSortType.name,
                        extra: widget.cubit,
                      );
                    },
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: Builder(
                      builder: (context) {
                        final text = switch (state.sortType) {
                          SortType.ask => context.localization.investment_page_sort_ask,
                          SortType.desk => context.localization.investment_page_sort_desk,
                          SortType.popular => context.localization.investment_page_sort_popular,
                          _ => "",
                        };
                        return Row(
                          spacing: 16,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child:
                                  Text(
                                    text,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ).bodyLg(),
                            ),
                            Assets.svgIconArrowRight.toSvgImage(
                              height: 18,
                              width: 18,
                              fit: BoxFit.contain,
                              colorFilter: ColorFilter.mode(
                                context.appColors.textIconColor.secondary,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class InvestCurrencyCell extends StatelessWidget {
  final InvestCurrencyType type;

  const InvestCurrencyCell({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        type == InvestCurrencyType.uzs
            ? Assets.flagsUz.toSvgImage(height: 24)
            : Assets.flagsUs.toSvgImage(height: 24),

        Text(InvestCurrencyType.usd.value).labelLg(),
      ],
    );
  }
}
