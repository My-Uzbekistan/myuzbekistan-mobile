import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import '../widget/icon_text_cell.dart';

class AllFacilities extends StatelessWidget {
  final List<Facility> items;

  const AllFacilities({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(context.localization.whatAmenitiesAwait).h2(),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return  Center(
                    child: IconTextCell(
                      title: items[index].name,
                      iconUrl: items[index].icon,
                      showArrow: false,
                    ),

                );
              },
              separatorBuilder: (context, index) {
                return Padding(padding: EdgeInsets.symmetric(vertical: 6),child: Divider(
                  height: 0,
                  thickness: 0.5,
                  color: context.appColors.stroke.nonOpaque,
                ),);
              },
              itemCount: items.length,
            ),
          ],
        ),
      ),
    );
  }
}
