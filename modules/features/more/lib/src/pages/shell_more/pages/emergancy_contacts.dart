import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

class EmergencyItem {
  final String title;
  final String contact;
  final String assets;

  EmergencyItem(
      {required this.title, required this.contact, required this.assets});
}

class EmergencyContactsPage extends StatelessWidget {
  const EmergencyContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      EmergencyItem(
        title: context.localization.generalEmergency,
        contact: "112",
        assets: Assets.svgStaroflifeFill,
      ),
      EmergencyItem(
          title: context.localization.touristPolice,
          contact: "+998 71 233 17 17",
          assets: Assets.svgStarFill),
      EmergencyItem(
          title: context.localization.fire,
          contact: "101",
          assets: Assets.svgFlameFill),
      EmergencyItem(
          title: context.localization.police,
          contact: "102",
          assets: Assets.svgShieldFill),
      EmergencyItem(
          title: context.localization.medical,
          contact: "103",
          assets: Assets.svgCrossCaseFill),
      EmergencyItem(
          title: context.localization.gasEmergency,
          contact: "104",
          assets: Assets.svgBoltFill)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.emergencyContacts),
      ),
      body: ListView.separated(
        itemCount: items.length,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return _Item(
            item: items[index],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 12);
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final EmergencyItem item;

  const _Item({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        LauncherUtils.urlLauncher("tel://${item.contact.replaceAll(" ", "")}");
      },
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.appColors.fill.quaternary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: context.appColors.colors.red,
              child: item.assets.toSvgImage(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: CustomTypography.bodyLg,
                ),
                Text(
                  item.contact,
                  style: CustomTypography.bodyMd.copyWith(
                      color: context.appColors.textIconColor.secondary),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
