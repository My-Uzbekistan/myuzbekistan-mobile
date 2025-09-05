part of 'merchants_bloc.dart';


@freezed
abstract class MerchantsState with _$MerchantsState {

  factory MerchantsState.loading() = LoadingState;

  factory MerchantsState.dataState({
    required List<GroupBy<Merchant>> groups
  }) = DataState;

}