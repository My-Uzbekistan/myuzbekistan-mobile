import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment_history/bloc/history_bloc.dart';
import 'package:finance/src/presentation/payment_history/widgets/history_group_card.dart';
import 'package:finance/src/presentation/payment_history/widgets/history_loading.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentHistoryPage extends StatelessWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.only(
      top: kToolbarHeight + MediaQuery.of(context).padding.top + 16,
      bottom: MediaQuery.of(context).padding.bottom + 16,
    );

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(title: context.localization.payment_history_title),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          return state.when(
            loading: () => HistoryLoading(padding: padding),
            loaded: (groups) {
              final items = groups
                  .where((group) => group.items.isNotEmpty)
                  .toList();

              return ListView.separated(
                padding: padding,
                itemCount: items.length,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) => HistoryGroupCard(
                  group: items[index],
                  onItemTap: (item) {
                    context.pushTransactionDetailPage(item.id.orEmpty());
                  },
                ),
              );
            },
            errorState: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
