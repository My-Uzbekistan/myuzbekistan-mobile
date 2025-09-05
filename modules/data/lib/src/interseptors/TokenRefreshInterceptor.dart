import 'dart:async';

import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants.dart';
import '../travel/models/token_dto.dart';

// class TokenRefreshInterceptor extends Interceptor {
//   SecurityStorage securityStorage;
//   final Dio mainDio;
//
//   TokenRefreshInterceptor({required this.securityStorage,required this.mainDio});
//
//   bool _isRefreshing = false;
//   Completer<void>? _refreshCompleter;
//   final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrlAPi))
//     ..interceptors.add(PrettyDioLogger(requestBody: true));
//
//   @override
//   onError(DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401 &&
//         (securityStorage.getRefreshToken() ?? "").isNotEmpty) {
//      return await _handleTokenRefresh(err, handler);
//     }
//     return handler.next(err);
//   }
//
//   Future<void> _handleTokenRefresh(
//     DioException error,
//     ErrorInterceptorHandler handler,
//   ) async {
//     if (_isRefreshing) {
//       await _refreshCompleter?.future;
//     } else {
//       _isRefreshing = true;
//       _refreshCompleter = Completer<void>();
//       try {
//         Response response = await _dio.post(
//           "/auth/refresh",
//           data: {"RefreshToken": securityStorage.getRefreshToken()},
//         );
//         final tokenDto = TokenDto.fromJson(response.data);
//         await securityStorage.setToken(token: tokenDto.toDomain());
//         _refreshCompleter?.complete();
//       } catch (e) {
//         securityStorage.clearData();
//         _refreshCompleter?.completeError(e);
//         return handler.reject(
//           error,
//         ); // Agar refresh xato bo‘lsa, request error qaytadi
//       } finally {
//         _isRefreshing = false;
//       }
//     }
//
//     // Eskirgan so‘rovni yangi token bilan qayta jo‘natish
//     final requestOptions = error.requestOptions;
//     requestOptions.headers["Authorization"] =
//         "Bearer  ${securityStorage.getAccessToken()}";
//
//     try {
//       final response = await mainDio.fetch(requestOptions);
//       return handler.resolve(response);
//     } catch (e) {
//       return handler.reject(error);
//     }
//   }
// }

// class TokenRefreshInterceptor extends Interceptor {
//   final SecurityStorage securityStorage;
//   final Dio mainDio;
//
//   TokenRefreshInterceptor({
//     required this.securityStorage,
//     required this.mainDio,
//   });
//
//   bool _isRefreshing = false;
//   Completer<void>? _refreshCompleter;
//
//   // Alohida Dio refresh uchun
//   final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrlAPi))
//     ..interceptors.add(PrettyDioLogger(requestBody: true));
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401 &&
//         (securityStorage.getRefreshToken() ?? "").isNotEmpty) {
//       return await _handleTokenRefresh(err, handler);
//     }
//
//     // Boshqa xatolar
//     return handler.next(err);
//   }
//
//   Future<void> _handleTokenRefresh(
//       DioException error, ErrorInterceptorHandler handler) async {
//     try {
//       if (_isRefreshing) {
//         // Boshqa request refresh tugashini kutadi
//         await _refreshCompleter?.future;
//       } else {
//         _isRefreshing = true;
//         _refreshCompleter = Completer<void>();
//         try {
//           // Refresh token request
//           final response = await _dio.post(
//             "/auth/refresh",
//             data: {"RefreshToken": securityStorage.getRefreshToken()},
//           );
//
//           final tokenDto = TokenDto.fromJson(response.data);
//           await securityStorage.setToken(token: tokenDto.toDomain());
//
//           _refreshCompleter?.complete();
//         } catch (e) {
//           // Refresh xato bo'lsa, barcha ma'lumotlarni tozalash
//           securityStorage.clearData();
//           _refreshCompleter?.completeError(e);
//           return handler.reject(error);
//         } finally {
//           _isRefreshing = false;
//         }
//       }
//
//       // Eskirgan requestni yangi token bilan qayta yuborish
//       final requestOptions = error.requestOptions;
//
//       final opts = Options(
//         method: requestOptions.method,
//         headers: {
//           ...requestOptions.headers,
//           "Authorization": "Bearer ${securityStorage.getAccessToken()}",
//         },
//         responseType: requestOptions.responseType,
//         contentType: requestOptions.contentType,
//         extra: requestOptions.extra,
//       );
//
//       final response = await mainDio.request(
//         requestOptions.path,
//         data: requestOptions.data,
//         queryParameters: requestOptions.queryParameters,
//         options: opts,
//       );
//
//       return handler.resolve(response);
//     } catch (e) {
//       return handler.reject(error);
//     }
//   }
// }

class TokenRefreshInterceptor extends Interceptor {
  final SecurityStorage securityStorage;
  final Dio mainDio;

  TokenRefreshInterceptor({
    required this.securityStorage,
    required this.mainDio,
  });

  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;

  final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrlAPi))
    ..interceptors.add(PrettyDioLogger(requestBody: true));

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      await _ensureValidToken();

      // Tokenni headerga qo'shamiz
      options.headers['Authorization'] =
          'Bearer ${securityStorage.getAccessToken()}';
      handler.next(options);
    } catch (e) {
      handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      if (err.response?.statusCode == 401 &&
          (securityStorage.getRefreshToken() ?? "").isNotEmpty) {
        await _refreshToken();
        final requestOptions = err.requestOptions;
        final opts = Options(
          method: requestOptions.method,
          headers: {
            ...requestOptions.headers,
            "Authorization": "Bearer ${securityStorage.getAccessToken()}",
          },
          responseType: requestOptions.responseType,
          contentType: requestOptions.contentType,
          extra: requestOptions.extra,
        );

        final response = await mainDio.request(
          requestOptions.path,
          data: requestOptions.data,
          queryParameters: requestOptions.queryParameters,
          options: opts,
        );

        return handler.resolve(response);
      }
    } catch (e) {
      return handler.reject(err);
    }

    handler.next(err);
  }

  Future<void> _ensureValidToken() async {
    final token = securityStorage.getAccessToken();
    final expiresAt = securityStorage.getTokenExpire();
    if (token != null && expiresAt != null) {
      final now = DateTime.now();
      final diff = expiresAt.difference(now);
      if (diff.inMinutes <= 5) {
        await _refreshToken();
      }
    }
  }

  Future<void> _refreshToken() async {
    if (_isRefreshing) {
      await _refreshCompleter?.future;
      return;
    }
    _isRefreshing = true;
    _refreshCompleter = Completer<void>();

    try {
      final response = await _dio.post(
        "/auth/refresh",
        data: {"RefreshToken": securityStorage.getRefreshToken()},
      );
      final tokenDto = TokenDto.fromJson(response.data);
      await securityStorage.setToken(token: tokenDto.toDomain());
      _refreshCompleter?.complete();
    } catch (e) {
      await securityStorage.clearData();
      _refreshCompleter?.completeError(e);
      GlobalHandler().unauthorizedListener?.call();
      rethrow;
    } finally {
      _isRefreshing = false;
    }
  }
}
