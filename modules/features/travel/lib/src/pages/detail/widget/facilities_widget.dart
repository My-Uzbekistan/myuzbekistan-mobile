import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'icon_text_cell.dart';
import 'section_title.dart';

class FacilitiesWidget extends StatelessWidget {
  final ContentDetail content;

  const FacilitiesWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final facilities = content.facilities ?? [];
    final hasMore = facilities.length > 4 || content.facilityGroupsAvailable;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(context.localization.whatAmenitiesAwait),
        ...facilities
            .take(4)
            .map((e) => IconTextCell(title: e.name, iconUrl: e.icon)),
        if (hasMore)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: AppActionButton(
              type: ActionButtonType.secondary,
              actionText: context.localization.showMore,
              onPressed: () {
                context.pushNamed(
                  AppNavPath.travel.detailAllFacilities.name,
                  extra: content,
                );
              },
            ),
          ),
      ],
    );
  }
}

class LanguagesWidget extends StatelessWidget {
  final String title;
  final List<String> languages;

  const LanguagesWidget({
    super.key,
    required this.title,
    required this.languages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: languages.map((e) => AppBadge(title: e)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
