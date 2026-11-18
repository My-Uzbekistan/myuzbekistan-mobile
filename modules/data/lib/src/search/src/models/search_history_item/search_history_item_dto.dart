import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_history_item_dto.g.dart';

@JsonSerializable()
class SearchHistoryItemDto {
  final int id;
  final String? query;

  SearchHistoryItemDto({required this.id, this.query});

  factory SearchHistoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryItemDtoFromJson(json);

  SearchHistoryItem toDomain() =>
      SearchHistoryItem(id: id, query: query ?? "");
}
