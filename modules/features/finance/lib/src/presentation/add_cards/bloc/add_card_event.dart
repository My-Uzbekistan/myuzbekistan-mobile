part of 'add_card_bloc.dart';

@freezed
abstract class AddCardEvent with _$AddCardEvent {
  factory AddCardEvent.setData({
    required String cardNumber,
    required  String expire,
    String? cvv,
    String? name,
  }) = _SetDataEvent;
}
