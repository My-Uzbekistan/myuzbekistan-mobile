import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/purchase/bloc/museum_purchase_bloc.dart';
import 'package:travel/src/pages/museum/purchase/widgets/museum_card_picker_sheet.dart';
import 'package:travel/src/pages/museum/purchase/widgets/museum_purchase_bottom_bar.dart';
import 'package:travel/src/pages/museum/purchase/widgets/museum_purchase_museum_tile.dart';
import 'package:travel/src/pages/museum/purchase/widgets/museum_purchase_tariffs.dart';
import 'package:travel/src/pages/museum/widgets/museum_nav_bar.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumPurchasePage extends HookWidget {
  const MuseumPurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumPurchaseBloc>();
    final isCheckUrlOpened = useRef(false);

    useOnAppLifecycleStateChange((previous, current) {
      if (current != AppLifecycleState.resumed) return;
      if (!isCheckUrlOpened.value) return;
      bloc.add(MuseumPurchaseEvent.confirm());
    });

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<MuseumPurchaseBloc, MuseumPurchaseState>(
          bloc: bloc,
          listenWhen:
              (previous, current) =>
                  (current.errorMessage != null &&
                      previous.errorMessage != current.errorMessage) ||
                  (current.isSuccess && !previous.isSuccess) ||
                  current.order?.checkUrl != previous.order?.checkUrl,
          listener: (context, state) {
            if (state.isSuccess) {
              context.travel.replaceWithMuseumTickets();
              return;
            }

            final checkUrl = state.order?.checkUrl;
            if (checkUrl != null && !isCheckUrlOpened.value) {
              isCheckUrlOpened.value = true;
              LauncherUtils.urlLauncher(
                checkUrl,
                mode: LaunchMode.externalApplication,
              );
              return;
            }

            if (state.errorMessage != null) {
              Toast.showToast(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final detail = state.detail;

            return Column(
              children: [
                MuseumNavBar(
                  title: context.localization.museum_purchase_title,
                  onBack: () => context.pop(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    child: Column(
                      spacing: 8,
                      children: [
                        if (detail != null)
                          _card(
                            context,
                            child: MuseumPurchaseMuseumTile(detail: detail),
                          ),
                        if (state.isWaitingIssue)
                          _card(context, child: _pendingView(context))
                        else if (state.purchasableTariffs.isNotEmpty)
                          _card(
                            context,
                            child: MuseumPurchaseTariffs(
                              tariffs: state.tariffs,
                              quantities: state.quantities,
                              onQuantityChanged:
                                  (tariff, quantity) => bloc.add(
                                    MuseumPurchaseEvent.changeQuantity(
                                      tariffId: tariff.id,
                                      quantity: quantity,
                                    ),
                                  ),
                            ),
                          )
                        else if (state.isLoading)
                          const Padding(
                            padding: EdgeInsets.only(top: 32),
                            child: LoadingIndicator(size: 32),
                          )
                        else
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: MuseumStateView(
                              title:
                                  context
                                      .localization
                                      .museum_purchase_no_tariffs,
                              message:
                                  context
                                      .localization
                                      .museum_something_went_wrong,
                              actionText: context.localization.museum_refresh,
                              onAction:
                                  () => bloc.add(
                                    MuseumPurchaseEvent.start(
                                      museumId: state.museumId,
                                    ),
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<MuseumPurchaseBloc, MuseumPurchaseState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isWaitingIssue) return const SizedBox.shrink();

          return MuseumPurchaseBottomBar(
            totalAmount: state.totalAmount,
            isEnabled: state.items.isNotEmpty,
            isLoading: state.isPaying,
            onPay: () => _pay(context, bloc, state),
          );
        },
      ),
    );
  }

  Widget _card(BuildContext context, {required Widget child}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }

  Widget _pendingView(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        const LoadingIndicator(size: 32),
        Text(
          context.localization.museum_purchase_pending_title,
          textAlign: TextAlign.center,
        ).h3(color: context.appColors.textIconColor.primary),
        Text(
          context.localization.museum_purchase_pending_message,
          textAlign: TextAlign.center,
        ).bodyMd(color: context.appColors.textIconColor.secondary),
      ],
    );
  }

  Future<void> _pay(
    BuildContext context,
    MuseumPurchaseBloc bloc,
    MuseumPurchaseState state,
  ) async {
    if (state.items.isEmpty) {
      Toast.showToast(context.localization.museum_purchase_items_required);
      return;
    }

    final card = await MuseumCardPickerSheet.show(context, cards: state.cards);
    if (card == null) return;
    bloc.add(MuseumPurchaseEvent.pay(cardId: card.id));
  }
}
