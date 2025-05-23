import 'dart:io';

import 'package:dio/dio.dart' show Interceptor, RequestInterceptorHandler, RequestOptions;

import '../../../../core.dart' show AppLocaleX, AppPreference;
import '../../../shared/local/security_storage.dart';

class AppInterceptor extends Interceptor {
  final AppPreference preference;
  final SecurityStorage securityStorage;

  AppInterceptor(this.preference, this.securityStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest

    options.queryParameters.addAll({
      "culture": preference.getLocale().culture,
      "platform": Platform.isIOS ? "ios" : "android"
    });
    if (securityStorage.getAccessToken() != null) {
      options.headers.addAll({
        HttpHeaders.authorizationHeader:
            "Bearer ${securityStorage.getAccessToken()}"
      });
    }
    return handler.next(options);
  }
}