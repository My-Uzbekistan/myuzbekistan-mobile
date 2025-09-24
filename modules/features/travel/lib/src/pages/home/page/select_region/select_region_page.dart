import 'package:component_res/component_res.dart';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class SelectRegionPage extends HookWidget {
  final List<Region> regions;
  final int selectedRegionId;

  const SelectRegionPage({
    super.key,
    required this.regions,
    required this.selectedRegionId,
  });

  @override
  Widget build(BuildContext context) {
    final selectedId = useState(selectedRegionId);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.select_location).h2(),
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,

        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Assets.svgRoundedCloseIcon.toSvgImage(
              colorFilter: ColorFilter.mode(
                context.appColors.textIconColor.tertiary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          primary: true,
          itemCount: regions.length,
          padding: EdgeInsets.only(bottom: 24),
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            final region = regions[index];
            return SettingsCell(
              text: region.name ?? "",
              onTap: () {
                if (selectedId.value != region.id) {
                  selectedId.value = region.id;
                  context.pop(region.id);
                }
              },
              trailing: AppCheck(isChecked: selectedId.value == region.id),
            );
          },
        ),
      ),
    );
  }
}
