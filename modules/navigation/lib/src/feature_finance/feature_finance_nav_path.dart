part of '../navigation_paths.dart';

class _FeatureFinanceNavPath {
  const _FeatureFinanceNavPath();

  AppNavPath get financeHome =>
      _NavPathImpl(name: 'feature_finance_home', path: '/finance');

  AppNavPath get financeCards =>
      _NavPathImpl(name: 'feature_finance_cards', path: '/finance/cards');

  AppNavPath get financeAddCard =>
      _NavPathImpl(name: 'feature_finance_add_card', path: '/finance/add_card');
}
