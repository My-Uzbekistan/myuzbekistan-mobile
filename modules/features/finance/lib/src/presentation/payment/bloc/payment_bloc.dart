import 'dart:async';

import 'package:domain/domain.dart';
import 'package:finance/src/presentation/cards/use_case/load_cards_use_case.dart';
import 'package:finance/src/presentation/payment/use_case/merchant_by_id_use_case.dart';
import 'package:finance/src/service/FinanceSharedService.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'payment_event.dart';

part 'payment_state.dart';

part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final MerchantByIdUseCase _merchantByIdUseCase;
  final LoadCardsUseCase _loadCardsUseCase;
  final FinanceRepository _financeRepository;
  final FinanceSharedService _financeSharedService;

  StreamSubscription? _cardsSubscription;
  StreamSubscription? _updateCardsSubscription;

  var cards = <CardItem>[];
  String? paymentId;

  PaymentBloc(
    this._merchantByIdUseCase,
    this._loadCardsUseCase,
    this._financeSharedService,
    this._financeRepository,
  ) : super(PaymentState.loadingState()) {
    on<_PaymentMerchantEvent>(_loadMerchantById);
    on<_PaymentPayUpdateCardsEvent>(_updatePaymentCards);
    on<_PaymentSetMerchantEvent>(_setMerchantEvent);
    on<_PaymentPayLoadCardsEvent>(_loadCards);
    on<_PaymentSelecteCardEvent>(_selectedCard);
    on<_PaymentSetAmountEvent>(_setAmount);
    on<_PaymentPayEvent>(_pay);
    on<_CheckPayDetailEvent>(_checkPayDetail);
    _onInit();
  }

  void _onInit() {
    _cardsSubscription?.cancel();
    _updateCardsSubscription?.cancel();
    _updateCardsSubscription = _financeSharedService.updateCards.listen((c) {
      add(PaymentEvent.loadCards());
    });
    _cardsSubscription = _financeSharedService.financeCards.listen((c) {
      cards = c;
      add(PaymentEvent.updateCards());
    });
  }

  Future<void> _checkPayDetail(
    _CheckPayDetailEvent event,
    Emitter<PaymentState> emit,
  ) async {
    if (state is PaymentDataState && paymentId != null) {
      emit(
        state.map(
          dataState:
              (data) => data.copyWith(isPayLoading: true, navState: null),
          loadingState: (st) => st,
          errorState: (st) => st,
        ),
      );
      try {
        final result = await _financeRepository.paymentCheck(
          paymentId: paymentId!,
        );
        emit(
          (state as PaymentDataState).copyWith(
            isPayLoading: false,
            navState: PaymentNavState.paymentSuccess(
              merchant: result.merchant,
              amount: result.amount,
              paymentId: paymentId!,
            ),
          ),
        );
      } catch (e) {
        emit((state as PaymentDataState).copyWith(isPayLoading: false));
        if (e is DioException && e.error is AppException) {
          emit(
            (state as PaymentDataState).copyWith(
              isPayLoading: false,
              navState: PaymentNavState.error(
                message: (e.error as AppException).message,
              ),
            ),
          );
        } else {
          emit(
            (state as PaymentDataState).copyWith(
              isPayLoading: false,
              navState: PaymentNavState.error(),
            ),
          );
        }
      }
    }
  }

  double? amount;

  void _setAmount(_PaymentSetAmountEvent event, Emitter<PaymentState> emit) {
    amount = event.amount.replaceAll(RegExp(r'\D'), '').toDoubleOrNull();
    if (state is PaymentDataState) {
      final dataState = state as PaymentDataState;
      emit(dataState.copyWith(amount: amount, navState: null));
    }
  }

  void _selectedCard(
    _PaymentSelecteCardEvent event,
    Emitter<PaymentState> emit,
  ) {
    if (state is PaymentDataState) {
      final dataState = state as PaymentDataState;
      emit(dataState.copyWith(selectedCard: event.item, navState: null));
    }
  }

  void _loadCards(
    _PaymentPayLoadCardsEvent event,
    Emitter<PaymentState> emit,
  ) async {
    try {
      final cards = await _loadCardsUseCase();
      _financeSharedService.addCards(cards);
    } catch (e) {}
  }

  void _setMerchantEvent(
    _PaymentSetMerchantEvent event,
    Emitter<PaymentState> emit,
  ) {
    emit(
      PaymentState.dataState(
        merchant: event.merchant,
        cards: cards,
        amount: amount,
        selectedCard: cards.firstOrNull,
      ),
    );
  }

  void _updatePaymentCards(
    _PaymentPayUpdateCardsEvent event,
    Emitter<PaymentState> emit,
  ) {
    if (state is PaymentDataState) {
      final dataState = state as PaymentDataState;
      emit(
        dataState.copyWith(
          cards: cards,
          selectedCard: cards.firstOrNull,
          navState: null,
        ),
      );
    }
  }

  Future<void> _loadMerchantById(
    _PaymentMerchantEvent event,
    Emitter<PaymentState> emit,
  ) async {
    if (!_financeSharedService.hasSetCards()) {
      add(PaymentEvent.loadCards());
    }
    try {
      final result = await _merchantByIdUseCase(event.merchantId);
      add(PaymentEvent.setMerchant(result));
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emit(
          PaymentState.errorState(message: (e.error as AppException).message),
        );
      }
    }
  }

  Future<void> _pay(_PaymentPayEvent event, Emitter<PaymentState> emit) async {
    try {
      final st = state as PaymentDataState;
      emit(st.copyWith(isPayLoading: true, navState: null));
      final result = await _financeRepository.pay(
        merchantId: st.merchant.id.toString(),
        amount: st.amount!,
        cardId: st.selectedCard!.id.toString(),
      );
      paymentId = result.paymentId;
      if (result.checkUrl.isNotNullOrEmpty) {
        emit(
          (state as PaymentDataState).copyWith(
            isPayLoading: false,
            navState: PaymentNavState.confirmWithWeb(
              confirmUrl: result.checkUrl!,
              paymentId: result.paymentId,
            ),
          ),
        );
      } else {
        emit(
          (state as PaymentDataState).copyWith(
            isPayLoading: false,
            navState: PaymentNavState.paymentSuccess(
              merchant: MerchantItem(
                icon: st.merchant.logo,
                name: st.merchant.name,
                type: st.merchant.type,
              ),
              amount: st.amount!.toInt(),
              paymentId: result.paymentId,
            ),
          ),
        );
      }
    } catch (e) {
      emit((state as PaymentDataState).copyWith(isPayLoading: false));
      if (e is DioException && e.error is AppException) {
        emit(
          (state as PaymentDataState).copyWith(
            isPayLoading: false,
            navState: PaymentNavState.error(
              message: (e.error as AppException).message,
            ),
          ),
        );
      } else {
        emit(
          (state as PaymentDataState).copyWith(
            isPayLoading: false,
            navState: PaymentNavState.error(),
          ),
        );
      }
    }
  }

  @override
  Future<void> close() {
    _cardsSubscription?.cancel();
    debugPrint("onclose Payment Bloc");
    return super.close();
  }
}
