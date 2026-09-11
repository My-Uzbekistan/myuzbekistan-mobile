import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_suggestion_dto.g.dart';

@JsonSerializable()
class SearchSuggestionDto {
  final String? type;
  final int id;
  final String? title;

  SearchSuggestionDto({this.type, required this.id, this.title});

  factory SearchSuggestionDto.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionDtoFromJson(json);

  SearchSuggestion toDomain() => SearchSuggestion(
    type: SearchSuggestionType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => SearchSuggestionType.content,
    ),
    id: id,
    title: title ?? "",
  );
}
