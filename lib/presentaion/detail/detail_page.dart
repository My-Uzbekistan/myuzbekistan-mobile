import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/presentaion/detail/detail_bloc/detail_bloc.dart';

import 'package:uzbekistan_travel/presentaion/detail/widget/work_time_widget.dart';

import 'widget/cells_widget.dart';
import 'widget/facilities_widget.dart';
import 'widget/location_widget.dart';
import 'widget/menu_group.dart';
import 'widget/top_image_widget.dart';
import 'widget/top_widget.dart';

class DetailPage extends HookWidget {
  final double expandedHeight = 300;
  final double titleAppearOffset = 290;

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final iconTheme = Theme.of(context).iconTheme;
    final scrollController = useScrollController();
    final showCollapsedTitle = useState(false);
    final isCollapsed = useState(false);
    useEffect(() {
      void listener() {
        if (!scrollController.hasClients) return;

        final offset = scrollController.offset;
        final threshold = expandedHeight - kToolbarHeight;
        if (offset > threshold && !isCollapsed.value) {
          isCollapsed.value = true;
        } else if (offset <= threshold && isCollapsed.value) {
          isCollapsed.value = false;
        }

        if (offset >= titleAppearOffset && !showCollapsedTitle.value) {
          showCollapsedTitle.value = true;
        } else if (offset < titleAppearOffset && showCollapsedTitle.value) {
          showCollapsedTitle.value = false;
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);
    return Scaffold(
      body:
          BlocConsumer<DetailBloc, DetailBlocState>(listener: (context, state) {
        if (state is DetailBlocDataState) {
          if (state.navState is Unauthorized) {
            context.pushAuthPage();
          }
        }
      }, buildWhen: (previous, current) {
        if (previous is DetailBlocDataState && current is DetailBlocDataState) {
          return previous.contentDetail != current.contentDetail;
        } else {
          return previous != current;
        }
      }, builder: (context, state) {
        return state.when(loadingState: () {
          return Scaffold(
            // appBar: AppBar(),
            body: SafeArea(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }, dataState: (detail, navState) {
          return CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: expandedHeight,
                pinned: true,
                stretch: true,
                leadingWidth: 56,
                leading: GestureDetector(
                  onTap: (){
                    context.pop();
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                        backgroundColor:
                            isCollapsed.value ? Colors.transparent : Colors.white,
                        radius: 20,
                        child: Assets.svgIcBackChevron.toSvgImage(
                            colorFilter: ColorFilter.mode(
                                isCollapsed.value
                                    ? context.appColors.textIconColor.primary
                                    : Color(0xff221F26),
                                BlendMode.srcIn)),
                      ),

                  ),
                ),
                actionsPadding: EdgeInsets.only(right: 16),
                actions: [
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.selectionClick();
                      context.read<DetailBloc>().add(
                          DetailBlocEvent.changeFavoriteState(
                              isSetFavorite: !detail.isFavorite));
                    },
                    child: CircleAvatar(
                        backgroundColor: isCollapsed.value
                            ? Colors.transparent
                            : Colors.white,
                        radius: 20,
                        child: detail.isFavorite
                            ? Assets.svgIconFilledHeard.toSvgImage(
                                colorFilter: ColorFilter.mode(
                                    context.appColors.colors.red,
                                    BlendMode.srcIn))
                            : Assets.svgOutlineHeard.toSvgImage(
                                colorFilter: ColorFilter.mode(
                                    isCollapsed.value
                                        ? (iconTheme.color ?? Colors.white)
                                        : Color(0xff221F26),
                                    BlendMode.srcIn))),
                  ),
                ],
                stretchTriggerOffset: 0.3,
                flexibleSpace: FlexibleSpaceBar(
                  title: showCollapsedTitle.value
                      ? Text(
                          detail.title ?? "",
                          style: CustomTypography.H2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                        )
                      : null,
                  background: TopImageWidget(
                    photos: detail.photos ?? [],onImageTap: (){
                      context.pushImagePreview(detail.photos??[]);
                  },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0)
                      .copyWith(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        detail.title ?? "",
                        style: CustomTypography.H2,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if ((detail.contentAddress ?? "").isNotEmpty)
                        RichText(
                            text: TextSpan(
                                children: [
                              TextSpan(text: detail.contentAddress),
                              if (detail.distanceKm != null)
                                TextSpan(
                                    text:
                                        " • ${distanceText(context, detail.distanceKm)}"),
                            ],
                                style: CustomTypography.bodySm.copyWith(
                                    color: context
                                        .appColors.textIconColor.secondary))),
                    ],
                  ),
                ),
              ),

              // SliverFillRemaining(
              //   hasScrollBody: false,
              //   child: SingleChildScrollView(
              //     padding: EdgeInsets.only(bottom: 24),
              //     child: Padding(
              //       padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           if (detail.viewType == ViewType.places)
              //             RatingTopWidget(
              //               ratingAverage: detail.ratingAverage,
              //               averageCheck: detail.averageCheck ?? 0,
              //             ),
              //           if (detail.viewType != ViewType.places)
              //             TopBalanceWidget(
              //               priceText: detail.priceText,
              //               priceInDollar: detail.priceInDollar,
              //             ),
              //           if (detail.description.orEmpty().isNotEmpty)
              //             Padding(
              //               padding: EdgeInsets.only(top: 24, bottom: 16),
              //               child: Text(
              //                 "${detail.description}",
              //                 style: CustomTypography.bodyLg.copyWith(
              //                     color: context.appColors.textIconColor.primary),
              //               ),
              //             ),
              //           if (detail.attachments != null &&
              //               (detail.attachments?.value??[] ).isNotEmpty)
              //             FilesGroup(
              //               attachments: detail.attachments!.value ?? [],
              //               title: detail.attachments!.name ?? "",
              //             ),
              //           if (detail.facilitiesAvailable&&
              //               ( detail.facilities?.value??[]).isNotEmpty)
              //             FacilitiesWidget(
              //               title: detail.facilities?.name ?? "",
              //               facilities: detail.facilities?.value ?? [],
              //             ),
              //           if (detail.languagesAvailable)
              //             LanguagesWidget(
              //                 title: detail.languages!.name ?? "",
              //                 languages: detail.languages!.value ?? []),
              //           if (detail.workingHoursAvailable)
              //             WorkTimeWidget(
              //               title: detail.workingHours?.name,
              //               workingHours: detail.workingHours?.value,
              //             ),
              //           if (detail.address != null || detail.location != null)
              //             LocationWidget(
              //               title: detail.location?.name ?? "",
              //               address: detail.address,
              //               coordinates: detail.location?.value ?? [],
              //             ),
              //           if (detail.contactAvailable)
              //             CellsWidget(
              //               title: detail.contacts?.name ?? "",
              //               contacts: detail.contacts?.value ?? [],
              //             ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    if (detail.viewType == ViewType.places)
                      RatingTopWidget(
                        ratingAverage: detail.ratingAverage,
                        averageCheck: detail.averageCheck ?? 0,
                      ),
                    if (detail.viewType != ViewType.places)
                      TopBalanceWidget(
                        priceText: detail.priceText,
                        priceInDollar: detail.priceInDollar,
                      ),
                    if (detail.description.orEmpty().isNotEmpty)
                      Padding(
                        padding: EdgeInsets.only(top: 24, bottom: 16),
                        child: Text(
                          "${detail.description}",
                          style: CustomTypography.bodyLg.copyWith(
                              color: context.appColors.textIconColor.primary),
                        ),
                      ),
                    if (detail.attachments != null &&
                        (detail.attachments?.value ?? []).isNotEmpty)
                      FilesGroup(
                        attachments: detail.attachments!.value ?? [],
                        title: detail.attachments!.name ?? "",
                      ),
                    if (detail.facilitiesAvailable &&
                        (detail.facilities?.value ?? []).isNotEmpty)
                      FacilitiesWidget(
                        title: detail.facilities?.name ?? "",
                        facilities: detail.facilities?.value ?? [],
                      ),
                    if (detail.languagesAvailable)
                      LanguagesWidget(
                          title: detail.languages!.name ?? "",
                          languages: detail.languages!.value ?? []),
                    if (detail.workingHoursAvailable)
                      WorkTimeWidget(
                        title: detail.workingHours?.name,
                        workingHours: detail.workingHours?.value,
                      ),
                    if (detail.address != null || detail.location != null)
                      LocationWidget(
                        title: detail.location?.name ?? "",
                        address: detail.address,
                        coordinates: detail.location?.value ?? [],
                      ),
                    if (detail.contactAvailable)
                      CellsWidget(
                        title: detail.contacts?.name ?? "",
                        contacts: detail.contacts?.value ?? [],
                      ),
                  ]),
                ),
              ),
            ],
          );
          // CollapsableContainer(
          //   title: detail.title ?? "",
          //   backgroundImageUrl: detail.image,
          //   actions: (isCollapsed) {
          //     return [
          //       IconButton(
          //           onPressed: () {
          //             HapticFeedback.selectionClick();
          //             context.read<DetailBloc>().add(
          //                 DetailBlocEvent.changeFavoriteState(
          //                     isSetFavorite: !detail.isFavorite));
          //           },
          //           icon: detail.isFavorite
          //               ? Assets.svgIconFilledHeard.toSvgImage(
          //                   colorFilter: ColorFilter.mode(
          //                       context.appColors.colors.red,
          //                       BlendMode.srcIn))
          //               : Assets.svgOutlineHeard.toSvgImage(
          //                   colorFilter: ColorFilter.mode(
          //                       isCollapsed
          //                           ? (iconTheme.color ?? Colors.white)
          //                           : Colors.white,
          //                       BlendMode.srcIn)))
          //     ];
          //   },
          //   expandedAppBarContent: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         detail.categoryName ?? "",
          //         style:
          //             CustomTypography.bodyMd.copyWith(color: Colors.white),
          //       ),
          //       Text(
          //         detail.title ?? "",
          //         style: CustomTypography.H1.copyWith(color: Colors.white),
          //       ),
          //       if (detail.photos?.isNotEmpty == true)
          //         GestureDetector(
          //           onTap: () {
          //             context.pushImagePreview(detail.photos ?? []);
          //           },
          //           child: Padding(
          //             padding: EdgeInsets.only(top: 8),
          //             child: Container(
          //               padding: EdgeInsets.all(12),
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(16),
          //                   color: Colors.black.withValues(alpha: 0.64)),
          //               child: Text(
          //                 context.localizations!
          //                     .nPhotos(detail.photos!.length),
          //                 style: CustomTypography.labelLg
          //                     .copyWith(color: Colors.white),
          //               ),
          //             ),
          //           ),
          //         )
          //     ],
          //   ),
          //   content: Padding(
          //     padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         if (detail.viewType == ViewType.places)
          //           RatingTopWidget(
          //             ratingAverage: detail.ratingAverage,
          //             averageCheck: detail.averageCheck ?? 0,
          //           ),
          //         if (detail.viewType != ViewType.places)
          //           TopBalanceWidget(
          //             priceText: detail.priceText,
          //             priceInDollar: detail.priceInDollar,
          //           ),
          //         if (detail.description.orEmpty().isNotEmpty)
          //           Padding(
          //             padding: EdgeInsets.only(top: 24, bottom: 16),
          //             child: Text(
          //               "${detail.description}",
          //               style: CustomTypography.bodyLg.copyWith(
          //                   color: context.appColors.textIconColor.primary),
          //             ),
          //           ),
          //         if (detail.attachments != null &&
          //             (detail.attachments?.value??[] ).isNotEmpty)
          //           FilesGroup(
          //             attachments: detail.attachments!.value ?? [],
          //             title: detail.attachments!.name ?? "",
          //           ),
          //         if (detail.facilitiesAvailable&&
          //            ( detail.facilities?.value??[]).isNotEmpty)
          //           FacilitiesWidget(
          //             title: detail.facilities?.name ?? "",
          //             facilities: detail.facilities?.value ?? [],
          //           ),
          //         if (detail.languagesAvailable)
          //           LanguagesWidget(
          //               title: detail.languages!.name ?? "",
          //               languages: detail.languages!.value ?? []),
          //         if (detail.workingHoursAvailable)
          //           WorkTimeWidget(
          //             title: detail.workingHours?.name,
          //             workingHours: detail.workingHours?.value,
          //           ),
          //         if (detail.address != null || detail.location != null)
          //           LocationWidget(
          //             title: detail.location?.name ?? "",
          //             address: detail.address,
          //             coordinates: detail.location?.value ?? [],
          //           ),
          //         if (detail.contactAvailable)
          //           CellsWidget(
          //             title: detail.contacts?.name ?? "",
          //             contacts: detail.contacts?.value ?? [],
          //           ),
          //       ],
          //     ),
          //   ),
          // ),
        });
      }),
    );
  }

  String? distanceText(BuildContext context, double? distance) {
    if (distance == null) return null;
    if (distance < 0.5) {
      return "${(distance * 100).floor()} ${context.localizations!.distanceM}";
    }
    return "${distance.floor()} ${context.localizations!.distanceKm}";
  }
}

class HookSliverAppBarExample extends HookWidget {
  final double expandedHeight = 200;
  final double titleAppearOffset = 160;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final showTitle = useState(false);

    useEffect(() {
      void listener() {
        final offset = scrollController.offset;
        if (offset >= titleAppearOffset && !showTitle.value) {
          showTitle.value = true;
        } else if (offset < titleAppearOffset && showTitle.value) {
          showTitle.value = false;
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: expandedHeight,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: showTitle.value ? Text("Sarlavha") : null,
              background: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    "Katta Header",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Scroll qiling: bu matn yuqoridagi header ostiga kirganda, SliverAppBar'da title ko‘rinadi.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Text("sjhfv");
            }, childCount: 100),

            // SliverChildBuilderDelegate(
            //       (context, index) => ListTile(title: Text('Element $index')),
            //   childCount: 20,
            // ),
          ),
        ],
      ),
    );
  }
}
