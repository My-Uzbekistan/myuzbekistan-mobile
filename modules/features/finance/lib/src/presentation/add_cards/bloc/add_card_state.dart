part of 'add_card_bloc.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const AddCardState._();

  const factory AddCardState({
    required String pan,
    AddCardParams? params,
    AddCardNavState? navState,
    @Default(false) bool isLoading,
  }) = _AddCardState;

  bool hasDataSuccess() {
    return pan.length >= 16 && params?.hasDataSuccess() == true;
  }
  bool  get isExternal => params is AddCardExternalParams;
}

@freezed
abstract class AddCardParams with _$AddCardParams {
  const AddCardParams._();
  bool hasDataSuccess() {
    if (this is AddCardExternalParams) {
      final param = this as AddCardExternalParams;
      return param.expiry.length >= 5 &&
          param.cvv.length >= 3 &&
          param.cardHolderName.length >= 4;
    } else if (this is AddCardOwnParams) {
      final param = this as AddCardOwnParams;
      return param.expiry.length >= 5 && param.phone.length >= 9;
    }
    return false;
  }

  const factory AddCardParams.externalParams({
    @Default("") String expiry,
    @Default("") String cvv,
    @Default("") String cardHolderName,
  }) = AddCardExternalParams;

  const factory AddCardParams.ownParams({
    @Default("") String expiry,
    @Default("") String phone,
  }) = AddCardOwnParams;
}


@freezed
abstract class AddCardNavState with _$AddCardNavState {
  const factory AddCardNavState.verify({required int cardId}) = AddCardVerifyNavState;
  const factory AddCardNavState.error({String? message}) = AddCardErrorNavState;
  const factory AddCardNavState.completed() = AddCardCompletedNavState;
}
