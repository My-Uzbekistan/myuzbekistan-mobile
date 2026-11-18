import 'dart:io';

import 'package:dio/dio.dart';

extension ConnectionErrorExtension on Object {
  bool get isConnectionError {
    final error = this;
    if (error is SocketException) return true;
    if (error is! DioException) return false;
    if (error.error is SocketException) return true;
    return switch (error.type) {
      DioExceptionType.connectionError ||
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout => true,
      _ => false,
    };
  }
}
