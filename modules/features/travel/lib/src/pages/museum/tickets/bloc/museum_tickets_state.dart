part of 'museum_tickets_bloc.dart';

@freezed
abstract class MuseumTicketsState with _$MuseumTicketsState {
  factory MuseumTicketsState({
    @Default(MuseumOrderState.active) MuseumOrderState filter,
    @Default([]) List<MuseumOrder> orders,
    @Default(0) int activeCount,
    @Default(0) int usedCount,
    @Default(0) int expiredCount,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MuseumTicketsState;

  const MuseumTicketsState._();

  int get count => switch (filter) {
    MuseumOrderState.active => activeCount,
    MuseumOrderState.used => usedCount,
    MuseumOrderState.expired => expiredCount,
    MuseumOrderState.pending => orders.length,
  };
}
