part of 'home_bloc.dart';


@freezed
abstract class HomeBlocEvent with _$HomeBlocEvent{
  factory HomeBlocEvent.initial() = _HomeBlocInitialEvent;
}
