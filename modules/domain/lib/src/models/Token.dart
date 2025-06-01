class Token {
  String accessToken;
  String refreshToken;
  int expires;

  Token(
      {required this.accessToken,
      required this.refreshToken,
      required this.expires});
}
