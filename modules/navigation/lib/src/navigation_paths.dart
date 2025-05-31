import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import '../navigation.dart';
part 'context_extension.dart';
part 'feature_travel/feature_travel_nav_extensions.dart';
part 'feature_travel/feature_travel_nav_path.dart';


abstract class AppNavPath {
  final String path;
  final String name;
  const AppNavPath({required this.name, required this.path});

  static _FeatureTravelNavPath get travel => _FeatureTravelNavPath();
  // static _FeatureFinanceNavPath get finance => _FeatureFinanceNavPath();
  // static _FeatureAuthNavPath get auth => _FeatureAuthNavPath();
  // static _FeatureProfileNavPath get profile => _FeatureProfileNavPath();
  // static _FeatureVerificationNavPath get verification => _FeatureVerificationNavPath();
  // static _FeatureFineNavPath get fines => _FeatureFineNavPath();
  // static _FeatureCarSharingNavPath get carSharing => _FeatureCarSharingNavPath();

  // static FeatureHomeNavPath get home => FeatureHomeNavPath();
}
class _NavPathImpl extends AppNavPath {
  const _NavPathImpl({required super.name, required super.path});
}
