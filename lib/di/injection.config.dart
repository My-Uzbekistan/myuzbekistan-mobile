// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:uzbekistan_travel/core/listeners/appsettings_change_listener.dart'
    as _i454;
import 'package:uzbekistan_travel/core/settings_bloc/app_settings_bloc.dart'
    as _i994;
import 'package:uzbekistan_travel/presentaion/auth/bloc/auth_bloc.dart'
    as _i1072;
import 'package:uzbekistan_travel/presentaion/content_by_category/bloc/contents_by_category_bloc.dart'
    as _i683;
import 'package:uzbekistan_travel/presentaion/detail/detail_bloc/detail_bloc.dart'
    as _i1037;
import 'package:uzbekistan_travel/presentaion/home/home_bloc/home_bloc.dart'
    as _i1020;
import 'package:uzbekistan_travel/presentaion/home/widgets/load_content_bloc/load_content_bloc.dart'
    as _i485;
import 'package:uzbekistan_travel/presentaion/profile_page/bloc/profile_bloc.dart'
    as _i345;
import 'package:uzbekistan_travel/presentaion/shell_more/bloc/more_bloc.dart'
    as _i627;

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
    await _i494.CorePackageModule().init(gh);
    gh.lazySingleton<_i454.AppStatusChangeListeners>(
        () => _i454.AppSettingsChangeListenerIml());
    gh.factory<_i1037.DetailBloc>(() => _i1037.DetailBloc(
          gh<_i494.Repository>(),
          gh<_i454.AppStatusChangeListeners>(),
        ));
    gh.factory<_i1072.AuthBlock>(() => _i1072.AuthBlock(
          gh<_i494.Repository>(),
          gh<_i494.SecurityStorage>(),
          gh<_i454.AppStatusChangeListeners>(),
        ));
    gh.factory<_i345.ProfileBloc>(() => _i345.ProfileBloc(
          gh<_i494.SecurityStorage>(),
          gh<_i454.AppStatusChangeListeners>(),
          gh<_i494.Repository>(),
        ));
    gh.factory<_i683.ContentByCategoryBloc>(() => _i683.ContentByCategoryBloc(
          gh<_i494.Repository>(),
          gh<_i454.AppStatusChangeListeners>(),
        ));
    gh.factory<_i485.LoadContentBloc>(
        () => _i485.LoadContentBloc(gh<_i494.Repository>()));
    gh.factory<_i994.AppSettingsBloc>(() => _i994.AppSettingsBloc(
          gh<_i494.AppPreference>(),
          gh<_i454.AppStatusChangeListeners>(),
        ));
    gh.factory<_i1020.HomeBloc>(() => _i1020.HomeBloc(
          gh<_i494.Repository>(),
          gh<_i454.AppStatusChangeListeners>(),
        ));
    gh.factory<_i627.MoreBloc>(() => _i627.MoreBloc(
          rp: gh<_i494.Repository>(),
          appStatusChangeListeners: gh<_i454.AppStatusChangeListeners>(),
        ));
    return this;
  }
}
