import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared/shared.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBlock extends Bloc<AuthEvent, AuthState> {
  final Repository _repository;
  final SecurityStorage _securityStorage;
  final AppStatusChangeListeners _appLocaleChangeListener;

  AuthBlock(
    Repository rp,
    SecurityStorage secS,
    AppStatusChangeListeners appStatusChangeListeners,
  ) : _repository = rp,
      _securityStorage = secS,
      _appLocaleChangeListener = appStatusChangeListeners,
      super(AuthState.defaultState()) {
    on<_AuthGoogleEvent>(_googleAuth);
    on<_AuthAppleEvent>(_appleAuth);
    on<_AuthLogOutEvent>(_logOutEvent);
  }

  Future<void> _googleAuth(
    _AuthGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (state is DefaultState) {
      try {
        emit(AuthState.googleLoading());
        final GoogleSignIn googleSignIn = GoogleSignIn();
        await googleSignIn.signOut();
        final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        if (googleAuth?.idToken != null) {
          final token = await _repository.authGoogle(
            idToken: googleAuth!.idToken!,
          );
          await _securityStorage.setToken(token: token);
          if (!token.hasPin) {
            _appLocaleChangeListener.refresh();
          }
          _setFirebaseToken();
          emit(AuthState.authSuccessState(hasPin: token.hasPin));
        } else {
          emit(AuthState.defaultState());
        }
      } catch (e) {
        emit(AuthState.defaultState());
      }
    }
  }

  Future<void> _appleAuth(
    _AuthAppleEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (state is DefaultState) {
      try {
        emit(AuthState.appleLoading());

        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
            AppleIDAuthorizationScopes.fullName,
          ],
        );

        if (credential.identityToken != null) {
          final token = await _repository.authApple(
            idToken: credential.identityToken!,
            fullName: credential.givenName,
          );
          await _securityStorage.setToken(token: token);
          if (!token.hasPin) {
            _appLocaleChangeListener.refresh();
          }
          _setFirebaseToken();
          emit(AuthState.authSuccessState(hasPin: token.hasPin));
        } else {
          emit(AuthState.defaultState());
        }
      } catch (e) {
        emit(AuthState.defaultState());
      }
    }
  }

  Future<void> _setFirebaseToken() async {
    try {
      FirebaseMessaging.instance.getToken().then((token) {
        if (token != null) {
          _repository.setFirebaseToken(token: token);
        }
      });
    } catch (_) {}
  }

  Future<void> _logOutEvent(
    _AuthLogOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _securityStorage.clearData();
    _appLocaleChangeListener.refresh();
  }
}
