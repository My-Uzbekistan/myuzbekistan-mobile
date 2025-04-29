import 'package:core/src/data/dio_refresh/token_store.dart' show TokenStore;
import 'package:dio/dio.dart';

typedef OnRefreshCallback = Future<TokenStore> Function(Dio, TokenStore);

typedef ShouldRefreshCallback = bool Function(Response?);

typedef TokenHeaderCallback = Map<String, String> Function(TokenStore);