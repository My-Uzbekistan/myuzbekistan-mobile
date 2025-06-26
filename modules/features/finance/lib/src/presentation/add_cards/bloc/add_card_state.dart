part of 'add_card_bloc.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState({
    required String cardNumber,
    required String expire,
    String? cvv,
    String? alias,
    @Default(false) bool isLoading,
  }) = _AddCardState;
}
