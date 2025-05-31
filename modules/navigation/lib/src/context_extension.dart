part of 'navigation_paths.dart';

extension BuildContextNavExtension on BuildContext {

  static final Expando<FeatureTravelNavExtension> _travel =
      Expando<FeatureTravelNavExtension>();


  FeatureTravelNavExtension get car {
    return _travel[this] ??= FeatureTravelNavExtension(this);
  }



  // FinanceNavExtension get finance => _finance;
  Future<Object?> pushType(AppNavPath type) async {
    return await pushNamed(type.name);
  }
}
