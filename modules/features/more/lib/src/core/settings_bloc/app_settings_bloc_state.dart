part of 'app_settings_bloc.dart';

@Freezed(
    fromJson: false,
    toJson: false,
    makeCollectionsUnmodifiable: false,
)
abstract class AppSettingsBlocState with _$AppSettingsBlocState {
  factory AppSettingsBlocState(AppLocale appLocale, ThemeMode mode) =
      _AppSettingsBlocState;
}
