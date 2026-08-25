part of '../navigation_paths.dart';

class FeatureFinanceNavExtension {
  final BuildContext _context;

  FeatureFinanceNavExtension(BuildContext context) : _context = context;

  void pushAddCardPage({Object? extra}) {
    _context.pushType(AppNavPath.finance.financeAddCard, extra: extra);
  }

  Future<T?> pushAddCardVerification<T>({required int cardId, Object? extra}) {
    return _context.pushType<T>(
      AppNavPath.finance.verification,
      pathParameters: {"cardId": cardId.toString()},
      extra: extra,
    );
  }

  Future<T?> pushAuthVerification<T>({required String phone, Object? extra}) {
    return _context.pushType<T>(
      AppNavPath.more.authVerification,
      queryParameters: {"phone": phone.toString()},
      extra: extra,
    );
  }

  void pushMerchantPage({
    required String id,
    String? amount,
    String? orderId,
    Completer<bool>? extra,
  }) {
    _context.pushType(
      AppNavPath.finance.financePayment,
      pathParameters: {"id": id},
      queryParameters: {
        if (amount != null) "amount": amount,
        if (orderId != null) "orderId": orderId,
      },
      extra: extra,
    );
  }

  Future<T?> pushMarketOrderPayment<T>({
    required String merchantId,
    required MarketCheckoutPayment payment,
  }) {
    return _context.pushType<T>(
      AppNavPath.finance.financePayment,
      pathParameters: {"id": merchantId},
      extra: payment,
    );
  }

  void pushPaymentTransactionDetail({required String paymentId}) {
    _context.pushType(
      AppNavPath.finance.paymentTransactionDetailPage,
      pathParameters: {"paymentId": paymentId},
    );
  }

  void pushQrCoderReaderPage() {
    _context.pushType(AppNavPath.finance.qrReaderPage);
  }
}
