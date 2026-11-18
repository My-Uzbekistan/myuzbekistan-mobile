import 'package:data/src/museum/src/network/api/museum_api_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: MuseumRepository)
class MuseumRepositoryImpl extends MuseumRepository {
  final MuseumApiService service;

  MuseumRepositoryImpl(this.service);

  @override
  Future<MuseumHome> home({double? latitude, double? longitude}) {
    return service
        .home(lat: latitude, lon: longitude)
        .call((data) => data.toDomain());
  }

  @override
  Future<MuseumList> museums({
    required int page,
    required int pageSize,
    String? search,
    String? city,
    MuseumSort? sort,
    double? latitude,
    double? longitude,
  }) {
    return service
        .museums(
          page: page,
          pageSize: pageSize,
          search: search,
          city: city,
          sort: sort?.value,
          lat: latitude,
          lon: longitude,
        )
        .call((data) => data.toDomain());
  }

  @override
  Future<List<MuseumCity>> cities() {
    return service.cities().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<MuseumDetail> detail({
    required String museumId,
    double? latitude,
    double? longitude,
  }) {
    return service
        .detail(museumId: museumId, lat: latitude, lon: longitude)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<MuseumTariff>> tariffs({required String museumId}) {
    return service
        .tariffs(museumId)
        .call((items) => items.map((e) => e.toDomain()).toList());
  }

  @override
  Future<MuseumOrder> createOrder({
    required String museumId,
    required int cardId,
    required String idempotencyKey,
    required List<MuseumPurchaseItem> items,
  }) {
    return service
        .createOrder({
          "museumId": museumId,
          "cardId": cardId,
          "idempotencyKey": idempotencyKey,
          "items": items
              .map(
                (item) => {
                  "tariffId": item.tariffId,
                  "quantity": item.quantity,
                },
              )
              .toList(),
        })
        .call((data) => data.toDomain());
  }

  @override
  Future<MuseumOrder> issueTickets({required int orderId}) {
    return service.issueTickets(orderId).call((data) => data.toDomain());
  }

  @override
  Future<MuseumTickets> tickets({MuseumOrderState? state}) {
    return service.tickets(state: state?.value).call((data) => data.toDomain());
  }

  @override
  Future<List<MuseumOrder>> orders() {
    return service.orders().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<MuseumOrder> order({required int orderId}) {
    return service.order(orderId).call((data) => data.toDomain());
  }

  @override
  Future<List<MuseumCard>> favorites() {
    return service.favorites().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<void> addFavorite({required String museumId}) {
    return service.addFavorite(museumId).call();
  }

  @override
  Future<void> removeFavorite({required String museumId}) {
    return service.removeFavorite(museumId).call();
  }

  @override
  Future<List<String>> searchHistory() {
    return service.searchHistory().call();
  }

  @override
  Future<void> deleteSearchHistory({required int searchId}) {
    return service.deleteSearchHistory(id: searchId).call();
  }

  @override
  Future<void> clearSearchHistory() {
    return service.deleteSearchHistory().call();
  }

  @override
  Future<MuseumReviews> reviews({
    required String museumId,
    required int page,
    required int pageSize,
  }) {
    return service
        .reviews(museumId: museumId, page: page, pageSize: pageSize)
        .call((data) => data.toDomain());
  }

  @override
  Future<Map<int, int>> reviewCounts({required String museumId}) {
    return service
        .reviewCounts(museumId)
        .call(
          (counts) => {
            for (final entry in counts.entries)
              if (parseInt(entry.key) != null)
                parseInt(entry.key)!: entry.value,
          },
        );
  }

  @override
  Future<dynamic> addReview({
    required String museumId,
    required int rating,
    String? comment,
  }) {
    return service.addReview(
      museumId: museumId,
      body: {"rating": rating, if (comment != null) "comment": comment},
    );
  }

  @override
  Future<dynamic> deleteReview({required String museumId}) {
    return service.deleteReview(museumId);
  }
}
