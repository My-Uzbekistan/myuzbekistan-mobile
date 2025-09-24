class Token {
  String accessToken;
  String refreshToken;
  int expires;
  bool hasPin;

  Token({
    required this.accessToken,
    required this.refreshToken,
    required this.expires,
    this.hasPin = false,
  });
}
