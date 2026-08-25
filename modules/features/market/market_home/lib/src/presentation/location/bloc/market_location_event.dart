part of 'market_location_bloc.dart';

@freezed
abstract class MarketLocationEvent with _$MarketLocationEvent {
  factory MarketLocationEvent.start({int? selectedCityId}) =
      _MarketLocationStartEvent;
}
