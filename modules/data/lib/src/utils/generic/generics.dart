import 'package:flutter/foundation.dart';

extension FutureExtension<T> on Future<T> {
  Future<M> call<M>([M? Function(T)? converter]) async {
    try {
      final result = await this;
      if (converter != null) return converter.call(result) as M;
      return result as M;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<List<R>> parseListAsync<R>({
    R Function(T dto)? mapper,
    required T Function(Map<String, dynamic> json) fromJson,
  }) async {
    final raw = await this;

    return compute(
      (data) => (data as List).map((e) {
        final dto = fromJson(e);
        return mapper != null ? mapper(dto) : dto as R;
      }).toList(),
      raw,
    );
  }

  Future<R> parseObjectAsync<R>({
    R Function(T dto)? mapper,
    T Function(Map<String, dynamic> json)? fromJson,
  }) async {
    final raw = await this;
    if (fromJson == null) {
      return raw as R;
    } else {
      return compute((data) {
        final dto = fromJson(data);
        return mapper != null ? mapper(dto) : dto as R;
      }, raw as Map<String, dynamic>);
    }
  }
}
