import 'dart:async';

import 'package:domain/domain.dart';
import 'package:finance/src/presentation/home/use_case/load_merchant_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'finance_event.dart';

part 'finance_state.dart';

part 'finance_bloc.freezed.dart';

@injectable
class FinanceBloc extends Bloc<FinanceEvent, FinanceState> {
  final LoadMerchantUseCase _loadMerchantUseCase;
  final CurrenciesUseCase _currenciesUseCase;
  final AppStatusChangeListeners _appLocaleChangeListener;
  StreamSubscription? _refreshStreamSubscription;

  FinanceBloc({
    required LoadMerchantUseCase loadMerchantUseCase,
    required CurrenciesUseCase currenciesUseCase,
    required AppStatusChangeListeners chl,
  }) : _loadMerchantUseCase = loadMerchantUseCase,
       _currenciesUseCase = currenciesUseCase,
       _appLocaleChangeListener = chl,
       super(FinanceState.loadingState()) {
    on<_FinanceInitialEvent>(_initialEvent);

    add(FinanceEvent.initialEvent());
    _init();
  }

  void _init() {
    _refreshStreamSubscription?.cancel();
    _refreshStreamSubscription = _appLocaleChangeListener.refreshListener
        .listen((value) {
      add(FinanceEvent.initialEvent());
    });
  }

  Future<void> _initialEvent(
    _FinanceInitialEvent event,
    Emitter<FinanceState> emitter,
  ) async {
    try {
      final result = await Future.wait([
        _loadMerchantUseCase(),
        _currenciesUseCase(),
      ]);
      final merchants = result[0] as List<Merchant>;
      final currencies = result[1] as List<Currency>;

      emitter(
        FinanceState.dataState(
          merchants: merchants,
          currencies: [
            Currency(ccy: "UZS", rate: "1", id: -11),
            ...currencies.filterCurrencies(),
          ],
        ),
      );
    } catch (e) {
      debugPrint("datatExaption ${e}");
    }
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _refreshStreamSubscription?.cancel();
    return super.close();
  }
}
