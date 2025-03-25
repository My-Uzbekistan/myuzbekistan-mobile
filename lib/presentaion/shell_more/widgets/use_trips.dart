import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
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
                "Useful tips",
                style: CustomTypography.H2,
              ),
            ),
            ...useFull.map((use) => SettingsCell(text: use.title??"",onTap: (){
              debugPrint("uTapData ");
              debugPrint("uTapData ");
            },)).toList(),
          ],
        ),
      ),
    );
  }
}
