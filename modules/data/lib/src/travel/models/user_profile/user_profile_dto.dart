import 'package:data/src/travel/models/user_profile/registration_method_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'user_profile_dto.g.dart';

@JsonSerializable()
class UserProfileDto {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? avatar;
  final bool? canChangeAvatar;
  final RegistrationMethodDto? registrationMethod;

  UserProfileDto({
    this.firstName,
    this.lastName,
    this.phone,
    this.avatar,
    this.canChangeAvatar,
    this.registrationMethod,
  });

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  UserProfile toDomain() => UserProfile(
    firstName: firstName,
    lastName: lastName,
    phone: phone,
    avatar: avatar,
    canChangeAvatar: canChangeAvatar ?? false,
    registrationMethod: registrationMethod?.toDomain(),
  );
}
