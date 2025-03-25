import 'package:collection/equality.dart';
import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/presentaion/detail/widget/facilities_widget.dart';
import 'package:uzbekistan_travel/presentaion/search/bloc/contents_by_category_bloc.dart';

class ContentByCategoryPage extends StatefulWidget {
  final String categoryName;

  const ContentByCategoryPage({super.key, required this.categoryName});

  @override
  State<ContentByCategoryPage> createState() => _ContentByCategoryPageState();
}

class _ContentByCategoryPageState extends State<ContentByCategoryPage> {
  ContentByCategoryBloc? bloc;

  // final TextEditingController _searchTextEditingController =
  // TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    bloc = context.read<ContentByCategoryBloc>();
    // _searchTextEditingController.addListener(_inputListener);

    super.initState();
  }

  //
  // void _inputListener() {
  //   bloc?.add(
  //       ContentByCategoryEvent.setQuery(_searchTextEditingController.text));
  // }
  double _previousScrollOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          SearchInputField(
            hintText: context.localizations!.search,
            onChanged: (text) {
              bloc?.add(ContentByCategoryEvent.setQuery(text));
            },
          ),
          Expanded(
              child: BlocConsumer<ContentByCategoryBloc,
                  ContentByCategoryState>(
                  listener: (context, state) {},
                  buildWhen: (previous, current) {
                    return previous != current;
                    // &&
                    //     !ListEquality()
                    //         .equals(previous.contents, current.contents) ||
                    // previous.isLoading != current.isLoading;
                  },
                  builder: (context, state) {
                    return NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        // Timber.logger.e("NotificationListener  ${notification.metrics.pixels}  ${notification.metrics.maxScrollExtent}");
                        if (notification.metrics.pixels <
                            _previousScrollOffset) {
                          if (notification.metrics.pixels ==
                              notification.metrics.maxScrollExtent) {
                            bloc?.add(ContentByCategoryEvent.loadMore());
                          }
                        }
                        _previousScrollOffset = notification.metrics.pixels;

                        return false;
                      },
                      child: ListView.builder(
                          itemCount:
                          state.contents.length + (state.isLoading ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index >= state.contents.length) {
                              return Container(
                                  padding: EdgeInsets.only(bottom: 32),
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            final item = state.contents[index];
                            return SearchCell(
                              onFavoriteChangeTap: () {
                                bloc?.add(
                                    ContentByCategoryEvent.updateItemFavorite(
                                        contentId: item.contentId,
                                        isFavorite: !item.isFavorite));
                              },
                              onTap: () async {
                                final result = await context
                                    .pushDetailPage(item.contentId);
                                if (result != null &&
                                    result["isFavorite"] != null) {
                                  bloc?.add(
                                      ContentByCategoryEvent
                                          .updateItemFavoriteWithPopResult(
                                          isFavorite: result["isFavorite"],
                                          contentId: item.contentId));
                                }
                              },
                              mainPageContent: item,
                            );
                          }),
                    );
                  }))
        ],
      ),
    );
  }
}

class SearchCell extends StatelessWidget {
  final EdgeInsets contentPadding;
  final MainPageContent mainPageContent;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteChangeTap;

  const SearchCell({super.key,
    required this.mainPageContent,
    this.onTap,
    this.onFavoriteChangeTap,
    this.contentPadding = const EdgeInsets.all(16)});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: contentPadding,
        child: Stack(
          children: [
            Row(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppImageCard.medium(
                    imageUrl: mainPageContent.mainPhoto,
                    topRightWidget: GestureDetector(
                      onTap: onFavoriteChangeTap,
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: mainPageContent.isFavorite
                            ? Assets.svgIconFilledHeard.toSvgImage(
                            colorFilter: ColorFilter.mode(
                                context.appColors.colors.red,
                                BlendMode.srcIn))
                            : Assets.svgOutlineHeard.toSvgImage(),
                      ),
                    )),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              mainPageContent.title ?? "",
                              style: CustomTypography.labelLg,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            if (mainPageContent.region != null)
                              Text(
                                mainPageContent.region!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTypography.bodySm.copyWith(
                                    color:
                                    context.appColors.textIconColor.secondary),
                              ),
                          ],
                        ),
                        if (mainPageContent.viewType == ViewType.places)
                          if ((mainPageContent.averageCheck ?? 0) > 0)
                            PriceCategory(
                              priceCategory: mainPageContent.averageCheck ?? 0,
                            ),
                        if (mainPageContent.viewType != ViewType.places)
                          if ((mainPageContent.price ?? 0) > 0)
                            Text(
                              "~\$${mainPageContent.priceInDollar?.floor()}",
                              style: CustomTypography.bodySm.copyWith(
                                  color: context.appColors.textIconColor
                                      .primary),
                            ),
                        SizedBox(
                          height: 32,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 6,
                              children: mainPageContent.viewType ==
                                  ViewType.profile
                                  ? mainPageContent.languages
                                  .map((e) => AppBadge(title: e))
                                  .toList()
                                  : mainPageContent.facilities
                                  .map(
                                    (e) =>
                                    AppBadge(
                                      title: e.name,
                                      iconUrl: e.icon,
                                    ),
                              )
                                  .toList(),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
            if ((mainPageContent.ratingAverage ?? 0) > 0)
              Positioned(
                  top: 0,
                  right: 0,
                  child: Text(
                    mainPageContent.ratingAverage.toString(),
                    style: CustomTypography.labelSm
                        .copyWith(color: context.appColors.brand),
                  ))
          ],
        ),
      ),
    );
  }
}
