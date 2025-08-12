import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/widgets/add_card/add_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../../../service/FinanceSharedService.dart';

part 'add_card_event.dart';

part 'add_card_state.dart';

part 'add_card_bloc.freezed.dart';

@injectable
class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  final FinanceRepository _financeRepository;
  CancelToken? _cardNumberCancelToken;
  final FinanceSharedService _financeSharedService;

  AddCardBloc({
    required FinanceRepository financeRepository,
    required FinanceSharedService financeSharedService,
  }) : _financeRepository = financeRepository,
       _financeSharedService = financeSharedService,
       super(const AddCardState(pan: '')) {
    // add(AddCardEvent.loadCardColors());
    on<_SetExtermalParamsEvent>(_setExternalParams);
    on<_SetOwnParamsEvent>(_setOwnParams);
    on<_SetCardNumberEvent>(_setCardNumber);
    on<_AddEvent>(_addEvent);
  }

  bool cardTypeLoading = false;

  void _setExternalParams(
    _SetExtermalParamsEvent event,
    Emitter<AddCardState> emitter,
  ) {
    emitter(
      state.copyWith(
        params: AddCardParams.externalParams(
          expiry: event.expire,
          cvv: event.cvv,
          cardHolderName: event.holderName,
        ),
      ),
    );
  }

  void _setOwnParams(_SetOwnParamsEvent event, Emitter<AddCardState> emitter) {
    emitter(
      state.copyWith(
        params: AddCardParams.ownParams(
          expiry: event.expire,
          phone: event.phoneNumber,
        ),
      ),
    );
  }

  void _setCardNumber(
    _SetCardNumberEvent event,
    Emitter<AddCardState> emitter,
  ) {
    final pan = event.cardNumber.withOutSpace();
    if (state.pan != pan) {
      emitter(state.copyWith(pan: pan, navState: null));
      if (pan.length >= 6) {
        if (state.params == null && !cardTypeLoading) {
          findCardType(pan);
        }
      } else if (pan.length < 6) {
        emitter(state.copyWith(pan: pan, params: null, navState: null));
        _cancelRequest();
      }
    }
  }

  void _cancelRequest() {
    if (_cardNumberCancelToken != null &&
        !_cardNumberCancelToken!.isCancelled) {
      _cardNumberCancelToken!.cancel('Uzunligi 6 dan kamaydi');
    }
  }

  Future<void> findCardType(String cardNumber) async {
    _cardNumberCancelToken = CancelToken();
    cardTypeLoading = true;
    try {
      final result = await _financeRepository.findCardType(
        pan: cardNumber,
        cancelToken: _cardNumberCancelToken,
      );
      result.isExternal == true
          ? add(
            AddCardEvent.setExternalParams(expire: "", cvv: "", holderName: ""),
          )
          : add(AddCardEvent.setOwnParams(expire: "", phoneNumber: ""));
      cardTypeLoading = false;
      _cardNumberCancelToken = null;
    } catch (e) {
      _cardNumberCancelToken = null;
      cardTypeLoading = false;
    }
  }

  Future<void> _addEvent(
    AddCardEvent event,
    Emitter<AddCardState> emitter,
  ) async {
    emitter(state.copyWith(isLoading: true, navState: null));
    try {
      final expParts = state.params!.expiry.split("/");
      final formattedExpiry = "${expParts.last}${expParts.first}";
      String phoneNumber = "";
      String cardHolderName = "";
      String cvv = "";
      if (state.params case AddCardOwnParams params) {
        phoneNumber = params.phone;
      } else if (state.params case AddCardExternalParams params) {
        cardHolderName = params.cardHolderName;
        cvv = params.cvv;
      }

      final result = await _financeRepository.bindCard(
        pan: state.pan,
        expiry: formattedExpiry,
        phoneNumber: phoneNumber,
        cardHolderName: cardHolderName,
        cvv: cvv,
      );
      if (state.isExternal == true) {
        _financeSharedService.cardsUpdate();
        emitter(
          state.copyWith(
            isLoading: false,
            navState: AddCardNavState.completed(),
          ),
        );
      } else {
        emitter(
          state.copyWith(
            isLoading: false,
            navState: AddCardNavState.verify(cardId: result.cardId),
          ),
        );
      }
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emitter(
          state.copyWith(
            isLoading: false,
            navState: AddCardNavState.error(
              message: (e.error as AppException).message,
            ),
          ),
        );
      } else {
        emitter(
          state.copyWith(isLoading: false, navState: AddCardNavState.error()),
        );
      }
    }
  }
}
