part of 'premium_cancel_bloc.dart';

@freezed
abstract class PremiumCancelEvent with _$PremiumCancelEvent {
  factory PremiumCancelEvent.cancel() = _Cancel;
}
