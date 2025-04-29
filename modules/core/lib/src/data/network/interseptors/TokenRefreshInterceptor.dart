import 'dart:async';

import 'package:core/core.dart';
import 'package:core/src/constants.dart';
import 'package:core/src/data/dto_models/token_dto.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class TokenRefreshInterceptor extends Interceptor {
  SecurityStorage securityStorage;

  TokenRefreshInterceptor({required this.securityStorage});

  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;
  final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrlAPi))
    ..interceptors.add(PrettyDioLogger(requestBody: true));

  @override
  onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && (securityStorage.getRefreshToken()??"").isNotEmpty) {
      return _handleTokenRefresh(err, handler);
    }
    return handler.next(err);
  }

  Future<void> _handleTokenRefresh(
      DioException error, ErrorInterceptorHandler handler) async {
    if (_isRefreshing) {
      await _refreshCompleter?.future;
    } else {
      _isRefreshing = true;
      _refreshCompleter = Completer<void>();

      try {
        Response response = await _dio.post("/auth/refresh", data: {
          "RefreshToken":securityStorage.getRefreshToken(),
        });
        final tokenDto = TokenDto.fromJson(response.data);
        await securityStorage.setToken(token: tokenDto.toDomain());
        _refreshCompleter?.complete();
      } catch (e) {
        _refreshCompleter?.completeError(e);
        return handler
            .reject(error); // Agar refresh xato bo‘lsa, request error qaytadi
      } finally {
        _isRefreshing = false;
      }
    }

    // Eskirgan so‘rovni yangi token bilan qayta jo‘natish
    final requestOptions = error.requestOptions;
    requestOptions.headers["Authorization"] = "Bearer  ${securityStorage.getAccessToken()}";

    try {
      final response = await _dio.fetch(requestOptions);
      return handler.resolve(response);
    } catch (e) {
      return handler.reject(error);
    }
  }
}
