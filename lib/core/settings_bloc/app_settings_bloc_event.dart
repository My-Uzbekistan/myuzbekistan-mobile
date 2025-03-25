part of 'app_settings_bloc.dart';



@Freezed(
    fromJson: false,
    toJson: false,
    makeCollectionsUnmodifiable: false,
    map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
    when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false))
abstract class AppSettingsBlocEvent with _$AppSettingsBlocEvent {

  factory AppSettingsBlocEvent.setLocale(AppLocale locale) = _SetLocaleEvent;
  factory AppSettingsBlocEvent.setTheme(ThemeMode mode) = _SetThemeEvent;
}
