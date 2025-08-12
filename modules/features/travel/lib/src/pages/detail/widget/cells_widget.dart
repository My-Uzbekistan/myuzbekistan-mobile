import 'package:component_res/component_res.dart';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'items_title.dart';

class CellsWidget extends StatelessWidget {
  final String title;
  final List<Contacts> contacts;

  const CellsWidget({super.key, required this.title, this.contacts = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemsTitle(title: title),
        Column(
          spacing: 12,
          children:
              contacts
                  .map(
                    (e) => _CellItem(
                      icon: e.icon,
                      name: e.name,
                      contact: e.contact,
                      onTap: () {
                        debugPrint("action  ${e.action}");
                        if (e.action != null) {
                          LauncherUtils.urlLauncher(e.action!);
                        }
                      },
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}

class _CellItem extends StatelessWidget {
  final Color? bgColor;
  final String? icon;
  final String? name;
  final String? contact;
  final VoidCallback? onTap;

  const _CellItem({
    super.key,
    this.contact,
    this.name,
    this.icon,
    this.bgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint("icon ${icon}");
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor ?? context.appColors.fill.quaternary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: context.appColors.fill.quaternary,
              ),
              child: ExtendedImage.network(
                icon ?? "",
                fit: BoxFit.cover,
                cache: true,
                cacheMaxAge: Duration(days: 10),
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(contact ?? "", style: CustomTypography.labelLg),
                  if ((name ?? "").isNotEmpty)
                    Text(
                      name ?? "",
                      style: CustomTypography.bodyMd.copyWith(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
