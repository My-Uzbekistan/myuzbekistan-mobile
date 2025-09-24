part of 'payment_check_bloc.dart';

@freezed
abstract class PaymentCheckEvent with _$PaymentCheckEvent{

const factory PaymentCheckEvent.load({required String paymentId}) = PaymentCheckLoad;
}