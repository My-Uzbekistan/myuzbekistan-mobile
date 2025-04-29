part of 'router.dart';

final _shellRoute = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: rootNavigatorKey,
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
      // StatefulShellBranch(routes: [
      //   GoRoute(
      //       path: "/map",
      //       name: "map",
      //       builder: (context, state) => MessageContainer.comingSoonWidget(context))
      // ]),
      // StatefulShellBranch(routes: [
      //   GoRoute(
      //       path: "/payment",
      //       name: "payment",
      //       builder: (context, state) =>MessageContainer.comingSoonWidget(context))
      // ]),
      // StatefulShellBranch(routes: [
      //   GoRoute(
      //       path: "/transfer",
      //       name: "transfer",
      //       builder: (context, state) => MessageContainer.comingSoonWidget(context))
      // ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/more",
            name: "more",
            builder: (context, state) => ShellMorePage())
      ]),
    ],
  )
];
