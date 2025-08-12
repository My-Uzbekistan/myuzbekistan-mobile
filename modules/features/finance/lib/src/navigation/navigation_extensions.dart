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

  void pushQrCoderReaderPage() {
    pushNamed(AppNavPath.finance.qrReaderPage.name);
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
}
