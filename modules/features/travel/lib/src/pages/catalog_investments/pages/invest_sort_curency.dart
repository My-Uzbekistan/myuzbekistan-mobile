import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'package:travel/src/pages/catalog_investments/sort_cubit/sort_cubit.dart';

import '../invest_currencs_type.dart';

class InvestPriceSortPage extends StatefulWidget {
  final InvestSortCubit cubit;

  const InvestPriceSortPage({super.key, required  this.cubit});

  @override
  State<InvestPriceSortPage> createState() => _InvestPriceSortPage();
}

class _InvestPriceSortPage extends State<InvestPriceSortPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Scaffold(
        appBar: GradientAppBar(title: context.localization.investment_page_sort_price, centerTitle: true),

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
                      widget.cubit.changeCurrencyType(InvestCurrencyType.usd);
                    },
                    text: InvestCurrencyType.usd.value,
                    icon: Assets.flags.us.svg(height: 24),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: AppCheck(isChecked: state.hasUsd),
                  ),

                  SettingsCell(
                    borderRadius: BorderRadius.circular(16),
                    containerColor: context.appColors.fill.quaternary,
                    onTap: () {
                      widget.cubit.changeCurrencyType(InvestCurrencyType.uzs);
                    },
                    text: InvestCurrencyType.uzs.value,
                    icon: Assets.flags.uz.svg(height: 24),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: AppCheck(isChecked: !state.hasUsd),
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




class InvestSortTypePage extends StatefulWidget {
  final InvestSortCubit cubit;

  const InvestSortTypePage({super.key, required  this.cubit});

  @override
  State<InvestSortTypePage> createState() => _InvestSortTypePage();
}

class _InvestSortTypePage extends State<InvestSortTypePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Scaffold(
        appBar: GradientAppBar(title: context.localization.investment_page_sort, centerTitle: true),

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
                      widget.cubit.changeSortType(SortType.popular);
                    },
                    text: context.localization.investment_page_sort_popular,

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: AppCheck(isChecked: state.hasPopular),
                  ),
                  SettingsCell(
                    borderRadius: BorderRadius.circular(16),
                    containerColor: context.appColors.fill.quaternary,
                    onTap: () {
                      widget.cubit.changeSortType(SortType.ask);
                    },
                    text: context.localization.investment_page_sort_ask,

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: AppCheck(isChecked: state.hasAsk),
                  ),

                  SettingsCell(
                    borderRadius: BorderRadius.circular(16),
                    containerColor: context.appColors.fill.quaternary,
                    onTap: () {
                      widget.cubit.changeSortType(SortType.desk);
                    },
                    text: context.localization.investment_page_sort_desk,

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    trailing: AppCheck(isChecked: state.hasDesk),
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