part of 'payment_bloc.dart';

@freezed
abstract class PaymentState with _$PaymentState {
  const PaymentState._();

  const factory PaymentState.loadingState() = PaymentLoadingState;
  const factory PaymentState.errorState({String? message}) = PaymentErrorState;

  const factory PaymentState.dataState({
    required Merchant merchant,
    @Default([]) List<CardItem> cards,
    CardItem? selectedCard,
    double? amount,
    @Default(false) bool isPayLoading,
    PaymentNavState? navState,
  }) = PaymentDataState;

  bool get hasDataSucceed => maybeMap(
    dataState: (data) {
      return data.selectedCard != null && (data.amount ?? 0) >= 1000.0;
    },
    orElse: () => false,
  );
}

@freezed
abstract class PaymentNavState with _$PaymentNavState {
  const factory PaymentNavState.paymentSuccess({
    required MerchantItem merchant,
    required int amount,
    required String paymentId,
  }) = PaymentNavStateSuccess;

  const factory PaymentNavState.confirmWithWeb(
      {
    required String confirmUrl,
    required String paymentId,
  }) =
      PaymentNavStateConfirmWithWeb;

  const factory PaymentNavState.error({String? message}) =
      PaymentNavStateExaception;
}
