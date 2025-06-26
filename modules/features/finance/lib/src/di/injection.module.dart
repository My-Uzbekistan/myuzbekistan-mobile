//@GeneratedMicroModule;FinancePackageModule;package:finance/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:finance/src/presentation/add_cards/bloc/add_card_bloc.dart'
    as _i724;
import 'package:injectable/injectable.dart' as _i526;

class FinancePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i724.AddCardBloc>(() => _i724.AddCardBloc());
  }
}
