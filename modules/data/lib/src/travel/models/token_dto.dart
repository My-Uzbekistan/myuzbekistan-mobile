
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto {
  String access_token;
  String refresh_token;
  int expires;

  TokenDto(
      {required this.access_token,
      required this.refresh_token,
      required this.expires});

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenDtoToJson(this);

Token toDomain() {
  return Token(accessToken: access_token,refreshToken: refresh_token,expires: expires);
}
}
