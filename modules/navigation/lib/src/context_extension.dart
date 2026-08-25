part of 'navigation_paths.dart';

extension BuildContextNavExtension on BuildContext {
  static final Expando<FeatureTravelNavExtension> _travel =
      Expando<FeatureTravelNavExtension>();

  FeatureTravelNavExtension get travel {
    return _travel[this] ??= FeatureTravelNavExtension(this);
  }

  static final Expando<FeatureFinanceNavExtension> _finance =
      Expando<FeatureFinanceNavExtension>();

  FeatureFinanceNavExtension get finance {
    return _finance[this] ??= FeatureFinanceNavExtension(this);
  }

  static final Expando<FeatureMarketNavExtension> _market =
      Expando<FeatureMarketNavExtension>();

  FeatureMarketNavExtension get market {
    return _market[this] ??= FeatureMarketNavExtension(this);
  }

  static final Expando<FeatureMoreNavExtension> _more =
      Expando<FeatureMoreNavExtension>();

  FeatureMoreNavExtension get more {
    return _more[this] ??= FeatureMoreNavExtension(this);
  }

  // FinanceNavExtension get finance => _finance;
  Future<T?> pushType<T>(
    AppNavPath type, {
    Object? extra,
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
  }) async {
    return await pushNamed(
      type.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void pushReplacementType(
    AppNavPath type, {
    Object? extra,
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
  }) {
    pushReplacementNamed(
      type.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void popUntil<T>(List<AppNavPath> types) async {
    final names = types.map((e) => e.name).toSet();
    return Navigator.of(this).popUntil(
      // route.isFirst — stack'ni butunlay bo'shatib yubormaslik uchun himoya
      // (aks holda go_router "no pages left" bilan crash bo'ladi).
      (route) => names.contains(route.settings.name) || route.isFirst,
    );
  }
}
