import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_purchase_event.dart';
part 'museum_purchase_state.dart';
part 'museum_purchase_bloc.freezed.dart';

const int _maxQuantity = 50;
const int _pollAttempts = 20;
const Duration _pollInterval = Duration(seconds: 3);

@injectable
class MuseumPurchaseBloc
    extends Bloc<MuseumPurchaseEvent, MuseumPurchaseState> {
  final MuseumRepository _repository;
  final FinanceRepository _financeRepository;

  MuseumPurchaseBloc(this._repository, this._financeRepository)
    : super(MuseumPurchaseState()) {
    on<_MuseumPurchaseStartEvent>(_start);
    on<_MuseumPurchaseChangeQuantityEvent>(_changeQuantity);
    on<_MuseumPurchasePayEvent>(_pay);
    on<_MuseumPurchaseConfirmEvent>(_confirm);
    on<_MuseumPurchasePollOrderEvent>(_pollOrder);
  }

  Future<void> _start(
    _MuseumPurchaseStartEvent event,
    Emitter<MuseumPurchaseState> emit,
  ) async {
    emit(
      state.copyWith(
        museumId: event.museumId,
        idempotencyKey: DateTime.now().microsecondsSinceEpoch.toString(),
        isLoading: true,
        errorMessage: null,
      ),
    );

    final position = LocationManager().getCurrentPosition();
    try {
      final detail = await _repository.detail(
        museumId: event.museumId,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(state.copyWith(detail: detail));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.errorMessage()));
    }

    try {
      final tariffs = await _repository.tariffs(museumId: event.museumId);
      emit(state.copyWith(tariffs: tariffs, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));

    try {
      final cards = await _financeRepository.cards();
      emit(state.copyWith(cards: cards));
    } catch (_) {
      emit(state.copyWith(cards: const []));
    }
  }

  Future<void> _changeQuantity(
    _MuseumPurchaseChangeQuantityEvent event,
    Emitter<MuseumPurchaseState> emit,
  ) async {
    final quantity = event.quantity.clamp(0, _maxQuantity);
    final quantities = Map<String, int>.of(state.quantities);
    if (quantity == 0) {
      quantities.remove(event.tariffId);
    } else {
      quantities[event.tariffId] = quantity;
    }
    emit(state.copyWith(quantities: quantities));
  }

  Future<void> _pay(
    _MuseumPurchasePayEvent event,
    Emitter<MuseumPurchaseState> emit,
  ) async {
    if (state.items.isEmpty) return;

    emit(state.copyWith(isPaying: true, errorMessage: null));
    try {
      final order = await _repository.createOrder(
        museumId: state.museumId,
        cardId: event.cardId,
        idempotencyKey: state.idempotencyKey,
        items: state.items,
      );
      emit(
        state.copyWith(
          order: order,
          isSuccess: order.tickets.isNotEmpty,
          isPaying: false,
        ),
      );
      if (order.checkUrl == null && order.tickets.isEmpty) {
        add(MuseumPurchaseEvent.pollOrder());
      }
    } catch (e) {
      emit(state.copyWith(isPaying: false, errorMessage: e.errorMessage()));
    }
  }

  Future<void> _confirm(
    _MuseumPurchaseConfirmEvent event,
    Emitter<MuseumPurchaseState> emit,
  ) async {
    final order = state.order;
    if (order == null || state.isSuccess) return;

    emit(state.copyWith(isPaying: true, errorMessage: null));
    try {
      final issued = await _repository.issueTickets(orderId: order.id);
      emit(
        state.copyWith(
          order: issued,
          isSuccess: issued.tickets.isNotEmpty,
          isPaying: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isPaying: false, errorMessage: e.errorMessage()));
    }
    if (!state.isSuccess) add(MuseumPurchaseEvent.pollOrder());
  }

  Future<void> _pollOrder(
    _MuseumPurchasePollOrderEvent event,
    Emitter<MuseumPurchaseState> emit,
  ) async {
    for (var attempt = 0; attempt < _pollAttempts; attempt++) {
      await Future.delayed(_pollInterval);
      if (isClosed || state.isSuccess) return;

      final order = state.order;
      if (order == null) return;
      try {
        final refreshed = await _repository.order(orderId: order.id);
        emit(
          state.copyWith(
            order: refreshed,
            isSuccess: refreshed.tickets.isNotEmpty,
          ),
        );
        if (refreshed.tickets.isNotEmpty) return;
      } catch (_) {
        continue;
      }
    }
  }
}
