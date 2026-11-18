part of '../navigation_paths.dart';

class _FeatureFinanceNavPath {
  const _FeatureFinanceNavPath();

  AppNavPath get financeHome =>
      _NavPathImpl(name: 'feature_finance_home', path: '/finance');

  AppNavPath get financeCards => _NavPathImpl(
    name: 'feature_finance_cards',
    path: '/finance/cards/:type',
    authRequired: true,
  );

  AppNavPath get financeAddCard =>
      _NavPathImpl(name: 'feature_finance_add_card', path: '/finance/add_card');

  AppNavPath get financePayment => _NavPathImpl(
    name: 'feature_finance_payment',
    path: '/pay/:id',
    authRequired: true,
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
    authRequired: true,
  );

  AppNavPath get paymentTransactionDetailPage => _NavPathImpl(
    name: 'feature_finance_payment_transaction_detail',
    path: '/finance/payment_transaction_detail/:paymentId',
  );
  AppNavPath get financeMerchants => _NavPathImpl(
    name: 'feature_finance_merchants',
    path: '/finance/merchants',
  );

  AppNavPath get currenciesPage => _NavPathImpl(
    name: 'feature_finance_currencies_page',
    path: '/feature/finance/currencies',
  );
  AppNavPath get currenciesModalPage => _NavPathImpl(
    name: 'feature_finance_currencies_modal_page',
    path: '/feature/finance/currenciesModal',
  );

  List<AppNavPath> get values => [
    financeHome,
    financeCards,
    financeAddCard,
    financePayment,
    verification,
    paymentSuccessPage,
    qrReaderPage,
    paymentHistoryPage,
    paymentTransactionDetailPage,
    financeMerchants,
    currenciesPage,
    currenciesModalPage,
  ];
}
