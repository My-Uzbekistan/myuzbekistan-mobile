
import 'package:core/src/data/dio_refresh/token_store.dart';
import 'package:flutter/material.dart';

class TokenManager {
  String? _refreshToken;
  String? _accessToken;

  static final TokenManager _instance = TokenManager._internal();

  TokenManager._internal();

  static TokenManager get instance => _instance;

  String? get refreshToken => _refreshToken;

  String? get accessToken => _accessToken;

  TokenStore get tokenStore => TokenStore(
    accessToken: _accessToken,
    refreshToken: _refreshToken,
  );

  final ValueNotifier<bool> _isRefreshing = ValueNotifier(false);
  ValueNotifier<bool> get isRefreshing => _isRefreshing;
  void setToken(TokenStore tokenStore) {
    _accessToken = tokenStore.accessToken;
    _refreshToken = tokenStore.refreshToken;
  }
}