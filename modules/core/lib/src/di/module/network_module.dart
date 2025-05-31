import 'dart:io';

import 'package:core/core.dart';
import 'package:core/src/constants.dart';
import 'package:core/src/data/dio_refresh/dio_refresh.dart';
import 'package:core/src/data/dio_refresh/token_manager.dart';
import 'package:core/src/data/network/interseptors/TokenRefreshInterceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_alice/alice.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/dio_refresh/token_store.dart';
import '../../data/network/interseptors/AppInterceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Alice getAlice() {
    return Alice();
  }

  @Named('baseUrl')
  @LazySingleton(env: [Environment.prod])
  String get devApiUrl => AppConstants.baseUrlAPi;

  @Named('baseUrl')
  @LazySingleton(env: [Environment.dev])
  String get prodApiUrl => AppConstants.baseUrlDevAPi;

  @lazySingleton
  Dio provideDio(
      AppPreference preference, SecurityStorage securityStorage,@Named('baseUrl') String baseUrl, Alice alice) {
    final dioOptions = BaseOptions(baseUrl: baseUrl)
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 30);
    final dio = Dio(dioOptions);
    final tokenManager = TokenManager.instance;
    tokenManager.setToken(
      TokenStore(
        accessToken: securityStorage.getAccessToken(),
        refreshToken: securityStorage.getRefreshToken(),
      ),
    );
    dio.interceptors.add(AppInterceptor(preference, securityStorage));
    dio.interceptors.add(
      TokenRefreshInterceptor(securityStorage: securityStorage),
    );
    if (kDebugMode) {
      dio.interceptors.add(alice.getDioInterceptor());
      dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }
    return dio;
  }
}
