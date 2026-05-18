class Token {
  String accessToken;
  String refreshToken;
  int expires;
  bool hasPin;
  String? phone;

  Token({
    required this.accessToken,
    required this.refreshToken,
    required this.expires,
    this.phone,
    this.hasPin = false,
  });
}
