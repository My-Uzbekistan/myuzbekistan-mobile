//@GeneratedMicroModule;DataPackageModule;package:data/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/src/contract/contract_service.dart' as _i930;
import 'package:data/src/contract/repository/contract_repository_impl.dart'
    as _i359;
import 'package:data/src/devices/src/network/api/devices_api_service.dart'
    as _i79;
import 'package:data/src/devices/src/network/repository/devices_repository_impl.dart'
    as _i507;
import 'package:data/src/di/module/locale_module.dart' as _i168;
import 'package:data/src/di/module/network_module.dart' as _i236;
import 'package:data/src/finance/src/network/api/finance_api_service.dart'
    as _i210;
import 'package:data/src/finance/src/network/repository/finance_repository_impl.dart'
    as _i144;
import 'package:data/src/locale/AppPreferenceImpl.dart' as _i80;
import 'package:data/src/locale/security_storage_impl.dart' as _i916;
import 'package:data/src/market/src/network/api/market_api_service.dart'
    as _i522;
import 'package:data/src/market/src/network/repository/market_repository_impl.dart'
    as _i1012;
import 'package:data/src/museum/src/network/api/museum_api_service.dart'
    as _i672;
import 'package:data/src/museum/src/network/repository/museum_repository_impl.dart'
    as _i47;
import 'package:data/src/premium/premium_service.dart' as _i282;
import 'package:data/src/premium/repository/PremiumRepository.dart' as _i872;
import 'package:data/src/search/src/network/api/search_api_service.dart'
    as _i1015;
import 'package:data/src/search/src/network/repository/search_repository_impl.dart'
    as _i1057;
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
      () => networkModule.devApiUrl,
      instanceName: 'baseUrl',
      registerFor: {_dev},
    );
    gh.factory<_i494.AppPreference>(() => _i80.AppPreferenceImpl(
        box: gh<_i811.Box<dynamic>>(instanceName: 'myUzblocaleStorageBox')));
    gh.factory<_i494.SecurityStorage>(() => _i916.SecurityStorageImpl(
        box: gh<_i811.Box<dynamic>>(instanceName: 'myUzblocalesecurityBox01')));
    gh.lazySingleton<String>(
      () => networkModule.prodApiUrl,
      instanceName: 'baseUrl',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio(
          gh<_i494.AppPreference>(),
          gh<_i494.SecurityStorage>(),
          gh<String>(instanceName: 'baseUrl'),
          gh<_i934.Alice>(),
        ));
    gh.factory<_i930.ContractService>(
        () => _i930.ContractService(gh<_i811.Dio>()));
    gh.factory<_i79.DevicesApiService>(
        () => _i79.DevicesApiService(gh<_i361.Dio>()));
    gh.factory<_i210.FinanceApiService>(
        () => _i210.FinanceApiService(gh<_i361.Dio>()));
    gh.factory<_i522.MarketApiService>(
        () => _i522.MarketApiService(gh<_i361.Dio>()));
    gh.factory<_i672.MuseumApiService>(
        () => _i672.MuseumApiService(gh<_i361.Dio>()));
    gh.factory<_i282.PremiumService>(
        () => _i282.PremiumService(gh<_i811.Dio>()));
    gh.factory<_i1015.SearchApiService>(
        () => _i1015.SearchApiService(gh<_i361.Dio>()));
    gh.factory<_i926.RestService>(() => _i926.RestService(gh<_i811.Dio>()));
    gh.factory<_i494.MuseumRepository>(
        () => _i47.MuseumRepositoryImpl(gh<_i672.MuseumApiService>()));
    gh.factory<_i494.DevicesRepository>(
        () => _i507.DevicesRepositoryImpl(gh<_i79.DevicesApiService>()));
    gh.factory<_i494.Repository>(() => _i305.RepositoryImp(
          gh<_i926.RestService>(),
          gh<_i494.SecurityStorage>(),
        ));
    gh.factory<_i494.MarketRepository>(() => _i1012.MarketRepositoryImpl(
          gh<_i522.MarketApiService>(),
          gh<_i494.AppPreference>(),
        ));
    gh.factory<_i494.FinanceRepository>(
        () => _i144.FinanceRepositoryImpl(gh<_i210.FinanceApiService>()));
    gh.factory<_i494.SearchRepository>(
        () => _i1057.SearchRepositoryImpl(gh<_i1015.SearchApiService>()));
    gh.factory<_i494.ContractRepository>(
        () => _i359.ContractRepositoryImpl(gh<_i930.ContractService>()));
    gh.factory<_i494.PremiumRepository>(
        () => _i872.PremiumRepositoryImpl(gh<_i282.PremiumService>()));
  }
}

class _$NetworkModule extends _i236.NetworkModule {}

class _$LocaleModule extends _i168.LocaleModule {}
