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
  }) {
    debugPrint("bindCard");
    // await Future.delayed(Duration(seconds: 5));
    // return CardIdDto(cardId: 123).toDomain();
    return service
        .bindCard({
          "pan": pan,
          "expiry": expiry,
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
  Future<List<CardColor>> loadCardColors() {
    return service.cardColors().call(
      (data) => data.items.map((e) => e.toDomain()).toList(),
    );
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
    //     const String paymentHistoryJson = '''
    // {
    //   "items": [
    //     {
    //       "date": "2025-08-10T12:49:23.754547Z",
    //       "paymentId": "48d63be2-e18c-48b4-aa9d-e05954dc4634",
    //       "amount": 1000,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/ac7095a3dca3434fab4fbfe773030a87",
    //         "name": "child",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:40:14.250097Z",
    //       "paymentId": null,
    //       "amount": 50,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:39:54.534508Z",
    //       "paymentId": null,
    //       "amount": 50,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:38:29.628406Z",
    //       "paymentId": null,
    //       "amount": 50,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:38:17.111848Z",
    //       "paymentId": null,
    //       "amount": 50,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:38:14.007611Z",
    //       "paymentId": null,
    //       "amount": 5,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:20:01.541431Z",
    //       "paymentId": null,
    //       "amount": 5,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/6ebd799ace3d4310ac8bb0cc84e27933",
    //         "name": "3ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:19:32.346776Z",
    //       "paymentId": null,
    //       "amount": 5,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/996422764b4d4cf6855aea3ef1ee63b8",
    //         "name": "2ch",
    //         "type": "sdfhsd"
    //       }
    //     },
    //     {
    //       "date": "2025-06-28T10:14:57.171869Z",
    //       "paymentId": null,
    //       "amount": 5,
    //       "merchant": {
    //         "icon": "https:/minio.uzdc.uz/myzubekistan/uploads/ac7095a3dca3434fab4fbfe773030a87",
    //         "name": "child",
    //         "type": "sdfhsd"
    //       }
    //     }
    //   ],
    //   "totalItems": 9
    // }
    // ''';
    //
    //     return Future.value(
    //       ItemsResponse
    //           .fromJson(
    //         jsonDecode(paymentHistoryJson),
    //             (e) => PaymentHistoryItemDto.fromJson(e as Map<String, dynamic>),
    //       )
    //           .items
    //           .map((e) => e.toDomain())
    //           .toList(),
    //     );
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
}
