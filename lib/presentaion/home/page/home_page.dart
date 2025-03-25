import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
import 'package:uzbekistan_travel/presentaion/auth/auth_page.dart';
import 'package:uzbekistan_travel/presentaion/home/home_bloc/home_bloc.dart';
import 'package:uzbekistan_travel/presentaion/home/widgets/home_groups.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/bloc/profile_bloc.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();

    useEffect(() {
      bloc.add(HomeBlocEvent.initial());
      return null;
    }, []);
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeBlocState>(
          bloc: bloc,
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            switch (state) {
              case HomeBlocLoadingState _:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case HomeBlocDataState data:
                return Scaffold(
                  appBar: AppBar(
                    surfaceTintColor: Colors.transparent,
                    systemOverlayStyle:
                        Theme.of(context).appBarTheme.systemOverlayStyle,
                    centerTitle: false,
                    title: BlocBuilder<ProfileBloc, ProfileBlocState>(
                        builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          context.pushProfilePage();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 16,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: (state is ProfileBlocDataState)
                                        ? state.userModel?.photoUrl ?? ""
                                        : "",
                                    errorListener: (a) {},
                                    fit: BoxFit.cover,
                                    errorWidget: (context, url, error) {
                                      return Assets.pngAvatar
                                          .toImage(fit: BoxFit.cover);
                                    },
                                  )),
                            ),
                            Flexible(
                                child: Text(
                              (state is ProfileBlocDataState)
                                  ? state.userModel?.name ?? ""
                                  : context.localizations!.guest,
                              style: CustomTypography.H3,
                            ))
                          ],
                        ),
                      );
                    }),
                  ),
                  body: CustomScrollView(
                    slivers: [
                      if (state.selectedRegion != null)
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: GestureDetector(
                              onTap: () async {
                                final result =
                                    await context.pushSelectRegionPage(
                                        state.regions,
                                        state.selectedRegion!.id);
                                if (result != null) {
                                  bloc.add(HomeBlocEvent.changeRegion(result));
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: context.appColors.fill.quaternary,
                                  borderRadius: BorderRadius.circular(72),
                                ),
                                child: Row(
                                  spacing: 12,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Assets.svgPinLocationLine.toSvgImage(
                                      width: 20,
                                      colorFilter: ColorFilter.mode(
                                        context.appColors.textIconColor.primary,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        state.selectedRegion?.name ?? "",
                                        style: CustomTypography.bodyMd.copyWith(
                                            color: context.appColors
                                                .textIconColor.primary),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (data.categories.isNotEmpty)
                        SliverPersistentHeader(
                            key: ValueKey("AppPersistentHeader"),
                            pinned: true,
                            delegate: _CategoriesPersistentHeaderDelegate(
                                categories: data.categories,
                                onItemTap: (item) {
                                  context.pushContentByCategoryPage(
                                      item.name ?? "", item.id);
                                })),
                      if (data.favorites.isNotEmpty)
                        SliverToBoxAdapter(
                          child: Padding(
                              padding:
                                  EdgeInsets.only(top: 16, left: 16, right: 16),
                              child: GestureDetector(
                                onTap: () {
                                  context.pushFavoritesPage();
                                },
                                child: StackedCard(
                                  title: Row(
                                    spacing: 2,
                                    children: [
                                      Flexible(
                                          child: Text(
                                        context.localizations!.favorites,
                                        style: CustomTypography.H3,
                                      )),
                                      Assets.svgIconFilledHeard.toSvgImage(
                                          width: 24,
                                          colorFilter: ColorFilter.mode(
                                              context.appColors.colors.red,
                                              BlendMode.srcIn))
                                    ],
                                  ),
                                  caption: Text(
                                    context.localizations!
                                        .n_items(data.totalFavoriteCount),
                                    style: CustomTypography.bodySm,
                                  ),
                                  avatars: data.favorites,
                                ),
                              )),
                        ),
                      SliverToBoxAdapter(
                        child: !data.loadingContents
                            ? SingleChildScrollView(
                                physics: NeverScrollableScrollPhysics(),
                                child: Column(children: [
                                  ...data.contents.map((e) {
                                    return HomeGroupsWidget(
                                      onOpenAll: () {
                                        context.pushContentByCategoryPage(
                                            e.categoryName, e.categoryId);
                                      },
                                      onContentItemTap: (content) {
                                        context
                                            .pushDetailPage(content.contentId);
                                      },
                                      data: HomeGroupData(
                                        recommended: e.recommended,
                                        title: e.categoryName,
                                        items: e.contents,
                                      ),
                                    );
                                  })
                                ]),
                              )
                            : Center(
                                child: Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: CircularProgressIndicator()),
                              ),
                      )
                    ],
                  ),
                );
            }

            return Container();
          }),
    );
  }
}

class _CategoriesPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final List<Categories> categories;
  ValueChanged<Categories>? onItemTap;

  _CategoriesPersistentHeaderDelegate(
      {required this.categories, this.onItemTap});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      key: ValueKey("CategoriesHeader"),
      color: context.appColors.background.background,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: categories.length,
          padding: EdgeInsets.symmetric(horizontal: 8),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = categories[index];
            return HomeCategoryItem(
              key: ValueKey(item),
              title: item.name ?? "",
              imageUrl: item.icon,
              onTap: () {
                onItemTap?.call(item);
              },
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
  bool shouldRebuild(
          covariant _CategoriesPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.categories != categories;
}
