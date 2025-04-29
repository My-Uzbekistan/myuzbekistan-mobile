import 'dart:async';
import 'dart:io';

import 'package:core/src/data/dio_refresh/token_manager.dart';
import 'package:core/src/data/dio_refresh/types.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:synchronized/extension.dart';

class DioRefreshInterceptor extends Interceptor {
  /// Manages the current token state and refresh process.
  final TokenManager tokenManager;

  final OnRefreshCallback onRefresh;
  final ShouldRefreshCallback shouldRefresh;

  final TokenHeaderCallback authHeader;

  DioRefreshInterceptor({
    required this.tokenManager,
    required this.onRefresh,
    required this.shouldRefresh,
    required this.authHeader,
  });

  @override
  Future<void> onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    await _checkForRefreshToken();

    final header = authHeader(tokenManager.tokenStore);
    final headers = {...options.headers, ...header};

    super.onRequest(options.copyWith(headers: headers), handler);
  }
  @override
  Future<void> onError(
      DioException err,
      ErrorInterceptorHandler handler,
      ) async {
    final request = err.requestOptions;
    final response = err.response;

    if (tokenManager.accessToken != null && shouldRefresh(response)) {
      if (tokenManager.isRefreshing.value) {
        await _checkForRefreshToken();
      } else {
        await synchronized(() async {
          bool isAccessTokenValid = false;
          try {
            isAccessTokenValid = JwtDecoder.isExpired(
              tokenManager.accessToken!,
            );
          } catch (_) {}

          if (!isAccessTokenValid) {
            try {
              tokenManager.isRefreshing.value = true;

              final headers = {...request.headers};
              headers.remove(HttpHeaders.contentLengthHeader);

              final refreshDio = Dio(BaseOptions(
                sendTimeout: request.sendTimeout,
                receiveTimeout: request.receiveTimeout,
                extra: request.extra,
                headers: headers,
                responseType: request.responseType,
                contentType: request.contentType,
                validateStatus: request.validateStatus,
                receiveDataWhenStatusError: request.receiveDataWhenStatusError,
                followRedirects: request.followRedirects,
                maxRedirects: request.maxRedirects,
                requestEncoder: request.requestEncoder,
                responseDecoder: request.responseDecoder,
                listFormat: request.listFormat,
              ));
              final refreshResponse = await onRefresh(
                refreshDio,
                tokenManager.tokenStore,
              );
              tokenManager.setToken(refreshResponse);
              tokenManager.isRefreshing.value = false;
            } catch (e) {
              tokenManager.isRefreshing.value = false;
              handler.next(err);
            }
          }
        });
      }

      try {
        final header = authHeader(tokenManager.tokenStore);
        request.headers = {...request.headers, ...header};

        final dio = Dio(BaseOptions(baseUrl: request.baseUrl));
        final res = await dio.request(
          request.path,
          cancelToken: request.cancelToken,
          data: request.data,
          onReceiveProgress: request.onReceiveProgress,
          onSendProgress: request.onSendProgress,
          queryParameters: request.queryParameters,
          options: Options(
            method: request.method,
            sendTimeout: request.sendTimeout,
            receiveTimeout: request.receiveTimeout,
            extra: request.extra,
            headers: request.headers,
            responseType: request.responseType,
            contentType: request.contentType,
            validateStatus: request.validateStatus,
            receiveDataWhenStatusError: request.receiveDataWhenStatusError,
            followRedirects: request.followRedirects,
            maxRedirects: request.maxRedirects,
            requestEncoder: request.requestEncoder,
            responseDecoder: request.responseDecoder,
            listFormat: request.listFormat,
          ),
        );
        handler.resolve(res);
      } on DioException catch (e) {
        debugPrint("refreshtoken Exaption ${e}");
        handler.next(e);
      }
    } else {
      handler.next(err);
    }
  }

  /// A helper method to wait for any ongoing token refresh process to complete.
  ///
  /// The `_checkForRefreshToken` method creates a `Completer` that completes once
  /// the `isRefreshing` state of the `tokenManager` changes to `false`, indicating
  /// that the refresh process has finished.
  Future<void> _checkForRefreshToken() {
    Completer<void> completer = Completer();

    void listener() {
      if (!tokenManager.isRefreshing.value) {
        completer.complete();
        tokenManager.isRefreshing.removeListener(listener);
      }
    }

    if (tokenManager.isRefreshing.value) {
      tokenManager.isRefreshing.addListener(listener);
    } else {
      completer.complete();
    }

    return completer.future;
  }
}