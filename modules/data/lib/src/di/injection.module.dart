//@GeneratedMicroModule;DataPackageModule;package:data/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/src/di/module/locale_module.dart' as _i168;
import 'package:data/src/di/module/network_module.dart' as _i236;
import 'package:data/src/finance/src/network/api/finance_api_service.dart'
    as _i210;
import 'package:data/src/finance/src/network/repository/finance_repository_impl.dart'
    as _i144;
import 'package:data/src/locale/AppPreferenceImpl.dart' as _i80;
import 'package:data/src/locale/security_storage_impl.dart' as _i916;
import 'package:data/src/travel/network/api/service.dart' as _i926;
import 'package:data/src/travel/network/repository/repository.dart' as _i305;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/domain.dart' as _i494;
import 'package:flutter_alice/alice.dart' as _i934;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared/shared.dart' as _i811;

const String _dev = 'dev';
const String _prod = 'prod';

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final networkModule = _$NetworkModule();
    final localeModule = _$LocaleModule();
    gh.lazySingleton<_i934.Alice>(() => networkModule.getAlice());
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
    gh.lazySingleton<String>(
      () => networkModule.prodApiUrl,
      instanceName: 'baseUrl',
      registerFor: {_dev},
    );
    gh.factory<_i494.AppPreference>(() => _i80.AppPreferenceImpl(
        box: gh<_i811.Box<dynamic>>(instanceName: 'myUzblocaleStorageBox')));
    gh.lazySingleton<String>(
      () => networkModule.devApiUrl,
      instanceName: 'baseUrl',
      registerFor: {_prod},
    );
    gh.factory<_i494.SecurityStorage>(() => _i916.SecurityStorageImpl(
        box: gh<_i811.Box<dynamic>>(instanceName: 'myUzblocalesecurityBox01')));
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio(
          gh<_i494.AppPreference>(),
          gh<_i494.SecurityStorage>(),
          gh<String>(instanceName: 'baseUrl'),
          gh<_i934.Alice>(),
        ));
    gh.factory<_i210.FinanceApiService>(
        () => _i210.FinanceApiService.new(gh<_i361.Dio>()));
    gh.factory<_i926.RestService>(() => _i926.RestService.new(gh<_i811.Dio>()));
    gh.factory<_i494.Repository>(() => _i305.RepositoryImp(
          gh<_i926.RestService>(),
          gh<_i494.SecurityStorage>(),
        ));
    gh.factory<_i494.FinanceRepository>(
        () => _i144.FinanceRepositoryImpl(gh<_i210.FinanceApiService>()));
  }
}

class _$NetworkModule extends _i236.NetworkModule {}

class _$LocaleModule extends _i168.LocaleModule {}
