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
  const  HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    var bloc = context.read<HomeBloc>();
    var completerRef = useRef<Completer<void>?>(null);

    final scrollController = useScrollController();

    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeBlocState>(
        listener: (context, state) {
          if (state is HomeBlocDataState) {
            if (!state.isRefreshing) {
              completerRef.value?.complete();
              completerRef.value = null;
            }
          }
        },
        bloc: bloc,
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: switch (state) {
              HomeBlocLoadingState _ => _Loading(
                key: ValueKey("HomeLoadingState"),
              ),
              HomeBlocDataState data => RefreshIndicator.adaptive(
                key: ValueKey("HomeDataState"),
                displacement: 100,
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                onRefresh: () async {
                  bloc.add(HomeBlocEvent.loadDataEvent(isRefresh: true));

                  completerRef.value = Completer();
                  await completerRef.value?.future;
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
                          child: CustomScrollView(
                            controller: scrollController,
                            slivers: [
                              if (state.favorites.isNotEmpty)
                                SliverToBoxAdapter(
                                  child: Padding(
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
                                            Assets.svgIconFilledHeard
                                                .toSvgImage(
                                                  width: 24,
                                                  colorFilter: ColorFilter.mode(
                                                    context
                                                        .appColors
                                                        .colors
                                                        .red,
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
                                ),
                              !data.loadingContents
                                  ? SliverList(
                                    delegate: SliverChildBuilderDelegate((
                                      context,
                                      index,
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
                                    }, childCount: data.contents.length),
                                  )
                                  : SliverToBoxAdapter(
                                    child: LoadingIndicator(),
                                  ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              _ => Padding(
                key: ValueKey("HomeDefaultState"),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 24,
                    children: [
                      MessageContainer.custom(
                        icon: Assets.pngExclamationmarkSquare.toImage(),
                        title: context.localization.pageFailedToLoad,
                        caption: context.localization.something_went_wrong,
                      ),
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
                              backgroundColor:
                                  context.appColors.fill.quaternary,
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
              ),
            },
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
    super.key,
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

class _Loading extends StatelessWidget {
  const _Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          bottom: false,
          child: Shimmer.fromDefault(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ).copyWith(top: 8),
                      child: ShimmerDefaultContainer(height: 54, radius: 40),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 84,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 84,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ).copyWith(bottom: 12),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ShimmerDefaultContainer(
                                    height: 48,
                                    width: 48,
                                    radius: 48,
                                  ),
                                  ShimmerDefaultContainer(height: 12),
                                ],
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerDefaultContainer(
                            height: 300,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 16),
                          ShimmerDefaultContainer(height: 20, width: 200),
                          SizedBox(height: 2),
                          ShimmerDefaultContainer(
                            height: 18,
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ShimmerDefaultContainer(height: 24, width: 200),
                    ),
                  ],
                ),

                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerDefaultContainer(width: 150, height: 150),
                          SizedBox(height: 8),
                          ShimmerDefaultContainer(
                            height: 16,
                            width: 120,
                            radius: 4,
                          ),
                          SizedBox(height: 4),
                          ShimmerDefaultContainer(
                            height: 14,
                            width: 110,
                            radius: 4,
                          ),
                        ],
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
