part of 'add_card_bloc.dart';

@freezed
abstract class AddCardEvent with _$AddCardEvent {
  factory AddCardEvent.setExternalParams({
    required String expire,
    required String cvv,
    required String holderName,
     String? cardBrand,
  }) = _SetExtermalParamsEvent;

  factory AddCardEvent.setOwnParams({
    required String expire,
    required String phoneNumber,
    String? cardBrand,
  }) = _SetOwnParamsEvent;

  factory AddCardEvent.setCardNumber({required String cardNumber}) =
      _SetCardNumberEvent;


  factory AddCardEvent.add() = _AddEvent;
  factory AddCardEvent.selectColor(String colors) = _SelectColorEvent;
  factory AddCardEvent.loadCardImages() = _LoadCardImagesEvent;

}
