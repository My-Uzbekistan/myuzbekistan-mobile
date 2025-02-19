import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';

extension AppGoRouterHelper on BuildContext {
  Future<T?> pushNamedType<T extends Object?>(
    AppRoute route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).pushNamed<T>(
        route.name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
}
