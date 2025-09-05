//@GeneratedMicroModule;FinancePackageModule;package:finance/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:finance/src/presentation/add_cards/bloc/add_card_bloc.dart'
    as _i724;
import 'package:finance/src/presentation/cards/bloc/cards_bloc.dart' as _i40;
import 'package:finance/src/presentation/cards/use_case/load_cards_use_case.dart'
    as _i799;
import 'package:finance/src/presentation/home/bloc/finance_bloc.dart' as _i59;
import 'package:finance/src/presentation/home/use_case/load_merchant_use_case.dart'
    as _i754;
import 'package:finance/src/presentation/merchants/bloc/merchants_bloc.dart'
    as _i1061;
import 'package:finance/src/presentation/payment/bloc/payment_bloc.dart'
    as _i509;
import 'package:finance/src/presentation/payment/use_case/merchant_by_id_use_case.dart'
    as _i922;
import 'package:finance/src/presentation/payment_history/bloc/history_bloc.dart'
    as _i494;
import 'package:finance/src/presentation/transaction_detail/bloc/payment_check_bloc.dart'
    as _i950;
import 'package:finance/src/presentation/verification/bloc/verification_bloc.dart'
    as _i491;
import 'package:finance/src/service/FinanceSharedService.dart' as _i83;
import 'package:injectable/injectable.dart' as _i526;

class FinancePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i922.MerchantByIdUseCase>(
        () => _i922.MerchantByIdUseCase(gh<_i494.FinanceRepository>()));
    gh.factory<_i799.LoadCardsUseCase>(
        () => _i799.LoadCardsUseCase(gh<_i494.FinanceRepository>()));
    gh.lazySingleton<_i83.FinanceSharedService>(
        () => _i83.FinanceSharedServiceIml());
    gh.factory<_i509.PaymentBloc>(() => _i509.PaymentBloc(
          gh<_i922.MerchantByIdUseCase>(),
          gh<_i799.LoadCardsUseCase>(),
          gh<_i83.FinanceSharedService>(),
          gh<_i494.FinanceRepository>(),
        ));
    gh.factory<_i494.HistoryBloc>(
        () => _i494.HistoryBloc(gh<_i494.FinanceRepository>()));
    gh.factory<_i950.PaymentCheckBloc>(
        () => _i950.PaymentCheckBloc(gh<_i494.FinanceRepository>()));
    gh.factory<_i40.CardsBloc>(() => _i40.CardsBloc(
          gh<_i799.LoadCardsUseCase>(),
          gh<_i83.FinanceSharedService>(),
        ));
    gh.factory<_i491.VerificationBloc>(
      () => _i491.AddCardVerificationBloc(
        gh<_i494.FinanceRepository>(),
        gh<_i83.FinanceSharedService>(),
      ),
      instanceName: 'addCardVerification',
    );
    gh.factory<_i754.LoadMerchantUseCase>(
        () => _i754.LoadMerchantUseCase(gh<_i494.FinanceRepository>()));
    gh.factory<_i724.AddCardBloc>(() => _i724.AddCardBloc(
          financeRepository: gh<_i494.FinanceRepository>(),
          financeSharedService: gh<_i83.FinanceSharedService>(),
        ));
    gh.factory<_i1061.MerchantsBloc>(
        () => _i1061.MerchantsBloc(gh<_i754.LoadMerchantUseCase>()));
    gh.factory<_i59.FinanceBloc>(() => _i59.FinanceBloc(
          loadMerchantUseCase: gh<_i754.LoadMerchantUseCase>(),
          currenciesUseCase: gh<_i494.CurrenciesUseCase>(),
          chl: gh<_i494.AppStatusChangeListeners>(),
        ));
  }
}
