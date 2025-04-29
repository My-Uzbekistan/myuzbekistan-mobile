import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/widgets/cell.dart';

class UseTripsWidget extends StatelessWidget {
  final List<MoreItem> useFull;

  const UseTripsWidget({super.key, this.useFull = const []});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.only(bottom: 8),
        width: double.maxFinite,
        color: context.appColors.background.elevation1Alt,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 8),
              child: Text(
                context.localizations!.usefulTips,
                style: CustomTypography.H2,
              ),
            ),
            ...useFull.map((use) => SettingsCell(
                  text: use.title ?? "",
                  onTap: () {
                    final actionUrl = use.actionUrl ?? "";
                    if (actionUrl.isNotEmpty) {
                      if (actionUrl.startsWith("http://") ||
                          actionUrl.startsWith("https://")) {
                        context.pushWebViewPage(
                            title: use.title, actionUrl: actionUrl);
                      } else {
                        context.push(actionUrl);
                      }
                    }

                  },
                )),
          ],
        ),
      ),
    );
  }
}
