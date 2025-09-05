import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/merchants/bloc/merchants_bloc.dart';
import 'package:finance/src/presentation/widgets/finance_category_header.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/finance_merchants_card.dart';

class MerchantsPage extends StatefulWidget {
  final List<Merchant> merchants;

  const MerchantsPage({super.key, required this.merchants});

  @override
  State<MerchantsPage> createState() => _MerchantsPageState();
}

class _MerchantsPageState extends State<MerchantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(title: context.localization.all_places),
      body: BlocBuilder<MerchantsBloc, MerchantsState>(
        builder: (context, state) {
          return state.when(
            loading: () => SizedBox(),
            dataState: (groups) {
              return ListView.builder(
                itemBuilder: (context, index) {

                  final groupItem = groups[index];
                  return FinanceMerchantsWithCategory(
                    onItemTap: (index) {
                      context.finance.pushMerchantPage(
                        id: groupItem.items[index].id.toString(),
                      );
                    },
                    title: groupItem.name,
                    items:
                        groupItem.items
                            .map(
                              (e) => MerchantWidgetModel(
                                name: e.name.orEmpty(),
                                caption: e.type,
                                distance: e.distance?.toString(),
                                imageUrl: e.logo,
                              ),
                            )
                            .toList(),
                  );
                },
                itemCount: groups.length,
              );
            },
          );
        },
      ),
    );
  }
}
