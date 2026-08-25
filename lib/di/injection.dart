import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:basket/basket.dart';
import 'package:favorites/favorites.dart';
import 'package:finance/finance.dart';
import 'package:market_home/market_home.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
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
      ExternalModule(MorePackageModule),
  ExternalModule(TravelPackageModule),
  ExternalModule(FinancePackageModule),
  ExternalModule(MarketHomePackageModule),
  ExternalModule(FavoritesPackageModule),
  ExternalModule(BasketPackageModule),
])
Future<void> configureInjection() async {
  await getIt.init(environment: Environment.prod);
  getIt<Alice>().setNavigatorKey(appRootNavigatorKey);
}
