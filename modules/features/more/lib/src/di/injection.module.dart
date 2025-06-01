//@GeneratedMicroModule;MorePackageModule;package:more/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:more/src/core/settings_bloc/app_settings_bloc.dart' as _i830;
import 'package:more/src/pages/auth/bloc/auth_bloc.dart' as _i221;
import 'package:more/src/pages/profile_page/bloc/profile_bloc.dart' as _i119;
import 'package:more/src/pages/shell_more/bloc/more_bloc.dart' as _i507;

class MorePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i507.MoreBloc>(() => _i507.MoreBloc(
          rp: gh<_i494.Repository>(),
          appStatusChangeListeners: gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i830.AppSettingsBloc>(() => _i830.AppSettingsBloc(
          gh<_i494.AppPreference>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i221.AuthBlock>(() => _i221.AuthBlock(
          gh<_i494.Repository>(),
          gh<_i494.SecurityStorage>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i119.ProfileBloc>(() => _i119.ProfileBloc(
          gh<_i494.SecurityStorage>(),
          gh<_i494.AppStatusChangeListeners>(),
          gh<_i494.Repository>(),
        ));
  }
}
