import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../core/navigation/router.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  await configureDataInjection();
  getIt<Alice>().setNavigatorKey(rootNavigatorKey);
  getIt.init();
}
