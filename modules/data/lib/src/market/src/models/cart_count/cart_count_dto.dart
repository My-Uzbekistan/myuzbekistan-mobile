import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'cart_count_dto.g.dart';

@JsonSerializable()
class CartCountDto {
  final int? count;
  final String? title;

  CartCountDto({this.count, this.title});

  factory CartCountDto.fromJson(Map<String, dynamic> json) =>
      _$CartCountDtoFromJson(json);

  CartCount toDomain() => CartCount(count: count ?? 0, title: title ?? "");
}
