import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'city_event.dart';

part 'city_state.dart';

part 'city_bloc.freezed.dart';

@injectable
class CityBloc extends Bloc<CityEvent, CityState> {
  final Repository _repository;

  CityBloc(this._repository) : super(CityState()) {
    on<_Load>(_load);
  }

  Future<void> _load(_Load event, Emitter<CityState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final position = LocationManager().getCurrentPosition();
      final city = await _repository.loadCityDetail(
        cityId: event.cityId,
        lat: position?.latitude,
        lon: position?.longitude,
      );
      emit(state.copyWith(city: city));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
