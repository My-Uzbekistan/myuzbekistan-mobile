import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/widgets/app_check.dart';

import '../../../profile_page/widgets/cell.dart';

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
            context.localizations!.select_location,
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
