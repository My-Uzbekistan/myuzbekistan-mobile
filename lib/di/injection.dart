import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../core/navigation/router.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
    includeMicroPackages: true,
  externalPackageModulesBefore: [ExternalModule(CorePackageModule)]
)
Future<void> configureInjection() async {
  await getIt.init(environment: Environment.dev);
  getIt<Alice>().setNavigatorKey(rootNavigatorKey);

}
