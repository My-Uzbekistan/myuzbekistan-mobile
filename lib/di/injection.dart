import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:more/more.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';

import '../core/navigation/router.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(includeMicroPackages: true,
    externalPackageModulesBefore: [
  ExternalModule(DataPackageModule),
  ExternalModule(DomainPackageModule)
], externalPackageModulesAfter: [
  ExternalModule(TravelPackageModule),
  ExternalModule(MorePackageModule),
])
Future<void> configureInjection() async {
  await getIt.init(environment: Environment.dev);
  getIt<Alice>().setNavigatorKey(appRootNavigatorKey);
}
