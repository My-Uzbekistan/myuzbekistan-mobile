import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment_history/bloc/history_bloc.dart';
import 'package:finance/src/presentation/payment_history/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({super.key});

  @override
  State<PaymentHistoryPage> createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localization.payment_history_title)),

      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryLoadedState) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final group = state.items[index];
                final items = group.items;
                return StickyHeader(
                  overlapHeaders: false,
                  header: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 16, bottom: 12),
                    color: context.appColors.background.base,
                    child: Text(group.title),
                  ),
                  content: ListView.separated(
                    shrinkWrap: true,

                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },

                    itemBuilder: (context, index) {
                      return HistoryItem(
                        itemUiModel: items[index],
                        onTap: () {
                          context.pushTransactionDetailPage(
                            items[index].id.toString(),
                          );
                        },
                      );
                    },
                    itemCount: items.length,
                  ),
                );
              },
              itemCount: state.items.length,
            );
          }

          return SizedBox();
        },
      ),
    );
  }
}
