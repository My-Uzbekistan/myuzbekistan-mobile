import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_error_view.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_address_sheet.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_bottom_bar.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_delivery_sheet.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_details_card.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_items_card.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_phone_sheet.dart';
import 'package:basket/src/presentation/checkout/widgets/checkout_price_card.dart';
import 'package:basket/src/presentation/checkout/widgets/shimmer/checkout_shimmer.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class CheckoutPage extends StatelessWidget {
  static const String _marketMerchantId = "52";

  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final topPadding =
        GradientAppBar.navbarHeight +
        MediaQuery.paddingOf(context).top +
        16;

    void openProductDetail(CartItem item) {
      context.market
          .pushMarketProductDetail(productId: item.productId)
          .whenComplete(() => bloc.add(CheckoutEvent.reloadItems()));
    }

    Future<void> editPhone(String? phone) async {
      final result = await CheckoutPhoneSheet.show(context, phone: phone);
      if (result != null) {
        bloc.add(CheckoutEvent.changePhone(phone: result));
      }
    }

    Future<void> payAndOrder(CheckoutState state) async {
      final delivery = state.delivery;
      final price = state.price;
      final phone = state.phone;
      if (delivery == null || price == null || phone == null) return;

      final paymentId = await context.finance.pushMarketOrderPayment<String>(
        merchantId: _marketMerchantId,
        payment: MarketCheckoutPayment(
          deliveryMethodId: delivery.id,
          recipientPhone: phone.replaceAll(RegExp(r"\D"), ""),
          addressId: state.address?.id,
          price: price,
          priceDetails: state.priceDetails,
          freeCancellationUntil: state.freeCancellationUntil,
        ),
      );
      if (paymentId != null) {
        bloc.add(CheckoutEvent.createOrder(paymentId: paymentId));
      }
    }

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        title: context.localization.basket_checkout_title,
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
      ),
      body: BlocConsumer<CheckoutBloc, CheckoutState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            (current.errorMessage != null &&
                previous.errorMessage != current.errorMessage) ||
            (!previous.isOrderCreated && current.isOrderCreated) ||
            (previous.items.isNotEmpty && current.items.isEmpty),
        listener: (context, state) {
          final paymentId = state.paymentId;
          if (state.isOrderCreated && paymentId != null) {
            context.finance.pushPaymentTransactionDetail(paymentId: paymentId);
            return;
          }
          if (state.items.isEmpty && !state.isLoading) {
            context.pop();
            return;
          }
          if (state.errorMessage != null) {
            Toast.showToast(state.errorMessage!);
          }
        },
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state.isEmpty && state.isLoading) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                top: topPadding,
                bottom: 16,
              ),
              child: const CheckoutShimmer(),
            );
          }

          if (state.isEmpty && state.loadFailed) {
            return Padding(
              padding: EdgeInsets.only(top: topPadding),
              child: Center(
                child: BasketErrorView(
                  onRefresh: () => bloc.add(CheckoutEvent.loadData()),
                ),
              ),
            );
          }

          final price = state.price;

          return RefreshIndicator.adaptive(
            displacement: topPadding,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            onRefresh: () async {
              bloc.add(CheckoutEvent.loadData());
              await bloc.stream.firstWhere((state) => !state.isLoading);
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: EdgeInsets.only(
                top: topPadding,
                bottom: 16,
              ),
              child: Column(
                spacing: 8,
                children: [
                  CheckoutDetailsCard(
                    delivery: state.delivery,
                    address: state.address,
                    phone: state.phone,
                    onDeliveryTap: () =>
                        CheckoutDeliverySheet.show(context, bloc),
                    onAddressTap: () =>
                        CheckoutAddressSheet.show(context, bloc),
                    onPhoneTap: () => editPhone(state.phone),
                  ),
                  CheckoutItemsCard(
                    items: state.items,
                    onItemTap: openProductDetail,
                    onQuantityChanged: (item, quantity) => bloc.add(
                      CheckoutEvent.changeQuantity(
                        item: item,
                        quantity: quantity,
                      ),
                    ),
                    onRemoveItem: (item) =>
                        bloc.add(CheckoutEvent.removeItem(item: item)),
                  ),
                  if (price != null)
                    CheckoutPriceCard(
                      price: price,
                      details: state.priceDetails,
                      freeCancellationUntil: state.freeCancellationUntil,
                    ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CheckoutBloc, CheckoutState>(
        bloc: bloc,
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state.isEmpty) return const SizedBox.shrink();
          return CheckoutBottomBar(
            total: state.total,
            isLoading: state.isOrdering,
            onOrder: state.canOrder ? () => payAndOrder(state) : null,
          );
        },
      ),
    );
  }
}
