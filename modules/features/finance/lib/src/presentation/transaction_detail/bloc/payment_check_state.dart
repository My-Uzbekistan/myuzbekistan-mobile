part of 'payment_check_bloc.dart';

@freezed
abstract class PaymentCheckState with _$PaymentCheckState {
  const factory PaymentCheckState.loading() = PaymentChekLoading;

  const factory PaymentCheckState.loaded({
    required TransactionItem transactionItem,
  }) = PaymentCheckLoaded;

  const factory PaymentCheckState.error({String? message}) = PaymentCheckError;
}

// @freezed
// abstract class PaymentCheckStateNavigation with _$PaymentCheckStateNavigation {
//   const factory PaymentCheckStateNavigation.error({String? message}) =
//       PaymentCheckErrorDialog;
// }
