import 'dart:async';

import 'package:domain/domain.dart';
import 'package:finance/src/presentation/verification/bloc/types.dart';
import 'package:finance/src/service/FinanceSharedService.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'verification_event.dart';

part 'verification_state.dart';

part 'blocs/add_card_verification_bloc.dart';

part 'verification_bloc.freezed.dart';

abstract class VerificationBloc
    extends Bloc<VerificationEvent, VerificationState> {
  int time = 0;
  Timer? _timer;

  VerificationBloc(super.initialState) {
    on<_VerificationUpdateTimerEvent>(_updateTimer);
    on<_VerificationSetCodeEvent>(_setCode);
    on<_VerificationResendEvent>(_resend);
    on<_VerificationVerifyEvent>(_verify);
    on<_VerificationSetCardIdEvent>(_setCardIdEvent);

    setTimer();
  }

  void _setCardIdEvent(
    _VerificationSetCardIdEvent event,
    Emitter<VerificationState> emitter,
  ) {
    emitter(state.copyWith(cardId: event.cardId));
  }

  void _updateTimer(
    _VerificationUpdateTimerEvent event,
    Emitter<VerificationState> emitter,
  ) {
    emitter(
      state.copyWith(
        timer: event.timer,
        isRetry: event.isRetry,
        navState: null,
      ),
    );
  }

  void _setCode(
    _VerificationSetCodeEvent event,
    Emitter<VerificationState> emitter,
  ) {
    if (event.code != state.code) {
      emitter.call(
        state.copyWith(code: event.code, navState: null, hasError: false),
      );
      if (event.code.length == 6) {
        add(VerificationEvent.verify());
      }
    }
  }

  void _resend(
    _VerificationResendEvent event,
    Emitter<VerificationState> emitter,
  ) {
    emitter.call(state.copyWith(code: "", isRetry: false, navState: null));
  }

  void _verify(
    _VerificationVerifyEvent event,
    Emitter<VerificationState> emitter,
  );

  void setTimer({int t = 120}) {
    time = t;
    _startTimer();
  }

  _startTimer() {
    _timer?.cancel();
    add(VerificationEvent.updateTimer(_convert()));
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      time = --time;
      if (time <= 0) {
        _timer?.cancel();
      }
      add(VerificationEvent.updateTimer(_convert(), isRetry: time <= 0));
    });
  }

  String _convert() {
    if (time <= 0) return "";
    int minutes = time ~/ 60; // Integer division to get minutes
    int remainingSeconds = time % 60;
    String minutesStr = minutes.toString().padLeft(
      1,
      '0',
    ); // Pad with '0' if single digit
    String secondsStr = remainingSeconds.toString().padLeft(
      2,
      '0',
    ); // Pad with '0' if single digit

    return "$minutesStr:$secondsStr";
  }

  @override
  Future<void> close() {
    _timer?.cancel();

    return super.close();
  }
}
