import 'package:finance/src/di/injection.dart';
import 'package:finance/src/presentation/add_cards/add_cards_page.dart';
import 'package:finance/src/presentation/cards/card_page.dart';
import 'package:finance/src/presentation/home/FinanceHomePage.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../presentation/add_cards/bloc/add_card_bloc.dart';

mixin FeatureFinanceRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.finance.financeCards.path,
      name: AppNavPath.finance.financeCards.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: CardsPage(),
            context: context,
            state: state,
          ),
    ),

    GoRoute(
      path: AppNavPath.finance.financeAddCard.path,
      name: AppNavPath.finance.financeAddCard.name,
      pageBuilder:
          (context, state) => buildSlideTransitionPage(
            child: BlocProvider(create: (context)=>getIt<AddCardBloc>(),child: AddCardsPage(),),
            context: context,
            state: state,
          ),
    ),
  ];
  static final shellFinance = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.finance.financeHome.path,
        name: AppNavPath.finance.financeHome.name,
        builder: (context, state) => FinanceHomePage(),
      ),
    ],
  );
}
