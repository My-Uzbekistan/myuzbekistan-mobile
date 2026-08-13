import 'package:shared/shared.dart';

part 'items_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ItemsResponse<T> {
  final List<T> items;
  final int totalItems;

  ItemsResponse({
    required this.items,
    required this.totalItems,
  });

  factory ItemsResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ItemsResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) => _$ItemsResponseToJson(this, toJsonT);
}