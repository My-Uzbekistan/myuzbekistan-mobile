import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'items_title.dart';

class FacilitiesWidget extends StatelessWidget {
  final String title;
  final List<Facility> facilities;

  const FacilitiesWidget(
      {super.key, required this.title, required this.facilities});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title),
      Wrap(
          spacing: 8,
          runSpacing: 8,
          children: facilities
              .map((e) => AppBadge(
                    title: e.name,
                    iconUrl: e.icon,
                  ))
              .toList()),
      SizedBox(
        height: 16,
      )
    ]);
  }
}

class LanguagesWidget extends StatelessWidget {
  final String title;
  final List<String> languages;

  const LanguagesWidget(
      {super.key, required this.title, required this.languages});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title),
      Wrap(
          spacing: 8,
          runSpacing: 8,
          children: languages
              .map((e) => AppBadge(
            title: e,
          ))
              .toList()),
      SizedBox(
        height: 16,
      )
    ]);
  }
}
