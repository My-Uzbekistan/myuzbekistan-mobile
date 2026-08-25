import 'package:data/src/market/src/models/cart_seller/cart_seller_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'cart_dto.g.dart';

@JsonSerializable()
class CartDto {
  final List<CartSellerDto>? sellers;
  final int? totalCount;
  final int? selectedCount;
  final int? selectedTotal;

  CartDto({
    this.sellers,
    this.totalCount,
    this.selectedCount,
    this.selectedTotal,
  });

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);

  Cart toDomain() => Cart(
    sellers: sellers?.map((e) => e.toDomain()).toList() ?? const [],
    totalCount: totalCount ?? 0,
    selectedCount: selectedCount ?? 0,
    selectedTotal: selectedTotal ?? 0,
  );
}
