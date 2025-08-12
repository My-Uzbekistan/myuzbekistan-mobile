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

  FinanceBloc({
    required LoadMerchantUseCase loadMerchantUseCase,
    required CurrenciesUseCase currenciesUseCase,
  }) : _loadMerchantUseCase = loadMerchantUseCase,
       _currenciesUseCase = currenciesUseCase,
       super(FinanceState.loadingState()) {
    on<_FinanceInitialEvent>(_initialEvent);

    add(FinanceEvent.initialEvent());
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
          currencies: currencies.filterCurrencies(),
        ),
      );
    } catch (e) {
      debugPrint("datatExaption ${e}");
    }
  }
}
