import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'devices_event.dart';
part 'devices_state.dart';
part 'devices_bloc.freezed.dart';

@injectable
class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  final DevicesRepository _repository;
  final AppRefreshListener _refresh;

  DevicesBloc(this._repository, this._refresh) : super(const DevicesState()) {
    on<_DevicesFetch>(_fetch);
    on<_DevicesTerminateSession>(_terminateSession);
    on<_DevicesTerminateOthers>(_terminateOthers);
  }

  Future<void> _fetch(_DevicesFetch event, Emitter<DevicesState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final sessions = await _repository.sessions();
      emit(state.copyWith(sessions: sessions));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _terminateSession(
    _DevicesTerminateSession event,
    Emitter<DevicesState> emit,
  ) async {
    emit(state.copyWith(terminatingId: event.sessionId, errorMessage: null));
    try {
      await _repository.terminateSession(sessionId: event.sessionId);
      emit(
        state.copyWith(
          sessions:
              state.sessions.where((e) => e.id != event.sessionId).toList(),
        ),
      );
      _refresh.notify(AppRefreshTopic.devices);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(terminatingId: null));
  }

  Future<void> _terminateOthers(
    _DevicesTerminateOthers event,
    Emitter<DevicesState> emit,
  ) async {
    emit(state.copyWith(isTerminatingOthers: true, errorMessage: null));
    try {
      await _repository.terminateOtherSessions();
      emit(
        state.copyWith(
          sessions: state.sessions.where((e) => e.isCurrent).toList(),
        ),
      );
      _refresh.notify(AppRefreshTopic.devices);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isTerminatingOthers: false));
  }
}
