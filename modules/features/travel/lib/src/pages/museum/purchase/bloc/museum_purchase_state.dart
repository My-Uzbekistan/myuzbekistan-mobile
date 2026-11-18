part of 'museum_purchase_bloc.dart';

@freezed
abstract class MuseumPurchaseState with _$MuseumPurchaseState {
  factory MuseumPurchaseState({
    @Default("") String museumId,
    @Default("") String idempotencyKey,
    MuseumDetail? detail,
    @Default([]) List<MuseumTariff> tariffs,
    @Default({}) Map<String, int> quantities,
    @Default([]) List<CardItem> cards,
    MuseumOrder? order,
    @Default(false) bool isLoading,
    @Default(false) bool isPaying,
    @Default(false) bool isSuccess,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MuseumPurchaseState;

  const MuseumPurchaseState._();

  List<MuseumTariff> get purchasableTariffs =>
      tariffs.expand((tariff) => tariff.purchasableLeaves).toList();

  List<MuseumPurchaseItem> get items => [
    for (final entry in quantities.entries)
      if (entry.value > 0)
        MuseumPurchaseItem(tariffId: entry.key, quantity: entry.value),
  ];

  int get totalAmount => purchasableTariffs.fold<int>(
    0,
    (total, tariff) =>
        total + (tariff.price ?? 0) * (quantities[tariff.id] ?? 0),
  );

  int get ticketsCount =>
      quantities.values.fold<int>(0, (total, quantity) => total + quantity);

  bool get isWaitingIssue => this.order != null && !isSuccess;
}
