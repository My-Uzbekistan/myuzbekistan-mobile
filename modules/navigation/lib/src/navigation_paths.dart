import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import '../navigation.dart';
part 'context_extension.dart';
part 'feature_travel/feature_travel_nav_extensions.dart';
part 'feature_travel/feature_travel_nav_path.dart';
part 'feature_more/feature_more_nav_extensions.dart';
part 'feature_more/feature_more_nav_path.dart';
part 'feature_finance/feature_finance_nav_extensions.dart';
part 'feature_finance/feature_finance_nav_path.dart';


abstract class AppNavPath {
  final String path;
  final String name;
  const AppNavPath({required this.name, required this.path});

  static _FeatureTravelNavPath get travel => _FeatureTravelNavPath();
  static _FeatureMoreNavPath get more => _FeatureMoreNavPath();
  static _FeatureFinanceNavPath get finance => _FeatureFinanceNavPath();
}
class _NavPathImpl extends AppNavPath {
  const _NavPathImpl({required super.name, required super.path});
}
