import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

part 'app_settings_bloc.freezed.dart';

part 'app_settings_bloc_event.dart';

part 'app_settings_bloc_state.dart';

@injectable
class AppSettingsBloc extends Bloc<AppSettingsBlocEvent, AppSettingsBlocState> {
  final AppPreference _appPreference;

  AppSettingsBloc(AppPreference appPreference)
    : _appPreference = appPreference,

      super(
        AppSettingsBlocState(
          appPreference.getLocale(),
          appPreference.getThemeMode(),
        ),
      ) {
    on<_SetLocaleEvent>(_setLocale);
    on<_SetThemeEvent>(_setTheme);
  }

  Future<void> _setLocale(
    _SetLocaleEvent event,
    Emitter<AppSettingsBlocState> emitter,
  ) async {
    await _appPreference.setLocale(event.locale);
    if (state.appLocale != event.locale) {
      GlobalHandler().refreshListener?.call();
    }
    emitter(state.copyWith(appLocale: event.locale));
  }
  Future<void> _setTheme(
    _SetThemeEvent event,
    Emitter<AppSettingsBlocState> emitter,
  ) async {
    if (state.mode != event.mode) await _appPreference.setTheme(event.mode);

    emitter(state.copyWith(mode: event.mode));
  }
}
