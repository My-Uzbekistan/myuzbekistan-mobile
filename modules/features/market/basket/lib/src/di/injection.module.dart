//@GeneratedMicroModule;BasketPackageModule;package:basket/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:basket/src/presentation/basket/bloc/basket_bloc.dart' as _i774;
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart'
    as _i826;
import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;

class BasketPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i774.BasketBloc>(
        () => _i774.BasketBloc(gh<_i494.MarketRepository>()));
    gh.factory<_i826.CheckoutBloc>(
        () => _i826.CheckoutBloc(gh<_i494.MarketRepository>()));
  }
}
