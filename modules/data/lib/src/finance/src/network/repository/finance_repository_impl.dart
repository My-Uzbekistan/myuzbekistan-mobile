import 'dart:convert';

import 'package:data/src/finance/src/models/payment_check/transaction_item_dto.dart';
import 'package:data/src/finance/src/models/payment_history/payment_history.dart'
    hide MerchantItemDto;
import 'package:data/src/finance/src/network/api/finance_api_service.dart';
import 'package:data/src/models/items_response.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../../models/merchant_dto.dart';

@Injectable(as: FinanceRepository)
class FinanceRepositoryImpl extends FinanceRepository {
  final FinanceApiService service;

  FinanceRepositoryImpl(this.service);

  @override
  Future<List<CardItem>> cards() {
    return service.getCards().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<void> deleteCard({required int cardId}) {
    return service.deleteCard(cardId).call();
  }

  @override
  Future<CardId> bindCard({
    required String pan,
    required String expiry,
    String phoneNumber = "",
    String cardHolderName = "",
    String cvv = "",
    String? image,
  }) {
    debugPrint("bindCard");
    // await Future.delayed(Duration(seconds: 5));
    // return CardIdDto(cardId: 123).toDomain();
    return service
        .bindCard({
          "pan": pan,
          "expiry": expiry,
          if (image != null) "image": image,
          if (phoneNumber.isNotEmpty)
            "smsNotificationNumber": "998$phoneNumber",
          if (cardHolderName.isNotEmpty) "cardHolderName": cardHolderName,
          if (cvv.isNotEmpty) "cvv": cvv,
        })
        .call((data) => data.toDomain());
  }

  @override
  Future<void> confirmCard({required String cardId, required String otp}) {
    // debugPrint("confirmCard ${cardId}  ${otp}");
    // await Future.delayed(Duration(seconds: 2));
    return service.confirmCard(cardId: cardId, body: {"otp": otp}).call();
  }

  // @override
  // Future<void> confirmCard({
  //   required String otp,
  // }) {
  //   return service.confirmCard(cardId:,bool).call();
  // }

  // @override
  // Future bindCard({
  //   required String pan,
  //   required String expiry,
  //
  // }) {
  //   return service.bindCard({
  //     "pan": pan,
  //     "expiry": expiry,
  //     "name": name,
  //     "cardColorId": colorId,
  //   }).call();
  // }

  @override
  Future<CardType> findCardType({
    required String pan,
    CancelToken? cancelToken,
  }) {
    return service
        .findCardType(pan, cancelToken)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<String>> cardImages() {
    return service.cardColors().call(
      (data) => data.items.map((e) => e.image).nonNulls.toList(),
    );
  }

  @override
  Future<void> confirmPay({required String paymentId}) {
    return service.confirmTopUp({"paymentId": paymentId}).call();
  }

  @override
  Future<PaymentResultTopUp> pay({
    required String merchantId,
    required double amount,
    required String cardId,
  }) {
    return service
        .paymentTopUp({
          "serviceId": merchantId,
          "amount": amount.toInt(),
          "cardId": cardId,
        })
        .call(
          (value) => PaymentResultTopUp(
            paymentId: value.paymentId,
            checkUrl: value.checkUrl,
          ),
        );
  }

  @override
  Future<List<PaymentHistoryItem>> paymentHistory({
    int page = 0,
    int pageSize = 20,
  }) {
    return service
        .paymentHistory(page: page, pageSize: pageSize)
        .parseObjectAsync(
          mapper: (dto) {
            return (dto as ItemsResponse<PaymentHistoryItemDto>).items
                .map((e) => e.toDomain())
                .toList();
          },
          fromJson: (json) => ItemsResponse.fromJson(
            json,
            (e) => PaymentHistoryItemDto.fromJson(e as Map<String, dynamic>),
          ),
        );
  }

  @override
  Future<Merchant> paymentMerchant({required String merchantId}) {
    return service.merchant(merchantId).call((data) => data.toDomain());
  }

  @override
  Future<TransactionItem> paymentCheck({required String paymentId}) async {
    // final jsonStr = """
    // {
    //     "items": [
    //         {
    //             "key": "Transaction",
    //             "value": "48d63be2-e18c-48b4-aa9d-e05954dc4634"
    //         },
    //         {
    //             "key": "PaymentDate",
    //             "value": "2025-08-10T12:49:23.754547Z"
    //         }
    //     ],
    //     "date": "2025-08-10T12:49:23.754547Z",
    //     "paymentId": "48d63be2-e18c-48b4-aa9d-e05954dc4634",
    //     "amount": 1000,
    //     "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/ac7095a3dca3434fab4fbfe773030a87",
    //         "name": "child",
    //         "type": "sdfhsd"
    //     }
    // }
    // """;
    // await Future.delayed(Duration(seconds: 1));
    // Future.error(AppException(message: "parceEsdjfhgsdf"));//
    // return TransactionItemDto.fromJson(jsonDecode(jsonStr)).toDomain();

    return service
        .paymentCheck(paymentId: paymentId)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<Merchant>> merchants() {
    return service.getAllMerchants().parseObjectAsync(
      mapper: (dto) {
        return (dto as ItemsResponse<MerchantDto>).items
            .map((e) => e.toDomain())
            .toList();
      },
      fromJson: (json) => ItemsResponse.fromJson(
        json,
        (e) => MerchantDto.fromJson(e as Map<String, dynamic>),
      ),
    );
  }

  @override
  Future<List<GroupBy<Merchant>>> groupByMerchants() {
    return service.groupByMerchants().parseListAsync(
      mapper: (dto) {
        return dto.toDomain();
      },
      fromJson: GroupByMerchantsDto.fromJson,
    );
  }
}
