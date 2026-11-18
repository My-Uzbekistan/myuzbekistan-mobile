import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'registration_method_dto.g.dart';

@JsonSerializable()
class RegistrationMethodDto {
  final String? key;
  final String? title;

  RegistrationMethodDto({this.key, this.title});

  factory RegistrationMethodDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationMethodDtoFromJson(json);

  RegistrationMethod toDomain() => RegistrationMethod(
    key: RegistrationMethodKey.values.firstOrNullWhere((e) => e.name == key),
    title: title,
  );
}
