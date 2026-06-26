//@GeneratedMicroModule;TravelPackageModule;package:travel/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:travel/src/catalog/bloc/catalog_bloc.dart' as _i236;
import 'package:travel/src/pages/catalog_investments/bloc/investments_bloc.dart'
    as _i369;
import 'package:travel/src/pages/catalog_investments/pages/search_page/bloc/invest_search_bloc.dart'
    as _i1065;
import 'package:travel/src/pages/content_by_category/bloc/contents_by_category_bloc.dart'
    as _i514;
import 'package:travel/src/pages/detail/detail_bloc/detail_bloc.dart' as _i776;
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart' as _i109;
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart' as _i669;
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart' as _i359;
import 'package:travel/src/pages/home/widgets/load_content_bloc/load_content_bloc.dart'
    as _i335;
import 'package:travel/src/pages/notifications/bloc/notification_bloc.dart'
    as _i69;
import 'package:travel/src/pages/notifications/notification_count_bloc/notification_count_cubit.dart'
    as _i45;
import 'package:travel/src/pages/onboarding/bloc/onboarding_bloc.dart' as _i638;
import 'package:travel/src/premium/bloc/premium_bloc.dart' as _i482;

class TravelPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i776.DetailBloc>(() => _i776.DetailBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i335.LoadContentBloc>(
        () => _i335.LoadContentBloc(gh<_i494.Repository>()));
    gh.factory<_i109.ReviewBloc>(() => _i109.ReviewBloc(
          gh<_i494.Repository>(),
          gh<_i494.SecurityStorage>(),
        ));
    gh.factory<_i514.ContentByCategoryBloc>(() => _i514.ContentByCategoryBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i359.HomeBloc>(() => _i359.HomeBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
          gh<_i494.SecurityStorage>(),
        ));
    gh.factory<_i1065.InvestSearchBloc>(
        () => _i1065.InvestSearchBloc(gh<_i494.Repository>()));
    gh.factory<_i236.CatalogBloc>(() => _i236.CatalogBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.lazySingleton<_i45.NotificationCountCubit>(
        () => _i45.NotificationCountCubit(gh<_i494.Repository>()));
    gh.factory<_i369.InvestmentsBloc>(
        () => _i369.InvestmentsBloc(gh<_i494.Repository>()));
    gh.factory<_i669.GiftBloc>(() => _i669.GiftBloc(gh<_i494.Repository>()));
    gh.factory<_i69.NotificationBloc>(
        () => _i69.NotificationBloc(gh<_i494.Repository>()));
    gh.factory<_i638.OnboardingBloc>(
        () => _i638.OnboardingBloc(gh<_i494.Repository>()));
    gh.factory<_i482.PremiumBloc>(
        () => _i482.PremiumBloc(gh<_i494.PremiumRepository>()));
  }
}
