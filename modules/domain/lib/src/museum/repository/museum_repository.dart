import '../models/museum_card.dart';
import '../models/museum_city.dart';
import '../models/museum_detail.dart';
import '../models/museum_home.dart';
import '../models/museum_list.dart';
import '../models/museum_order.dart';
import '../models/museum_order_state.dart';
import '../models/museum_purchase_item.dart';
import '../models/museum_reviews.dart';
import '../models/museum_sort.dart';
import '../models/museum_tariff.dart';
import '../models/museum_tickets.dart';

abstract class MuseumRepository {
  Future<MuseumHome> home({double? latitude, double? longitude});

  Future<MuseumList> museums({
    required int page,
    required int pageSize,
    String? search,
    String? city,
    MuseumSort? sort,
    double? latitude,
    double? longitude,
  });

  Future<List<MuseumCity>> cities();

  Future<MuseumDetail> detail({
    required String museumId,
    double? latitude,
    double? longitude,
  });

  Future<List<MuseumTariff>> tariffs({required String museumId});

  Future<MuseumOrder> createOrder({
    required String museumId,
    required int cardId,
    required String idempotencyKey,
    required List<MuseumPurchaseItem> items,
  });

  Future<MuseumOrder> issueTickets({required int orderId});

  Future<MuseumTickets> tickets({MuseumOrderState? state});

  Future<List<MuseumOrder>> orders();

  Future<MuseumOrder> order({required int orderId});

  Future<List<MuseumCard>> favorites();

  Future<void> addFavorite({required String museumId});

  Future<void> removeFavorite({required String museumId});

  Future<List<String>> searchHistory();

  Future<void> deleteSearchHistory({required int searchId});

  Future<void> clearSearchHistory();

  Future<MuseumReviews> reviews({
    required String museumId,
    required int page,
    required int pageSize,
  });

  Future<Map<int, int>> reviewCounts({required String museumId});

  Future<dynamic> addReview({
    required String museumId,
    required int rating,
    String? comment,
  });

  Future<dynamic> deleteReview({required String museumId});
}
