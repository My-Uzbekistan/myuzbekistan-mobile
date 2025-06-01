part of 'navigation_paths.dart';

extension BuildContextNavExtension on BuildContext {

  static final Expando<FeatureTravelNavExtension> _travel =
      Expando<FeatureTravelNavExtension>();


  FeatureTravelNavExtension get travel {
    return _travel[this] ??= FeatureTravelNavExtension(this);
  }


  static final Expando<FeatureMoreNavExtension> _more =
  Expando<FeatureMoreNavExtension>();


  FeatureMoreNavExtension get more {
    return _more[this] ??= FeatureMoreNavExtension(this);
  }


  // FinanceNavExtension get finance => _finance;
  Future<T?> pushType<T>(AppNavPath type, {Object? extra,Map<String, dynamic> queryParameters = const {}}) async {
    return await pushNamed(type.name,queryParameters: queryParameters,extra: extra);
  }
}
