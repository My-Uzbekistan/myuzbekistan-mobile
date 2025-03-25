
import 'package:core/src/data/dio_refresh/token_store.dart';
import 'package:flutter/material.dart';

class TokenManager {
  String? _refreshToken;
  String? _accessToken;

  // Private constructor for the singleton instance.
  static final TokenManager _instance = TokenManager._internal();

  TokenManager._internal();

  /// Retrieves the singleton instance of `TokenManager`.
  static TokenManager get instance => _instance;

  /// Returns the current refresh token.
  String? get refreshToken => _refreshToken;

  /// Returns the current access token.
  String? get accessToken => _accessToken;

  /// Retrieves the current tokens as a `TokenStore` object.
  TokenStore get tokenStore => TokenStore(
    accessToken: _accessToken,
    refreshToken: _refreshToken,
  );

  /// A `ValueNotifier` that tracks whether the refresh process is active.
  ///
  /// This is useful for observing the refresh state and triggering actions
  /// when a refresh is in progress or has completed.
  final ValueNotifier<bool> _isRefreshing = ValueNotifier(false);

  /// Provides access to the `ValueNotifier` indicating whether a refresh is in progress.
  ValueNotifier<bool> get isRefreshing => _isRefreshing;

  /// Updates the stored tokens with a new `TokenStore`.
  ///
  /// This method should be called after a successful token refresh to update
  /// the access and refresh tokens with new values.
  ///
  /// [tokenStore] - The new `TokenStore` containing the updated tokens.
  void setToken(TokenStore tokenStore) {
    _accessToken = tokenStore.accessToken;
    _refreshToken = tokenStore.refreshToken;
  }
}