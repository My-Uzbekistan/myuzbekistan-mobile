//@GeneratedMicroModule;TravelPackageModule;package:travel/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:travel/src/pages/content_by_category/bloc/contents_by_category_bloc.dart'
    as _i514;
import 'package:travel/src/pages/detail/detail_bloc/detail_bloc.dart' as _i776;
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart' as _i359;
import 'package:travel/src/pages/home/widgets/load_content_bloc/load_content_bloc.dart'
    as _i335;
import 'package:travel/src/pages/notifications/bloc/notification_bloc.dart'
    as _i69;

class TravelPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i335.LoadContentBloc>(
        () => _i335.LoadContentBloc(gh<_i494.Repository>()));
    gh.factory<_i514.ContentByCategoryBloc>(() => _i514.ContentByCategoryBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i69.NotificationBloc>(
        () => _i69.NotificationBloc(gh<_i494.Repository>()));
    gh.factory<_i776.DetailBloc>(() => _i776.DetailBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
        ));
    gh.factory<_i359.HomeBloc>(() => _i359.HomeBloc(
          gh<_i494.Repository>(),
          gh<_i494.AppStatusChangeListeners>(),
          gh<_i494.SecurityStorage>(),
        ));
  }
}
