part of 'app_settings_bloc.dart';

@Freezed(
    fromJson: false,
    toJson: false,
    makeCollectionsUnmodifiable: false,
    map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
    when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false))
abstract class AppSettingsBlocState with _$AppSettingsBlocState {
  factory AppSettingsBlocState(AppLocale appLocale, ThemeMode mode) =
      _AppSettingsBlocState;
}
