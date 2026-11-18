import 'dart:convert';

import 'package:data/src/constants.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class OfflineCacheInterceptor extends Interceptor {
  static const _cachedPaths = {
    "cities",
    "banners",
    "home-background",
    "weather/region",
    "services",
    "categories",
    "regions",
    "prayer-times",
    "air-quality",
    "air-quality/region",
    "catalog-v3",
  };
  static final _contentsPath = RegExp(r'^v2/categories/\d+/contents$');

  Box<String>? _box;

  Future<Box<String>> _openBox() async {
    return _box ??= await Hive.openBox<String>(StorageConstants.httpCacheBox);
  }

  bool _isCacheable(RequestOptions options) {
    if (options.method.toUpperCase() != "GET") return false;
    final path = _relativePath(options);
    return _cachedPaths.contains(path) || _contentsPath.hasMatch(path);
  }

  String _relativePath(RequestOptions options) {
    final path = options.uri.path;
    final index = path.indexOf("/api/");
    final relative = index >= 0 ? path.substring(index + 5) : path;
    return relative.startsWith("/") ? relative.substring(1) : relative;
  }

  String _language(RequestOptions options) =>
      options.headers["Accept-Language"]?.toString() ?? "";

  String _exactKey(RequestOptions options) =>
      "${_language(options)}|${options.uri}";

  String _pathKey(RequestOptions options) =>
      "${_language(options)}|${_relativePath(options)}";

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final options = response.requestOptions;
    final status = response.statusCode ?? 0;
    if (_isCacheable(options) && status >= 200 && status < 300) {
      try {
        final box = await _openBox();
        final encoded = jsonEncode(response.data);
        await box.put(_exactKey(options), encoded);
        await box.put(_pathKey(options), encoded);
      } catch (_) {}
    }
    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final options = err.requestOptions;
    if (!_isCacheable(options) || !err.isConnectionError) {
      return handler.next(err);
    }
    try {
      final box = await _openBox();
      final cached = box.get(_exactKey(options)) ?? box.get(_pathKey(options));
      if (cached != null) {
        return handler.resolve(
          Response(
            requestOptions: options,
            data: jsonDecode(cached),
            statusCode: 200,
          ),
        );
      }
    } catch (_) {}
    handler.next(err);
  }
}
