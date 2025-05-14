import 'dart:io';
import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/home/widgets/item_card_avatar.dart';
import 'package:uzbekistan_travel/presentaion/home/widgets/load_content_bloc/load_content_bloc.dart';

part 'model/home_group_data.dart';

part 'home_list_cell.dart';

part 'item_card.dart';
part 'home_avatar_list_item.dart';

class HomeGroupsWidget extends StatefulWidget {
  final HomeGroupData data;
  final ValueChanged<MainPageContent>? onContentItemTap;
  final VoidCallback? onOpenAll;
  const HomeGroupsWidget(
      {super.key,
      required this.data,
      this.onContentItemTap,
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
              onTap: (){
                widget.onContentItemTap?.call(widget.data.recommended!);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: 400, maxHeight: 200, minHeight: 200),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          AppImageCard.extraLarge(
                              imageUrl: widget.data.recommended?.mainPhoto),
                          Positioned(
                              left: 8,
                              right: 8,
                              bottom: 24,
                              child: Column(
                                children: [
                                  Text(
                                    widget.data.recommended?.caption ?? "",
                                    maxLines: 1,
                                    style: CustomTypography.bodyMd
                                        .copyWith(color: Colors.white),
                                  ),
                                  Text(widget.data.recommended?.title ?? "",
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
          ),
        // HomeAvatarListItem()
        if(widget.data.items.isNotEmpty)
        HomeListCell(
          key: ValueKey(widget.data.toString()),
          categoryId:widget.data.categoryId,
          items: widget.data.items,
          categoryName: widget.data.title,
          openAll: widget.onOpenAll,
          onItemTap: widget.onContentItemTap,
          viewType: widget.data.viewType,
        )
      ],
    );
  }
}
