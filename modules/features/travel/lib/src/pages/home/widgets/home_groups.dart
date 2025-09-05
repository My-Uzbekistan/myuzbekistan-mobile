import 'dart:io';
import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';

import 'item_card_avatar.dart';
import 'load_content_bloc/load_content_bloc.dart';

part 'model/home_group_data.dart';

part 'home_list_cell.dart';

part 'item_card.dart';

part 'home_avatar_list_item.dart';

class HomeGroupsWidget extends StatefulWidget {
  final HomeGroupData data;
  final ValueChanged<MainPageContent>? onContentItemTap;
  final VoidCallback? onOpenAll;

  const HomeGroupsWidget({
    super.key,
    required this.data,
    this.onContentItemTap,
    this.onOpenAll,
  });

  @override
  State<HomeGroupsWidget> createState() => _HomeGroupsWidgetState();
}

class _HomeGroupsWidgetState extends State<HomeGroupsWidget>
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.data.recommended != null)
          HomeImagePagerContent(
            recommendText: context.localization.guest_chose,
            onTap: () {
              widget.onContentItemTap?.call(widget.data.recommended!);
            },
            data: HomePagerContentData(
              items: widget.data.recommended?.photos ?? [],
              title: widget.data.recommended?.title ?? "",
              caption: widget.data.recommended?.region,
              rating: widget.data.recommended?.ratingAverage,
            ),
          ),
        // HomeAvatarListItem()
        if (widget.data.items.isNotEmpty)
          HomeListCell(

            categoryId: widget.data.categoryId,
            items: widget.data.items,
            categoryName: widget.data.title,
            openAll: widget.onOpenAll,
            onItemTap: widget.onContentItemTap,
            viewType: widget.data.viewType,
          ),
      ],
    );
  }
}
