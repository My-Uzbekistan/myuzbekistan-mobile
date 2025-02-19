import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/detail/detail_page.dart';
import 'package:uzbekistan_travel/presentaion/home/home_bloc/home_bloc.dart';
import 'package:uzbekistan_travel/presentaion/home/page/home_page.dart';
import 'package:uzbekistan_travel/presentaion/search/search_page.dart';

enum AppRoute {
  home(path: "/", name: "home"),
  search(path: "/search", name: "search"),
  detail(path: "/detail", name: "detail");

  final String path;
  final String name;

  // Constructor
  const AppRoute({required this.path, required this.name});
}

final GoRouter routes = GoRouter(routes: [
  GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (context, state) => BlocProvider(
            create: (context) =>
                getIt<HomeBloc>()..add(HomeBlocEvent.initial()),
            child: HomePage(),
          )),
  GoRoute(
      path: AppRoute.search.path,
      name: AppRoute.search.name,
      builder: (context, state) => SearchPage()),


  GoRoute(
      path: AppRoute.detail.path,
      name: AppRoute.detail.name,
      builder: (context, state) => DetailPage())
]);
