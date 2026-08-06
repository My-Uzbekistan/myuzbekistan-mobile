import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../../widgets/home_groups.dart';

class HomeContentGroups extends StatelessWidget {
  final List<ContentCategories> contents;

  const HomeContentGroups({super.key, required this.contents});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      key: const PageStorageKey('imageList'),
      delegate: SliverChildBuilderDelegate((context, index) {
        final e = contents[index];
        return Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: context.appColors.background.elevation1,
          ),
          child: HomeGroupsWidget(
            onOpenAll: () {
              context.travel.pushContentByCategoryPage(
                e.categoryName,
                e.categoryId,
              );
            },
            onContentItemTap: (content) {
              context.travel.pushDetailPage(
                contentId: content.contentId,
                content: content.toContentDetail(categoryName: e.categoryName),
              );
            },
            data: HomeGroupData(
              viewType: e.viewType,
              categoryId: e.categoryId,
              recommended: e.recommended,
              title: e.categoryName,
              items: e.contents,
            ),
          ),
        );
      }, childCount: contents.length),
    );
  }
}
