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

  void pushMerchantPage({
    required String id,
    String? amount,
    Completer<bool>? extra,
  }) {
    _context.pushType(
      AppNavPath.finance.financePayment,
      pathParameters: {"id": id},
      queryParameters: amount != null ? {"amount": amount} : {},
      extra: extra,
    );
  }

  void pushQrCoderReaderPage() {
    _context.pushType(AppNavPath.finance.qrReaderPage);
  }
}
