// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i494;
import 'package:core/src/data/locale/AppPreferenceImpl.dart' as _i881;
import 'package:core/src/data/locale/security_storage_impl.dart' as _i490;
import 'package:core/src/data/network/api/service.dart' as _i358;
import 'package:core/src/data/repository/repository.dart' as _i964;
import 'package:core/src/di/module/locale_module.dart' as _i43;
import 'package:core/src/di/module/network_module.dart' as _i639;
import 'package:core/src/domain/repository.dart' as _i81;
import 'package:core/src/shared/local/app_preference.dart' as _i950;
import 'package:core/src/shared/local/security_storage.dart' as _i931;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localeModule = _$LocaleModule();
    final networkModule = _$NetworkModule();
    await gh.lazySingletonAsync<_i979.Box<dynamic>>(
      () => localeModule.localStorageBox(),
      instanceName: 'myUzblocaleStorageBox',
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i979.Box<dynamic>>(
      () => localeModule.securityStorageBox(),
      instanceName: 'myUzblocalesecurityBox01',
      preResolve: true,
    );
    gh.factory<_i950.AppPreference>(() => _i881.AppPreferenceImpl(
        box: gh<_i979.Box<dynamic>>(instanceName: 'myUzblocaleStorageBox')));
    gh.factory<_i931.SecurityStorage>(() => _i490.SecurityStorageImpl(
        box: gh<_i979.Box<dynamic>>(instanceName: 'myUzblocalesecurityBox01')));
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio(
          gh<_i494.AppPreference>(),
          gh<_i494.SecurityStorage>(),
        ));
    gh.factory<_i358.RestService>(() => _i358.RestService(gh<_i361.Dio>()));
    gh.factory<_i81.Repository>(
        () => _i964.RepositoryImp(gh<_i358.RestService>()));
    return this;
  }
}

class _$LocaleModule extends _i43.LocaleModule {}

class _$NetworkModule extends _i639.NetworkModule {}
