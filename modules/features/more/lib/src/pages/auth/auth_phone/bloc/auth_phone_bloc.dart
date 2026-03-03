import 'package:shared/shared.dart';

part 'auth_phone_event.dart';

part 'auth_phone_state.dart';

part 'auth_phone_bloc.freezed.dart';

@injectable
class AuthPhoneBloc extends Bloc<AuthPhoneEvent, AuthPhoneState> {
  AuthPhoneBloc() : super(const AuthPhoneState()) {
    on<_AuthPhoneSetEvent>((event, emit) {
      emit(state.copyWith(phoneNumber: event.phoneNumber));
    });
  }
}
