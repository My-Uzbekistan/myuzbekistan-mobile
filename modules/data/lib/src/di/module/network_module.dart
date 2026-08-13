

import 'package:data/src/constants.dart';
import 'package:data/src/interseptors/TokenRefreshInterceptor.dart';
import 'package:data/src/interseptors/device_headers_interceptor.dart';
import "package:dio/dio.dart" ;
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_alice/alice.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../interseptors/AppInterceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Alice getAlice() {
    return Alice(showInspectorOnShake: true);
  }

  @Named('baseUrl')
  @LazySingleton(env: [Environment.prod])
  String get prodApiUrl => AppConstants.baseApiUrl;

  @Named('baseUrl')
  @LazySingleton(env: [Environment.dev])
  String get devApiUrl => AppConstants.baseDevApiUrl;

  @lazySingleton
  Dio provideDio(
    AppPreference preference,
    SecurityStorage securityStorage,
    @Named('baseUrl') String baseUrl,
    Alice alice,
  ) {
    final dioOptions =
        BaseOptions(baseUrl: baseUrl)
          ..connectTimeout = const Duration(seconds: 30)
          ..receiveTimeout = const Duration(seconds: 30);
    final dio = Dio(dioOptions);
    // final tokenManager = TokenManager.instance;
    // tokenManager.setToken(
    //   TokenStore(
    //     accessToken: securityStorage.getAccessToken(),
    //     refreshToken: securityStorage.getRefreshToken(),
    //   ),
    // );
    dio.interceptors.add(DeviceHeadersInterceptor());
    dio.interceptors.add(AppInterceptor(preference, securityStorage));
    dio.interceptors.add(
      TokenRefreshInterceptor(securityStorage: securityStorage,mainDio: dio),
    );
    // dio.transformer = BackgroundTransformer()..jsonDecodeCallback = (text) {
    //   return json.decode(utf8.decode(text.codeUnits,allowMalformed: true));
    // };
    if (kDebugMode) {
      dio.interceptors.add(alice.getDioInterceptor());

      dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }
    dio.interceptors.add(ErrorInterceptor());
    return dio;
  }
}
