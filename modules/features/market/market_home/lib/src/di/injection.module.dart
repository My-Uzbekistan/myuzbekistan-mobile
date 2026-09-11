//@GeneratedMicroModule;MarketHomePackageModule;package:market_home/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:market_home/src/presentation/catalog/bloc/market_catalog_bloc.dart'
    as _i145;
import 'package:market_home/src/presentation/category/bloc/market_category_bloc.dart'
    as _i725;
import 'package:market_home/src/presentation/detail/bloc/market_product_detail_bloc.dart'
    as _i219;
import 'package:market_home/src/presentation/home/bloc/market_home_bloc.dart'
    as _i296;
import 'package:market_home/src/presentation/location/bloc/market_location_bloc.dart'
    as _i652;
import 'package:market_home/src/presentation/order_detail/bloc/market_order_detail_bloc.dart'
    as _i541;
import 'package:market_home/src/presentation/orders/bloc/market_orders_bloc.dart'
    as _i65;
import 'package:market_home/src/presentation/search/bloc/market_search_bloc.dart'
    as _i1049;

class MarketHomePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i296.MarketHomeBloc>(() => _i296.MarketHomeBloc(
          gh<_i494.MarketRepository>(),
          gh<_i494.AppRefreshListener>(),
        ));
    gh.factory<_i541.MarketOrderDetailBloc>(() => _i541.MarketOrderDetailBloc(
          gh<_i494.MarketRepository>(),
          gh<_i494.AppRefreshListener>(),
        ));
    gh.factory<_i65.MarketOrdersBloc>(() => _i65.MarketOrdersBloc(
          gh<_i494.MarketRepository>(),
          gh<_i494.AppRefreshListener>(),
        ));
    gh.factory<_i145.MarketCatalogBloc>(
        () => _i145.MarketCatalogBloc(gh<_i494.MarketRepository>()));
    gh.factory<_i652.MarketLocationBloc>(
        () => _i652.MarketLocationBloc(gh<_i494.MarketRepository>()));
    gh.factory<_i725.MarketCategoryBloc>(() => _i725.MarketCategoryBloc(
          gh<_i494.MarketRepository>(),
          gh<_i494.AppRefreshListener>(),
        ));
    gh.factory<_i219.MarketProductDetailBloc>(
        () => _i219.MarketProductDetailBloc(
              gh<_i494.MarketRepository>(),
              gh<_i494.AppRefreshListener>(),
            ));
    gh.factory<_i1049.MarketSearchBloc>(() => _i1049.MarketSearchBloc(
          gh<_i494.MarketRepository>(),
          gh<_i494.AppRefreshListener>(),
        ));
  }
}
