part of 'gift_bloc.dart';

@freezed
abstract class GiftBlocState with _$GiftBlocState {
  factory GiftBlocState({
    @Default(true) bool isLoading,
    @Default(false) haveGift,
     ClaimStatus? claimStatus,
    @Default(false) giftActivated,
    ClaimHistory? activeClaim,
    @Default([]) List<ClaimHistory> items,
    String? errorMessage,
  }) = _GiftBlocState;
}
