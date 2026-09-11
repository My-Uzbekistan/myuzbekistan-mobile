import 'package:data/src/search/src/models/search_merchant/search_merchant_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_merchants_block_dto.g.dart';

@JsonSerializable()
class SearchMerchantsBlockDto {
  final String? title;
  final int? totalItems;
  @JsonKey(defaultValue: [])
  final List<SearchMerchantDto> items;

  SearchMerchantsBlockDto({this.title, this.totalItems, this.items = const []});

  factory SearchMerchantsBlockDto.fromJson(Map<String, dynamic> json) =>
      _$SearchMerchantsBlockDtoFromJson(json);

  SearchMerchantsBlock toDomain() => SearchMerchantsBlock(
    title: title ?? "",
    totalItems: totalItems ?? items.length,
    items: items.map((e) => e.toDomain()).toList(),
  );
}
