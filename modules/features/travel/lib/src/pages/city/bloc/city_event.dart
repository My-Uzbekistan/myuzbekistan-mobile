part of 'city_bloc.dart';

@freezed
abstract class CityEvent with _$CityEvent {
  factory CityEvent.load(int cityId) = _Load;
}
