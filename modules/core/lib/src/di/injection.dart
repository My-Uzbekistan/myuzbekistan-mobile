import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt _getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDataInjection()  async => await _getIt.init();
