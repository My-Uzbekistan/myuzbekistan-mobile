import 'package:component_res/component_res.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:upgrader/upgrader.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/upgrader/mock_upgrader.dart' show MockUpgraderAppStore;



final global = _Global();

class _Global {
  late final Upgrader upgrader;

  void globalInit() async {
    upgrader =
    // kDebugMode
    //     ? Upgrader(
    //         storeController: UpgraderStoreController(
    //             onAndroid: () => MockUpgraderAppStore()),
    //         debugLogging: true,
    //   debugDisplayAlways: true
    //       )
    //     :
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
    final isBlocked = widget.upgrader.blocked();
    final showIgnore = isBlocked ? false : widget.showIgnore;
    final showLater = isBlocked ? false : widget.showLater;
    final String? appStoreVersion = widget.upgrader.currentAppStoreVersion;
    final String? installedVersion = widget.upgrader.currentInstalledVersion;

    debugPrint("Upgarede ${widget.upgrader.shouldDisplayUpgrade()}");
    // widget.upgrader.saveLastAlerted();
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

class ForceUpdatePage extends StatefulWidget {
  final VoidCallback update;
  final VoidCallback later;

  const ForceUpdatePage({super.key, required this.update, required this.later});

  @override
  State<ForceUpdatePage> createState() => _ForceUpdatePageState();
}

class _ForceUpdatePageState extends State<ForceUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ).copyWith(bottom: 8),
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.pngForceUpdate.toImage(
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Text(context.localizations!.new_version_available).h2(),
                  Text(
                    context.localizations!.new_features_and_security,
                    textAlign: TextAlign.center,
                  ).bodyMd(
                    color: context.appColors.textIconColor.secondary
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppActionButton(
                      actionText:context.localizations!.update_app_now,
                      onPressed: widget.update,
                    ),
                    AppActionButton(
                      actionText: context.localizations!.update_app_later,
                      type: ActionButtonType.text,
                      onPressed: widget.later,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
