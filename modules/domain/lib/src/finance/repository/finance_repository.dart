import 'package:domain/src/finance/models/payment_result.dart';
import 'package:shared/shared.dart';

import '../../../domain.dart';

abstract class FinanceRepository {
  Future<CardId> bindCard({
    required String pan,
    required String expiry,
    String phoneNumber = "",
    String cardHolderName = "",
    String cvv = "",
  });

  Future<void> confirmCard({required String cardId, required String otp});

  Future<CardType> findCardType({
    required String pan,
    CancelToken? cancelToken,
  });

  Future<List<CardColor>> loadCardColors();

  Future<List<CardItem>> cards();

  Future<void> deleteCard({required int cardId});

  Future<List<Merchant>> merchants();

  Future<Merchant> paymentMerchant({required String merchantId});

  Future<PaymentResultTopUp> pay({
    required String merchantId,
    required double amount,
    required String cardId,
  });

  Future<void> confirmPay({required String paymentId});

  Future<List<PaymentHistoryItem>> paymentHistory({
    int page = 0,
    int pageSize = 20,
  });

  Future<TransactionItem> paymentCheck({required String paymentId});
}
