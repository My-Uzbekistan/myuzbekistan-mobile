import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import '../home_bloc/home_bloc.dart';
import '../widgets/home_groups.dart';
import '../widgets/home_region_card.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    useEffect(() {
      bloc.add(HomeBlocEvent.initial());
      return null;
    }, []);

    var isRefreshing = useState(false);

    final scrollController = useScrollController();

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeBlocState>(
        bloc: bloc,
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          switch (state) {
            case HomeBlocLoadingState _:
              return Center(child: LoadingIndicator());
            case HomeBlocDataState data:
              return RefreshIndicator.adaptive(
                displacement: 100,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  bloc.add(HomeBlocEvent.loadDataEvent(isRefresh: true));
                  isRefreshing.value = true;
                  await Future.delayed(Duration(seconds: 2));
                  isRefreshing.value = false;
                },
                child: Scaffold(
                  body: SafeArea(
                    child: Column(
                      children: [
                        if (state.selectedRegion != null)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ).copyWith(bottom: 16, top: 8),
                            child: HomeRegionCard(
                              title: state.selectedRegion?.name ?? "",
                              temperature: state.temperature?.temperature,
                              temperatureImageUrl: state.temperature?.iconUrl,
                              onTap: () {
                                context.travel.pushSelectRegionPage(
                                  state.regions,
                                  state.selectedRegion!.id,
                                );
                              },
                            ),
                          ),
                        CategoryHeader(
                          categories: state.categories,
                          scrollController: scrollController,
                          onItemTap: (item) {
                            context.travel.pushContentByCategoryPage(
                              item.name ?? "",
                              item.id,
                            );
                          },
                        ),
                        Flexible(
                          child: ListView(
                            controller: scrollController,
                            children: [
                              if (state.favorites.isNotEmpty)
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      context.travel.pushFavoritesPage();
                                    },
                                    child: StackedCard(
                                      title: Row(
                                        spacing: 2,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              context.localization.favorites,
                                              style: CustomTypography.H3,
                                            ),
                                          ),
                                          Assets.svgIconFilledHeard.toSvgImage(
                                            width: 24,
                                            colorFilter: ColorFilter.mode(
                                              context.appColors.colors.red,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ],
                                      ),
                                      caption: Text(
                                        context.localization.n_items(
                                          data.totalFavoriteCount,
                                        ),
                                        style: CustomTypography.bodySm,
                                      ),
                                      avatars: data.favorites,
                                    ),
                                  ),
                                ),
                              !data.loadingContents
                                  ? ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: data.contents.length,
                                    itemBuilder: (
                                      BuildContext context,
                                      int index,
                                    ) {
                                      final e = data.contents[index];
                                      return HomeGroupsWidget(
                                        key: ValueKey(e),
                                        onOpenAll: () {
                                          context.travel
                                              .pushContentByCategoryPage(
                                                e.categoryName,
                                                e.categoryId,
                                              );
                                        },
                                        onContentItemTap: (content) {
                                          context.travel.pushDetailPage(
                                            content.contentId,
                                          );
                                        },
                                        data: HomeGroupData(
                                          viewType: e.viewType,
                                          categoryId: e.categoryId,
                                          recommended: e.recommended,
                                          title: e.categoryName,
                                          items: e.contents,
                                        ),
                                      );
                                    },
                                  )
                                  : Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
          }

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MessageContainer.custom(
                    icon: Assets.pngExclamationmarkSquare.toImage(),
                    title: context.localization.pageFailedToLoad,
                    caption: context.localization.something_went_wrong,
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.maxFinite,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: FilledButton(
                        onPressed: () {
                          bloc.add(HomeBlocEvent.loadDataEvent());
                        },
                        style: FilledButton.styleFrom(
                          elevation: 0,
                          textStyle: CustomTypography.bodyLg,
                          backgroundColor: context.appColors.fill.quaternary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(context.localization.refresh),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryHeader extends StatefulWidget {
  final List<Categories> categories;
  final ValueChanged<Categories>? onItemTap;
  final ScrollController? scrollController;

  const CategoryHeader({
    required this.categories,
    this.onItemTap,
    this.scrollController,
  });

  @override
  State<CategoryHeader> createState() => _CategoryHeaderState();
}

class _CategoryHeaderState extends State<CategoryHeader> {
  double shrinkFactorParent = 1.0;
  double shrinkFactorChild = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widget.scrollController?.addListener(() {
      _scrollListener();
    });
  }

  void _scrollListener() {
    double offset = widget.scrollController!.offset;

    double factorChild = 1.0;
    double factorParent = 1.0;

    if (offset >= 100) {
      double adjustedOffset = offset - 100;

      factorChild = (1.0 - (adjustedOffset / 160)).clamp(0.5, 1.0);
      factorParent = (1.0 - (adjustedOffset / 600)).clamp(0.7, 1.0);
    }

    if (factorChild != shrinkFactorChild ||
        factorParent != shrinkFactorParent) {
      setState(() {
        shrinkFactorChild = factorChild;
        shrinkFactorParent = factorParent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey("CategoriesHeader"),
      child: SizedBox(
        height: 82 * shrinkFactorParent,
        child: ListView.builder(
          itemCount: widget.categories.length,
          padding: EdgeInsets.symmetric(horizontal: 20),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = widget.categories[index];
            return RepaintBoundary(
              key: ValueKey(item),
              child: HomeCategoryItem(
                shrinkFactor: shrinkFactorChild,
                categoryItem: CategoryItem(
                  name: item.name ?? "",
                  icon: item.icon,
                ),
                onTap: () {
                  widget.onItemTap?.call(item);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// class _CategoriesPersistentHeaderDelegate
//     extends SliverPersistentHeaderDelegate {
//   final List<Categories> categories;
//   ValueChanged<Categories>? onItemTap;
//
//   _CategoriesPersistentHeaderDelegate(
//       {required this.categories, this.onItemTap});
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       key: ValueKey("CategoriesHeader"),
//       color: context.appColors.background.background,
//       padding: EdgeInsets.symmetric(vertical: 10),
//       child: ListView.builder(
//           itemCount: categories.length,
//           padding: EdgeInsets.symmetric(horizontal: 8),
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             final item = categories[index];
//             return RepaintBoundary(
//               key: ValueKey(item),
//               child: HomeCategoryItem(
//                 categoryItem:
//                     CategoryItem(name: item.name ?? "", icon: item.icon),
//                 onTap: () {
//                   onItemTap?.call(item);
//                 },
//               ),
//             );
//           }),
//     );
//   }
//
//   @override
//   double get maxExtent => 100; // Same as SliverAppBar height
//
//   @override
//   double get minExtent => 100;
//
//   @override
//   FloatingHeaderSnapConfiguration? get snapConfiguration => null;
//
//   @override
//   bool shouldRebuild(
//           covariant _CategoriesPersistentHeaderDelegate oldDelegate) =>
//       oldDelegate.categories != categories;
// }
