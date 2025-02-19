import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

part 'home_group_data.dart';

part 'home_list_cell.dart';

part 'item_card.dart';

class HomeGroupsWidget extends StatefulWidget {
  final HomeGroupData data;
  final VoidCallback? onContentItemTap;
  final VoidCallback? onOpenAll;
  final VoidCallback? onRecommendedItemTap;
  const HomeGroupsWidget(
      {super.key,
      required this.data,
      this.onContentItemTap,
      this.onRecommendedItemTap,
      this.onOpenAll});

  @override
  State<HomeGroupsWidget> createState() => _HomeGroupsWidgetState();
}

class _HomeGroupsWidgetState extends State<HomeGroupsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.data.recommended != null)
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: BounceTap(
              onTap: widget.onRecommendedItemTap,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 350, maxHeight: 200, minHeight: 200),
                child: SizedBox(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        AppImageCard.extraLarge(
                            imageUrl: widget.data.recommended?.image),
                        Positioned(
                            left: 8,
                            right: 8,
                            bottom: 24,
                            child: Column(
                              children: [
                                Text(
                                  widget.data.recommended?.title ?? "",
                                  maxLines: 1,
                                  style: CustomTypography.bodyMd
                                      .copyWith(color: Colors.white),
                                ),
                                Text(widget.data.recommended?.description ?? "",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTypography.H1
                                        .copyWith(color: Colors.white)),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        HomeListCell(
          data: widget.data.contents,
          openAll: widget.onOpenAll,
        )
      ],
    );
  }
}
