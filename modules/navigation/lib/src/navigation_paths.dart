import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import '../navigation.dart';



part 'context_extension.dart';
part 'link_router.dart';
part 'root_nav_path.dart';
part 'feature_travel/feature_travel_nav_extensions.dart';
part 'feature_travel/feature_travel_nav_path.dart';
part 'feature_more/feature_more_nav_extensions.dart';
part 'feature_more/feature_more_nav_path.dart';
part 'feature_finance/feature_finance_nav_extensions.dart';
part 'feature_finance/feature_finance_nav_path.dart';
part 'feature_market/feature_market_nav_extensions.dart';
part 'feature_market/feature_market_nav_path.dart';


abstract class AppNavPath {
  final String path;
  final String name;
  final bool authRequired;

  const AppNavPath({
    required this.name,
    required this.path,
    this.authRequired = false,
  });

  static _RootNavPath get root => const _RootNavPath();
  static _FeatureTravelNavPath get travel => const _FeatureTravelNavPath();
  static _FeatureMoreNavPath get more => const _FeatureMoreNavPath();
  static _FeatureFinanceNavPath get finance => const _FeatureFinanceNavPath();
  static _FeatureMarketNavPath get market => const _FeatureMarketNavPath();

  static final List<AppNavPath> values = [
    ...root.values,
    ...travel.values,
    ...more.values,
    ...finance.values,
    ...market.values,
  ];

  static final Map<String, AppNavPath> _byName = {
    for (final navPath in values) navPath.name: navPath,
  };

  static AppNavPath? byName(String? name) =>
      name == null ? null : _byName[name];
}

class _NavPathImpl extends AppNavPath {
  const _NavPathImpl({
    required super.name,
    required super.path,
    super.authRequired,
  });
}
