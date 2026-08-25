import 'package:basket/src/di/injection.dart';
import 'package:basket/src/presentation/basket/basket_page.dart';
import 'package:basket/src/presentation/basket/bloc/basket_bloc.dart';
import 'package:basket/src/presentation/checkout/bloc/checkout_bloc.dart';
import 'package:basket/src/presentation/checkout/checkout_page.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

mixin FeatureBasketRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.market.marketCheckout.path,
      name: AppNavPath.market.marketCheckout.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) =>
              getIt<CheckoutBloc>()..add(CheckoutEvent.loadData()),
          child: const CheckoutPage(),
        ),
        context: context,
        state: state,
      ),
    ),
  ];

  static final shellBasket = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.market.marketBasket.path,
        name: AppNavPath.market.marketBasket.name,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<BasketBloc>()..add(BasketEvent.loadData()),
          child: BasketPage(
            onCheckout: () => context.market.pushMarketCheckout(),
          ),
        ),
      ),
    ],
  );
}
