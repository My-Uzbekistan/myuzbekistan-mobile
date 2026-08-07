import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class FacilityGroupCard extends StatelessWidget {
  final String? title;
  final List<Facility> facilities;

  const FacilityGroupCard({super.key, this.title, required this.facilities});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null && title!.isNotEmpty) Text(title!).h3(),
          ...List.generate(facilities.length, (index) {
            final facility = facilities[index];
            final isLast = index == facilities.length - 1;
            return Container(
              height: 56,
              decoration: BoxDecoration(
                border: isLast
                    ? null
                    : Border(
                        bottom: BorderSide(
                          color: context.appColors.stroke.nonOpaque,
                          width: 0.5,
                        ),
                      ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: facility.icon == null
                        ? null
                        : ExtendedImage.network(
                            facility.icon!,
                            color: context.appColors.textIconColor.primary,
                            colorBlendMode: BlendMode.srcIn,
                            fit: BoxFit.contain,
                            loadStateChanged: (state) =>
                                state.extendedImageLoadState ==
                                    LoadState.completed
                                ? null
                                : const SizedBox(),
                          ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      facility.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelMd(),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
