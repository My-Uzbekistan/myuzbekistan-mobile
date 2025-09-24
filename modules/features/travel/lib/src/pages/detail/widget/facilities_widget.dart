import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/widget/underline_button.dart';

import 'icon_text_cell.dart';
import 'items_title.dart';

class FacilitiesWidget extends StatelessWidget {
  final List<Facility> facilities;

  const FacilitiesWidget({super.key, required this.facilities});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemsTitle(title: context.localization.whatAmenitiesAwait),
            ...facilities
                    .take(4)
                    .map((e) => IconTextCell(title: e.name, iconUrl: e.icon))
                    .toList() ??
                [],
            if (facilities.length > 4)
              DetailUnderLineButton(
                onTap: () {
                  context.pushNamed(
                    AppNavPath.travel.detailAllFacilities.name,
                    extra: facilities,
                  );
                },
                actionText: context.localization.viewAllAmenities,
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
        ItemsTitle(title: title),
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
