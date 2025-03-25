part of 'router.dart';

final _shellRoute = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state, navShell) =>
        ShellPageWrapper(navigationShell: navShell),
    branches: [
      StatefulShellBranch(routes: [
        GoRoute(
            path: AppRoutePath.shellHome.path,
            name: AppRoutePath.shellHome.name,
            builder: (context, state) => BlocProvider(
                  create: (context) => getIt<HomeBloc>(),
                  child: HomePage(),
                ))
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/map",
            name: "map",
            builder: (context, state) => Container(
                  child: Center(
                    child: Text("Map"),
                  ),
                ))
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/payment",
            name: "payment",
            builder: (context, state) => Container(
                  child: Center(
                    child: Text("Payment"),
                  ),
                ))
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/transfer",
            name: "transfer",
            builder: (context, state) => Container(
                  child: Center(
                    child: Text("Transfer"),
                  ),
                ))
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/more",
            name: "more",
            builder: (context, state) => ShellMorePage())
      ]),
    ],
  )
];
