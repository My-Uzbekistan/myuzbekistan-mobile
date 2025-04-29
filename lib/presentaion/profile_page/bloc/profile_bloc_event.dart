part of 'profile_bloc.dart';

@freezed
abstract class ProfileBlocEvent with _$ProfileBlocEvent {


  factory ProfileBlocEvent.initEvent() = _ProfileBlocInitEvent;
  factory ProfileBlocEvent.loadEvent() = _ProfileBlocLoadEvent;
  factory ProfileBlocEvent.logOut() = _ProfileBlocLogOutEvent;
  factory ProfileBlocEvent.deleteAccount() = _ProfileBlocDeleteEvent;


}