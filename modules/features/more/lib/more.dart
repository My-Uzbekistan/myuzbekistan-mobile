

export 'src/navigation/router.dart' show FeatureMoreRouter;
export 'src/pages/profile_page/bloc/profile_bloc.dart'
    show ProfileBloc, ProfileBlocEvent, ProfileBlocState, ProfileBlocDataState;
export 'src/di/injection.module.dart' show MorePackageModule;
export 'src/generated/locales/app_localizations.dart' show FeatureMoreLocalizations;
export 'src/core/settings_bloc/app_settings_bloc.dart';
export 'src/core/nearby_places/nearby_places_service.dart';

export 'src/pages/force_update/utils/version_checker.dart';
export 'src/pages/shell_more/widgets/nearby_places_disclosure_sheet.dart'
    show askNearbyPlacesOnLaunch;
