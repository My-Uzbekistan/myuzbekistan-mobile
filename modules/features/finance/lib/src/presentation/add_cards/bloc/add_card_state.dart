part of 'add_card_bloc.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const AddCardState._();

  const factory AddCardState({
    required String pan,
    @Default([]) List<String> images,
    String? selectedImage,
    String? cardBrand,
    AddCardParams? params,
    AddCardNavState? navState,
    @Default(false) bool isLoading,
  }) = _AddCardState;

  bool hasDataSuccess() {
    final checkImage = images.isNotEmpty ? selectedImage != null : true;
    return pan.length >= 16 && params?.hasDataSuccess() == true && checkImage;
  }

  bool get isExternal => params is AddCardExternalParams;

  String? get cardExpire {
    final expiry = switch (params) {
      AddCardExternalParams(:final expiry) => expiry,
      AddCardOwnParams(:final expiry) => expiry,
      _ => null,
    };
    return expiry?.isNotEmpty == true ? expiry : null;
  }
}

@freezed
abstract class AddCardParams with _$AddCardParams {
  const AddCardParams._();

  bool hasDataSuccess() {
    if (this is AddCardExternalParams) {
      final param = this as AddCardExternalParams;
      return param.expiry.length >= 5 &&
          param.cvv.length >= 3 &&
          param.cardHolderName.trim().isNotEmpty;
    } else if (this is AddCardOwnParams) {
      final param = this as AddCardOwnParams;
      return param.expiry.length >= 5;
    }
    return false;
  }

  const factory AddCardParams.externalParams({
    @Default("") String expiry,
    @Default("") String cvv,
    @Default("") String cardHolderName,
  }) = AddCardExternalParams;

  const factory AddCardParams.ownParams({@Default("") String expiry}) =
      AddCardOwnParams;
}

@freezed
abstract class AddCardNavState with _$AddCardNavState {
  const factory AddCardNavState.verify({required int cardId}) =
      AddCardVerifyNavState;

  const factory AddCardNavState.error({String? message}) = AddCardErrorNavState;

  const factory AddCardNavState.completed() = AddCardCompletedNavState;
}
