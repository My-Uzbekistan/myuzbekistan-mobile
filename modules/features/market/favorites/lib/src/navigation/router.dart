import 'package:favorites/src/di/injection.dart';
import 'package:favorites/src/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:favorites/src/presentation/favorites/favorites_page.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

mixin FeatureFavoritesRouter {
  static final shellFavorites = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.market.marketFavorites.path,
        name: AppNavPath.market.marketFavorites.name,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              getIt<FavoritesBloc>()..add(FavoritesEvent.loadData()),
          child: const FavoritesPage(),
        ),
      ),
    ],
  );
}
