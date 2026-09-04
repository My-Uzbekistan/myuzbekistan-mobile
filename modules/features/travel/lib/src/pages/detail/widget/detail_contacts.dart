import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'icon_text_cell.dart';
import 'section_title.dart';

class DetailContacts extends StatelessWidget {
  final ContentDetail content;

  const DetailContacts({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(context.localization.contacts),
        ...(content.contacts ?? []).take(4).map(
              (e) => IconTextCell(
                title: e.contactName.orEmpty(),
                iconUrl: e.icon,
                showArrow: true,
                onTap: () {
                  if (e.action != null) {
                    context.more.openUrl(e.actionUrl!);
                  }
                },
              ),
            ),
      ],
    );
  }
}
