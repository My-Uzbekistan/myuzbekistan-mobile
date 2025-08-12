part of '../navigation_paths.dart';

class _FeatureFinanceNavPath {
  const _FeatureFinanceNavPath();

  AppNavPath get financeHome =>
      _NavPathImpl(name: 'feature_finance_home', path: '/finance');

  AppNavPath get financeCards =>
      _NavPathImpl(name: 'feature_finance_cards', path: '/finance/cards/:type');

  AppNavPath get financeAddCard =>
      _NavPathImpl(name: 'feature_finance_add_card', path: '/finance/add_card');

  AppNavPath get financePayment => _NavPathImpl(
    name: 'feature_finance_payment',
    path: '/finance/payment/:id',
  );

  AppNavPath get verification =>
      _NavPathImpl(name: 'verification', path: '/verification/:cardId');

  AppNavPath get paymentSuccessPage =>
      _NavPathImpl(name: 'payment_success_page', path: '/payment_success');

  AppNavPath get qrReaderPage => _NavPathImpl(
    name: 'feature_finance_qr_reader',
    path: '/finance/qr_reader',
  );

  AppNavPath get paymentHistoryPage => _NavPathImpl(
    name: 'feature_finance_payment_history',
    path: '/finance/payment_history',
  );

  AppNavPath get paymentTransactionDetailPage => _NavPathImpl(
    name: 'feature_finance_payment_transaction_detail',
    path: '/finance/payment_transaction_detail/:paymentId',
  );
}
