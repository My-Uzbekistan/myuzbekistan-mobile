import 'package:component_res/component_res.dart';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class SelectRegionPage extends HookWidget {
  final List<Region> regions;
  final int selectedRegionId;

  const SelectRegionPage(
      {super.key, required this.regions, required this.selectedRegionId});

  @override
  Widget build(BuildContext context) {
    final selectedId = useState(selectedRegionId);
    return SafeArea(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
          child: Text(
            context.localization.select_location,
            style: CustomTypography.H2,
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: regions.length,
              padding: EdgeInsets.only(top: 16, bottom: 24),
              itemBuilder: (context, index) {
                final region = regions[index];
                return SettingsCell(
                  text: region.name ?? "",
                  onTap: () {
                    if(selectedId.value != region.id) {
                      selectedId.value = region.id;
                      context.pop(region.id);
                    }
                  },
                  trailing: AppCheck(
                    isChecked: selectedId.value == region.id,
                  ),
                );
              }),
        )
      ],
    ));
  }
}
