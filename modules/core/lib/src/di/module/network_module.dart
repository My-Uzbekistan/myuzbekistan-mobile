import 'dart:io';

import 'package:core/core.dart';
import 'package:core/src/constants.dart';
import 'package:core/src/data/dio_refresh/dio_refresh.dart';
import 'package:core/src/data/dio_refresh/token_manager.dart';
import 'package:core/src/data/network/interseptors/TokenRefreshInterceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/dio_refresh/token_store.dart';
import '../../data/network/interseptors/AppInterceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio provideDio(AppPreference preference, SecurityStorage securityStorage) {
    final dioOptions = BaseOptions(baseUrl: AppConstants.baseUrlAPi)
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
    debugPrint("refrehToken  ${securityStorage.getRefreshToken()} ");
    dio.interceptors.add(AppInterceptor(preference, securityStorage));
    dio.interceptors.add(
      TokenRefreshInterceptor(securityStorage:securityStorage),
    );
    dio.interceptors.add(PrettyDioLogger(requestBody: true));
    return dio;
  }
}
