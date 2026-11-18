import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/catalog_investments/bloc/investments_bloc.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';
import 'package:travel/src/pages/catalog_investments/sort_cubit/sort_cubit.dart';
import 'package:travel/src/pages/home/home_bloc/home_bloc.dart';

class CatalogInvestmentsPage extends StatefulWidget {
  final String title;

  const CatalogInvestmentsPage({super.key, required this.title});

  @override
  State<CatalogInvestmentsPage> createState() => _CatalogInvestmentsPageState();
}

class _CatalogInvestmentsPageState extends State<CatalogInvestmentsPage> {
  InvestmentsBloc? bloc;
  InvestSortCubit? sortCubit;

  @override
  void initState() {
    super.initState();
    bloc = context.read();
    sortCubit = context.read();
    WidgetsBinding.instance.addPostFrameCallback((p) {
      bloc?.add(InvestmentsEvent.loadDataEvent(selectedRegion: selectedRegion));
    });
    selRegId = selectedRegion;
  }

  Region? selRegId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InvestSortCubit, SortState>(
      listener: (context, state) {
        bloc?.add(
          InvestmentsEvent.sort(
            currencyType: state.currencyType,
            sortType: state.sortType,
            selectedRegion: selRegId
          ),
        );
      },
      child: Scaffold(
        appBar: GradientAppBar(
          widget: Center(
            child:
                selectedRegion != null
                    ? GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () async {
                        final result = await context.travel
                            .pushSelectRegionPage(globalRegions, selRegId!.id);
                        if (result != null) {
                          bloc?.add(
                            InvestmentsEvent.loadDataEvent(
                              selectedRegion: result as Region,
                            ),
                          );
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 8,
                        children: [
                          Assets.svg.pinSvg.svg(width: 24, height: 24),
                          Text(selectedRegion!.name.orEmpty()),
                        ],
                      ),
                    )
                    : SizedBox(),
          ),
          centerTitle: true,

          actions: [
            RoundedButton(
              assetsSvgIcon: Assets.svg.filterConus.path,
              onPressed: () {
                context.pushNamed(
                  AppNavPath.travel.travelCatalogInvestmentsSort.name,
                  extra: sortCubit,
                );
              },
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: BlocConsumer<InvestmentsBloc, InvestmentsState>(
          listener: (context, state) {
            if (state is InvestmentsDataState) {}
          },
          builder: (context, state) {
            if (state is InvestmentsDataState) {
              return InvestDataStateWidget(
                contents: state.contents,
                recommended: state.recommended,
                currencyType: state.currencyType,
                loadingContents: state.isLoadingContents,
                loadingRecommended: state.isLoadingRecommended,
              );
            } else if (state is InvestmentsNoContentState) {
              return Transform.translate(
                offset: Offset(0, -kToolbarHeight),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MessageContainer.notFoundWidget(
                    context,
                    title: context.localization.nothing_found,
                    caption: context.localization.nothing_found_message,
                  ),
                ),
              );
            } else if (state is InvestmentsErrorState) {
              return Transform.translate(
                offset: Offset(0, -kToolbarHeight),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MessageContainer.custom(
                          icon: Assets.png.exclamationmarkSquare.image(),
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
                                bloc?.add(InvestmentsEvent.loadDataEvent(
                                  selectedRegion: selectedRegion,
                                ));
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
              );
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}

class InvestDataStateWidget extends StatefulWidget {
  final List<MainPageContent> contents;
  final List<MainPageContent> recommended;
  final InvestCurrencyType currencyType;
  final bool loadingContents;
  final bool loadingRecommended;

  const InvestDataStateWidget({
    super.key,
    required this.contents,
    required this.recommended,
    this.currencyType = InvestCurrencyType.uzs,
    this.loadingContents = false,
    this.loadingRecommended = false,
  });

  @override
  State<InvestDataStateWidget> createState() => _InvestDataStateWidgetState();
}

class _InvestDataStateWidgetState extends State<InvestDataStateWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(padding: EdgeInsets.only(top: context.topPadding)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Hero(
              tag: "SearchField",
              child: Material(
                type: MaterialType.transparency,
                child: SearchInputField(
                  hintText: context.localization.investment_search_title,
                  disableEditing: true,
                  onTap: () {
                    context.pushNamed(
                      AppNavPath.travel.travelCatalogInvestmentsSearch.name,
                      queryParameters: {
                        "currencyType": widget.currencyType.name,
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),

        if (widget.recommended.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ).copyWith(top: 24, bottom: 16),
              child: Text(context.localization.investment_top_contents_title).h2(),
            ),
          ),
        if (widget.recommended.isNotEmpty)
          SliverToBoxAdapter(
            child: SizedBox(
              height: 228,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                separatorBuilder: (context, index) {
                  return SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  if (index == widget.recommended.length) {
                    return Center(child: LoadingIndicator());
                  }
                  final item = widget.recommended[index];
                  return SizedBox(
                    width: 264,
                    child: InvestItem(
                      content: item,
                      imageHeight: 165,
                      currencyType: widget.currencyType,
                      onTap: () {
                        context.travel.pushDetailPage(
                          content: item.toContentDetail(),
                          contentId: item.contentId,
                        );
                      },
                    ),
                  );
                },
                itemCount:
                    widget.loadingRecommended
                        ? widget.recommended.length + 1
                        : widget.recommended.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        if (widget.contents.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ).copyWith(top: 24, bottom: 16),
              child: Text(context.localization.investments_category_title).h2(),
            ),
          ),
        if (widget.contents.isNotEmpty)
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 165 / 218,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final item = widget.contents[index];
                return InvestItem(
                  content: item,
                  currencyType: widget.currencyType,
                  onTap: () {
                    context.travel.pushDetailPage(
                      content: item.toContentDetail(),
                      contentId: item.contentId,
                    );
                  },
                );
              }, childCount: widget.contents.length),
            ),
          ),

        if (widget.loadingContents)
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(bottom: 32),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Flexible(
                      child: Text(
                        context.localization.loading_data,
                        style: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                    ),
                    SizedBox(height: 32, width: 32, child: LoadingIndicator()),
                  ],
                ),
              ),
            ),
          ),
        SliverToBoxAdapter(
          child: SizedBox(height: kBottomNavigationBarHeight + 16),
        ),
      ],
    );
  }
}

class InvestItem extends StatelessWidget {
  final double imageHeight;

  final MainPageContent content;
  final GestureTapCallback? onTap;
  final InvestCurrencyType currencyType;

  const InvestItem({
    super.key,
    required this.content,
    this.imageHeight = 156,
    this.onTap,
    this.currencyType = InvestCurrencyType.uzs,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Flexible(
            child: SizedBox(
              height: imageHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AppNetworkImage(
                  content.mainPhoto.orEmpty(),
                  fit: BoxFit.cover,
                  height: double.maxFinite,
                  width: double.maxFinite,
                  cacheMaxAge: const Duration(days: 1),
                  placeholder: Assets.png.defaultContentImage.image(
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 2,
            children: [
              Text(
                content.title.orEmpty(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyMd(),
              Text(
                content.region.orEmpty(),
                overflow: TextOverflow.ellipsis,
              ).bodySm(color: context.appColors.textIconColor.secondary),
              if (content.hasPrice)
                Builder(
                  builder: (context) {
                    final value =
                        currencyType == InvestCurrencyType.uzs
                            ? content.price
                            : content.priceInDollar;
                    return Text(
                      context.localization.investment_amount(
                        value!.amountFormatted(),
                        currencyType.value,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(color: context.appColors.colors.green);
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
