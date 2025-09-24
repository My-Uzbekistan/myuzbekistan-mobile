import 'package:data/src/finance/src/models/card_colors.dart';
import 'package:data/src/finance/src/models/card_id_dto.dart';
import 'package:data/src/finance/src/models/card_type.dart';
import 'package:data/src/finance/src/models/payment_top_up_response_dto.dart';
import 'package:data/src/models/items_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:shared/shared.dart';

import '../../models/card_item.dart';
import '../../models/merchant_dto.dart';
import '../../models/payment_check/transaction_item_dto.dart';

part 'finance_api_service.g.dart';

@injectable
@RestApi()
abstract class FinanceApiService {
  @factoryMethod
  factory FinanceApiService(Dio dio) = _FinanceApiService;

  @GET("cards/list-card")
  Future<List<CardItemDto>> getCards();

  @DELETE("cards/{cardId}")
  Future<void> deleteCard(@Path("cardId") int cardId);

  @GET("cards/card-type")
  Future<CardTypeDto> findCardType(
    @Query("cardNumber") String cardNumber, [
    CancelToken? cancelToken,
  ]);

  @GET("cards/card-colors")
  Future<ItemsResponse<CardColorDto>> cardColors();

  @POST("cards/bind-card")
  Future<CardIdDto> bindCard(@Body() Map<String, dynamic> body);

  @POST("cards/confirm-card/{cardId}")
  Future<void> confirmCard({
    @Path("cardId") required String cardId,
    @Body() required Map<String, dynamic> body,
  });

  @GET("merchants")
  Future<dynamic> getAllMerchants();

  @GET("merchants/grouped-by-service-type")
  Future<dynamic> groupByMerchants();

  @GET("merchants/{merchantId}")
  Future<MerchantDto> merchant(@Path("merchantId") String merchantId);

  @POST("payments/top-up")
  Future<PaymentResultTopUpResponseDto> paymentTopUp(
    @Body() Map<String, dynamic> body,
  );

  @POST("payments/confirm-top-up")
  Future<void> confirmTopUp(@Body() Map<String, dynamic> body);

  @GET("payments")
  Future<dynamic> paymentHistory({
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
  });

  @GET("payments/check/{paymentId}")
  Future<TransactionItemDto> paymentCheck({
    @Path("paymentId") required String paymentId,
  });
}
