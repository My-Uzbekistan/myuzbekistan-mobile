import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';



final global = _Global();

class _Global {
  late final Upgrader upgrader;

  void globalInit() async {
    upgrader =
    Upgrader(
            durationUntilAlertAgain: const Duration(days: 1),
            debugLogging: true,
          );
    await upgrader.initialize();
  }
}

class MyUpgradeAlert extends UpgradeAlert {
  MyUpgradeAlert(
      {super.key,
      super.child,
      super.navigatorKey,
      super.showIgnore = true,
      super.showLater = true,
      super.showReleaseNotes = false})
      : super(upgrader: global.upgrader);

  @override
  UpgradeAlertState createState() => MyUpgradeAlertState();
}

class MyUpgradeAlertState extends UpgradeAlertState {
  @override
  Future<void> showTheDialog({
    Key? key,
    required BuildContext context,
    required String? title,
    required String message,
    required String? releaseNotes,
    required bool barrierDismissible,
    required UpgraderMessages messages,
  }) async {
    // final isBlocked = widget.upgrader.blocked();
    // final showIgnore = isBlocked ? false : widget.showIgnore;
    // final showLater = isBlocked ? false : widget.showLater;
    // final String? appStoreVersion = widget.upgrader.currentAppStoreVersion;
    // final String? installedVersion = widget.upgrader.currentInstalledVersion;

    global.upgrader.saveLastAlerted();
    // appRootNavigatorKey.currentContext?.pushNamed(
    //     AppNavPath.more.forceUpdate.name,
    //     queryParameters: {"appStoreLink": "versionStatus.appStoreLink"});

    await showGeneralDialog(
        context: context,
        pageBuilder: (context, anim, secondaryAnim) {
          return ForceUpdatePage(
            update: () {
              onUserUpdated(context, !widget.upgrader.blocked());
            },
            later: () {
              onUserLater(context, true);

            },
          );
        },
        barrierDismissible: false);



  }
}

class ForceUpdatePage extends StatelessWidget {
  final VoidCallback update;
  final VoidCallback later;

  const ForceUpdatePage({super.key, required this.update, required this.later});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: Stack(
        children: [
          Container(
            height: 531,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.appColors.brandSeaBlue.withValues(alpha: 0.9),
                  context.appColors.brandSeaBlue.withValues(alpha: 0),
                ],
              ),
            ),
          ),
          Positioned(
            top: 248,
            left: 16,
            right: 16,
            child: Column(
              spacing: 20,
              children: [
                Assets.png.forceUpdate.image(
                  width: 132,
                  height: 132,
                  fit: BoxFit.contain,
                ),
                Column(
                  spacing: 12,
                  children: [
                    Text(
                      context.localizations!.new_version_available,
                      textAlign: TextAlign.center,
                    ).h1(color: context.appColors.textIconColor.primary),
                    Text(
                      context.localizations!.new_features_and_security,
                      textAlign: TextAlign.center,
                    ).bodyLg(color: context.appColors.textIconColor.secondary),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 12,
                  children: [
                    AppActionButton(
                      actionText: context.localizations!.update_app_now,
                      sizeType: ActionButtonSizeType.large,
                      onPressed: update,
                    ),
                    AppActionButton(
                      actionText: context.localizations!.update_app_later,
                      type: ActionButtonType.text,
                      sizeType: ActionButtonSizeType.large,
                      onPressed: later,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
