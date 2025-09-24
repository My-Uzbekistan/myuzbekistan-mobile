import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto {
  @JsonKey(name: "access_token")
  String accessToken;
  @JsonKey(name: "refresh_token")
  String refreshToken;
  int expires;
  bool hasPin;

  TokenDto({
    required this.accessToken,
    required this.refreshToken,
    required this.expires,
    this.hasPin = false,
  });

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenDtoToJson(this);

  Token toDomain() {
    return Token(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expires: expires,
      hasPin: hasPin
    );
  }
}
