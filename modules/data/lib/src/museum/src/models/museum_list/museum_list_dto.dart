import 'package:data/src/museum/src/models/museum_card/museum_card_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_list_dto.g.dart';

@JsonSerializable()
class MuseumListDto {
  final List<MuseumCardDto>? items;
  final int? page;
  final int? totalItems;
  final int? totalPages;
  final bool? hasNext;

  MuseumListDto({
    this.items,
    this.page,
    this.totalItems,
    this.totalPages,
    this.hasNext,
  });

  factory MuseumListDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumListDtoFromJson(json);

  MuseumList toDomain() => MuseumList(
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
    page: page ?? 1,
    totalItems: totalItems ?? 0,
    totalPages: totalPages ?? 0,
    hasNext: hasNext ?? false,
  );
}
