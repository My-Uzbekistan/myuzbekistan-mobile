part of 'router.dart';

class ModalPage<T> extends Page<T> {
  const ModalPage({
    required this.child,
    this.showDragHandle = true,
  });

  final Widget child;
  final bool showDragHandle;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
      settings: this,
      builder: (context) {
        return child;
      },
      isScrollControlled: true,
      useSafeArea: true,
      clipBehavior: Clip.antiAlias,
      showDragHandle: showDragHandle);
}

enum SlideAlign { horizontal, vertical }

Page _slideTransition(
    {required Widget child,
    required BuildContext context,
    required GoRouterState state,
    SlideAlign slideAlign = SlideAlign.horizontal}) {
  final begin =
      slideAlign == SlideAlign.vertical ? Offset(0, 0.9) : Offset(0.9, 0);
  return Platform.isAndroid || slideAlign == SlideAlign.vertical
      ? CustomTransitionPage<void>(
          key: state.pageKey,
          child: child,
          transitionDuration: const Duration(milliseconds: 150),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: begin,
                end: Offset(0, 0),
              ).animate(animation),
              // CurveTween(curve: Curves.easeInOut).animate(animation),
              child: FadeTransition(
                opacity: Tween<double>(
                  begin: 0.8,
                  end: 1,
                ).animate(animation),
                child: child,
              ),
            );
          },
        )
      : CupertinoPage(child: child);
}
