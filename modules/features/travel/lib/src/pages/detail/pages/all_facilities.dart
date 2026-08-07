import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import '../widget/facility_group_card.dart';

class AllFacilities extends StatelessWidget {
  final ContentDetail content;

  const AllFacilities({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final groups = content.facilityGroups ?? [];
    final flat = content.facilities ?? [];

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
          bottom: MediaQuery.of(context).padding.bottom + 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: Text(context.localization.whatAmenitiesAwait).h2(),
            ),
            if (groups.isNotEmpty)
              ...groups.map(
                (group) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: FacilityGroupCard(
                    title: group.name,
                    facilities: group.facilities,
                  ),
                ),
              )
            else if (flat.isNotEmpty)
              FacilityGroupCard(facilities: flat),
          ],
        ),
      ),
    );
  }
}
