import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_search_history_dto.g.dart';

@JsonSerializable()
class MarketSearchHistoryDto {
  final int id;
  final String? query;

  MarketSearchHistoryDto({required this.id, this.query});

  factory MarketSearchHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$MarketSearchHistoryDtoFromJson(json);

  MarketSearchHistory toDomain() =>
      MarketSearchHistory(id: id, query: query ?? "");
}
