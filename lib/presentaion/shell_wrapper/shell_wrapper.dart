import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/app_bottom_nav_bar.dart';
import 'package:uzbekistan_travel/upgrader/upgrader_global.dart';

class ShellPageWrapper extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ShellPageWrapper({super.key, required this.navigationShell});

  @override
  State<ShellPageWrapper> createState() => _ShellPageWrapperState();
}

class _ShellPageWrapperState extends State<ShellPageWrapper> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((t) {
      NotificationService().listenNotification(
          logRemoteMessage: (remoteMessage) {
        openNotification(remoteMessage);
      });
    });
    super.initState();
  }

  void openNotification(RemoteMessage message) {
    try {
      final String? deeplink = message.data["deeplink"];
      if (deeplink != null && deeplink.isNotEmpty) {
        final uri = Uri.parse(deeplink);
        if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty) {
          appRootNavigatorKey.currentContext?.push(uri.toString());
        }
      }
    } catch (_) {}
  }


  @override
  Widget build(BuildContext context) {
    return MyUpgradeAlert(
      child: Scaffold(
        backgroundColor: context.appColors.background.underlayer,
        extendBody: true,
        body: widget.navigationShell,
        bottomNavigationBar: BlocProvider(
          create: (_) => getIt<ProfileBloc>()..add(ProfileBlocEvent.initEvent()),
          child: BlocBuilder<ProfileBloc, ProfileBlocState>(
            builder: (context, state) {
              final dataState = state is ProfileBlocDataState ? state : null;
              return AppBottomNavBar(
                selectedIndex: widget.navigationShell.currentIndex,
                onTabSelected: _goBranch,
                profilePhotoUrl: dataState?.userModel?.photoUrl,
                isPremium: dataState?.isPremium ?? false,
              );
            },
          ),
        ),
      ),
    );
  }
}
