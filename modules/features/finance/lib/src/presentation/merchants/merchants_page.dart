import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/merchants/bloc/merchants_bloc.dart';
import 'package:finance/src/presentation/merchants/widgets/merchants_group_card.dart';
import 'package:finance/src/presentation/merchants/widgets/merchants_loading.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class MerchantsPage extends StatelessWidget {
  final List<Merchant> merchants;

  const MerchantsPage({super.key, required this.merchants});

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.only(
      top: GradientAppBar.navbarHeight + MediaQuery.of(context).padding.top + 16,
      bottom: MediaQuery.of(context).padding.bottom + 16,
    );

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.all_places,
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
      ),
      body: BlocBuilder<MerchantsBloc, MerchantsState>(
        builder: (context, state) {
          return state.when(
            loading: () => MerchantsLoading(padding: padding),
            dataState: (groups) {
              final items = groups
                  .where((group) => group.items.isNotEmpty)
                  .toList();

              return ListView.separated(
                padding: padding,
                itemCount: items.length,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final group = items[index];

                  return MerchantsGroupCard(
                    title: group.name,
                    merchants: group.items,
                    onMerchantTap: (merchant) {
                      context.finance.pushMerchantPage(
                        id: merchant.id.toString(),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
