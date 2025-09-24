//@GeneratedMicroModule;DomainPackageModule;package:domain/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:domain/src/listeners/app_status_change_listeners.dart' as _i757;
import 'package:domain/src/use_cases/currencies_use_case.dart' as _i1066;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i1066.CurrenciesUseCase>(
        () => _i1066.CurrenciesUseCase(gh<_i494.Repository>()));
    gh.lazySingleton<_i757.AppStatusChangeListeners>(
        () => _i757.AppSettingsChangeListenerIml());
  }
}
