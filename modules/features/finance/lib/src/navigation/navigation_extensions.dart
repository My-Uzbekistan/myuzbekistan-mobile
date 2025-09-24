import 'dart:async';

import 'package:domain/domain.dart';
import 'package:finance/src/presentation/cards/cards_page.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../presentation/payment_success/payment_success_page.dart';

extension FinanceNavExtension on BuildContext {
  void pushCardsPage() {
    pushNamed(
      AppNavPath.finance.financeCards.name,
      pathParameters: {"type": CardsPageType.list.name},
    );
  }


  void pushTransactionDetailPage(String paymentId) {
    pushNamed(
      AppNavPath.finance.paymentTransactionDetailPage.name,
      pathParameters: {"paymentId": paymentId},
    );
  }

  void pushPaymentHistoryPage() {
    pushNamed(AppNavPath.finance.paymentHistoryPage.name);
  }
  void pushMerchantsPage(List<Merchant> merchants) {
    pushNamed(AppNavPath.finance.financeMerchants.name,extra: merchants);
  }

  Future<T?> pushSelectCardsPage<T>(int? cardId) {
    return pushNamed(
      AppNavPath.finance.financeCards.name,
      pathParameters: {"type": CardsPageType.select.name},
      queryParameters: {"cardId": cardId.toString()},
    );
  }

  void pushPaymentSuccessPage<T>(PaymentSuccessPageParams params) {
    return pushReplacementNamed(
      AppNavPath.finance.paymentSuccessPage.name,
      extra: params,
    );
  }



  void pushCurrenciesPageModalPage({
    required  List<Currency> currencies,
    required  Completer<Currency> completer,
    required int currentCurrencyId,
  }) {
    pushType(
      AppNavPath.finance.currenciesModalPage,
      extra: Triple(currencies, completer, currentCurrencyId),
      queryParameters: {"isModal": "true"},
    );
  }

  void pushCurrenciesPage(List<Object> currencies,) {
    pushType(AppNavPath.finance.currenciesPage, extra: currencies);
  }
}
