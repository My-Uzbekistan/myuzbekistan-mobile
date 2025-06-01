
part of  'content_dto.dart';

@JsonSerializable(genericArgumentFactories: true)
class FieldDto<T> {
  final String? name;
  final T? value;

  const FieldDto({
    this.name,
    this.value,
  });

  factory FieldDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$FieldDtoFromJson(json, fromJsonT);



}
