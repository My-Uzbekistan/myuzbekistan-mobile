import 'package:domain/domain.dart';

/// GET auth/user-info javobi DTO.
class UserInfoDto {
  final String? name;
  final num? balance;
  final String? profilePictureUrl;

  const UserInfoDto({this.name, this.balance, this.profilePictureUrl});

  factory UserInfoDto.fromJson(Map<String, dynamic> json) => UserInfoDto(
    name: json["name"] as String?,
    balance: json["balance"] as num?,
    profilePictureUrl: json["profilePictureUrl"] as String?,
  );

  UserInfoModel toDomain() => UserInfoModel(
    name: name,
    balance: balance,
    profilePictureUrl: profilePictureUrl,
  );
}
