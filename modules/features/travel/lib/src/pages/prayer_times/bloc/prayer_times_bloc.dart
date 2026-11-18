import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_times_event.dart';

part 'prayer_times_state.dart';

part 'prayer_times_bloc.freezed.dart';

@injectable
class PrayerTimesBloc extends Bloc<PrayerTimesEvent, PrayerTimesState> {
  final Repository _repository;
  final SecurityStorage _securityStorage;

  PrayerTimesBloc(this._repository, this._securityStorage)
    : super(const PrayerTimesState()) {
    on<_Initial>(_initial);
    on<_LoadLocations>(_loadLocations);
    on<_LoadReminders>(_loadReminders);
    on<_ChangeDay>(_changeDay);
    on<_ChangeLocation>(_changeLocation);
    on<_ToggleReminder>(_toggleReminder);
  }

  bool get _isAuthorized => _securityStorage.getAccessToken() != null;

  Future<void> _initial(_Initial event, Emitter<PrayerTimesState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        locationId: _securityStorage.getPrayerLocationId(),
        canUseReminders: _isAuthorized,
      ),
    );
    await _loadTimes(emit);
    emit(state.copyWith(isLoading: false));
    add(const PrayerTimesEvent.loadLocations());
    if (_isAuthorized) {
      add(const PrayerTimesEvent.loadReminders());
    }
  }

  Future<void> _loadLocations(
    _LoadLocations event,
    Emitter<PrayerTimesState> emit,
  ) async {
    try {
      final locations = await _repository.loadPrayerLocations();
      emit(state.copyWith(locations: locations));
    } catch (_) {}
  }

  Future<void> _loadReminders(
    _LoadReminders event,
    Emitter<PrayerTimesState> emit,
  ) async {
    try {
      final reminders = await _repository.loadPrayerReminders();
      emit(state.copyWith(reminders: reminders.prayers));
    } catch (_) {}
  }

  Future<void> _changeDay(
    _ChangeDay event,
    Emitter<PrayerTimesState> emit,
  ) async {
    emit(state.copyWith(dayOffset: state.dayOffset + event.step));
    await _loadTimes(emit);
  }

  Future<void> _changeLocation(
    _ChangeLocation event,
    Emitter<PrayerTimesState> emit,
  ) async {
    await _securityStorage.setPrayerLocationId(event.locationId);
    emit(state.copyWith(locationId: event.locationId));
    await _loadTimes(emit);
    if (_isAuthorized && state.reminders.isNotEmpty) {
      try {
        await _saveReminders(state.reminders);
      } catch (_) {}
    }
  }

  Future<void> _toggleReminder(
    _ToggleReminder event,
    Emitter<PrayerTimesState> emit,
  ) async {
    final previous = state.reminders;
    final updated = previous.contains(event.key)
        ? previous.where((e) => e != event.key).toList()
        : [...previous, event.key];
    emit(state.copyWith(reminders: updated));
    try {
      await _saveReminders(updated);
    } catch (e) {
      emit(state.copyWith(reminders: previous, errorMessage: e.toString()));
    }
  }

  Future<void> _saveReminders(List<PrayerKey> prayers) {
    return _repository.updatePrayerReminders(
      locationId: state.locationId ?? state.prayerTimes?.locationId ?? 0,
      prayers: prayers,
    );
  }

  Future<void> _loadTimes(Emitter<PrayerTimesState> emit) async {
    try {
      final result = await _repository.loadPrayerTimes(
        locationId: state.locationId,
        date: state.date,
      );
      emit(
        state.copyWith(
          prayerTimes: result,
          locationId: state.locationId ?? result.locationId,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
