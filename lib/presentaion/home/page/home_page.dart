import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/navigation/extension.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
import 'package:uzbekistan_travel/presentaion/home/home_bloc/home_bloc.dart';
import 'package:uzbekistan_travel/presentaion/home/widgets/home_groups.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeBlocState>(
        bloc: context.read<HomeBloc>(),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state is HomeBlocDataState) {
            return Scaffold(
              appBar: AppBar(
                surfaceTintColor: Colors.transparent,
                title: Row(
                  spacing: 16,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Assets.pngAvatar.toImage(fit: BoxFit.cover),
                      ),
                    ),
                    Flexible(
                        child: Text(
                      "Hello User",
                      style: CustomTypography.H3,
                    ))
                  ],
                ),
              ),
              body: CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: SearchInputField(),
                  ),
                  SliverPersistentHeader(
                      pinned: true,
                      delegate: _CategoriesPersistentHeaderDelegate(
                          state.categories)),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      child: Column(
                          children: state.placeCategories.map((e) {
                        final first = e.contentView.first;
                        return HomeGroupsWidget(
                          onRecommendedItemTap: () {
                            context.pushNamedType(AppRoute.detail);
                          },
                          onOpenAll: () {
                            context.pushNamedType(AppRoute.search);
                          },
                          data: HomeGroupData(
                              recommended: Recommended(
                                  title: first.title ?? "",
                                  description: first.description ?? "",
                                  image: first.imageUrl),
                              contents: HomeListCellData(
                                  title: e.categoryName,
                                  contents: e.contentView
                                      .map((e) => HomeListCellContent(
                                          title: e.title,
                                          description: e.description,
                                          rate: e.ratingAverage,
                                          imageUrl: e.imageUrl))
                                      .toList())),
                        );
                      }).toList()),
                    ),
                  )
                ],
              ),
            );
          }

          return Container();
        });
  }
}

class _CategoriesPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final List<Categories> categories;
  _CategoriesPersistentHeaderDelegate(this.categories);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.appColors.background.background,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: categories.length,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HomeCategoryItem(
              title: categories[index].name ?? "",
            );
          }),
    );
  }

  @override
  double get maxExtent => 100; // Same as SliverAppBar height

  @override
  double get minExtent => 100;
  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
