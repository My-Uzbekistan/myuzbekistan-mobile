part of 'gift_bloc.dart';



@freezed
abstract class GiftBlocEvent with _$GiftBlocEvent {
  factory GiftBlocEvent.initial() = _InitialGiftBlocEvent;
  factory GiftBlocEvent.activeGift() = _ActiveteGiftGiftBlocEvent;
  factory GiftBlocEvent.loadGiftHistory() = _LoadGiftHistoryGiftBlocEvent;
  factory GiftBlocEvent.clearActiveGift() = _ClearActiveGiftBlocEvent;
}

