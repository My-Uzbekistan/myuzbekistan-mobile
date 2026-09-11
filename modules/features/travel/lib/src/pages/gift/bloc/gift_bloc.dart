import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'gift_event.dart';

part 'gift_state.dart';

part 'gift_bloc.freezed.dart';

@injectable
class GiftBloc extends Bloc<GiftBlocEvent, GiftBlocState> {
  final Repository _repository;

  GiftBloc(this._repository) : super(GiftBlocState()) {
    on<_InitialGiftBlocEvent>(_initialGiftEvent);
    on<_LoadGiftHistoryGiftBlocEvent>(_loadGiftHistoryGiftBlocEvent);
    on<_ActiveteGiftGiftBlocEvent>(_activateGiftGiftBlocEvent);
    on<_ClearActiveGiftBlocEvent>(_clearActiveGiftBlocEvent);
  }

  Future<void> _initialGiftEvent(
    _InitialGiftBlocEvent event,
    Emitter<GiftBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        haveGift: false,
        claimStatus: null,
        activeClaim: null,
        activeStatusCode: null,
      ),
    );
    try {
      final result = await _repository.giftActive();
      emit(
        state.copyWith(
          isLoading: false,
          haveGift: result == null,
          claimStatus: result,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          haveGift: false,
          claimStatus: ClaimStatus(timeLeft: 10, timeStatus: 2),
          activeStatusCode: e is DioException ? e.response?.statusCode : null,
        ),
      );
    }
  }

  Future<void> _loadGiftHistoryGiftBlocEvent(
    _LoadGiftHistoryGiftBlocEvent event,
    Emitter<GiftBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final result = await _repository.giftHistory();
      emit(state.copyWith(isLoading: false, items: result));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e is DioException && e.error is AppException
              ? (e.error as AppException).message
              : null,
        ),
      );
    }
  }

  Future<void> _activateGiftGiftBlocEvent(
    _ActiveteGiftGiftBlocEvent event,
    Emitter<GiftBlocState> emit,
  ) async {
    emit(
      state.copyWith(isLoading: true, activeClaim: null, errorMessage: null),
    );
    try {
      final result = await _repository.giftActivate();
      emit(
        state.copyWith(isLoading: false, haveGift: false, activeClaim: result),
      );
      add(GiftBlocEvent.initial());
      add(GiftBlocEvent.loadGiftHistory());
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: (e.error as AppException).message,
          ),
        );
      } else {
        emit(state.copyWith(isLoading: false));
      }
    }
  }

  Future<void> _clearActiveGiftBlocEvent(
    _ClearActiveGiftBlocEvent event,
    Emitter<GiftBlocState> emit,
  ) async {
    emit(state.copyWith(activeClaim: null, haveGift: false));
  }
}
