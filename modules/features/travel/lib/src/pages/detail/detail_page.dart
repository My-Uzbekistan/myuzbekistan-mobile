import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/navigation/navigation_extensions.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/widget/description_widget.dart';
import 'package:travel/src/pages/detail/widget/icon_text_cell.dart';
import 'package:travel/src/pages/detail/widget/info_widget.dart';
import 'package:travel/src/pages/detail/widget/items_title.dart';
import 'package:travel/src/pages/detail/review/widgets/detail_reviews_container.dart';
import 'package:travel/src/pages/detail/widget/work_time_widget.dart';
import 'detail_bloc/detail_bloc.dart';
import 'widget/facilities_widget.dart';
import 'widget/location_widget.dart';
import 'widget/top_image_widget.dart';

class DetailPage extends HookWidget {
  final double expandedHeight = 300;
  final double titleAppearOffset = 290;

  const DetailPage({super.key});

  final duration = 300;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final showCollapsedTitle = useState(false);
    final isCollapsed = useState(false);
    final screenWidth = MediaQuery.of(context).size.width;
    useEffect(() {
      void listener() {
        if (!scrollController.hasClients) return;
        final offset = scrollController.offset;
        final threshold = screenWidth - kToolbarHeight;
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
      body: BlocConsumer<DetailBloc, DetailBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            dataState: (contentDetail, contentId, isLoading, nav) {
              if (nav is Unauthorized) {
                context.more.pushAuthPage();
              }
            },
          );
        },
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: duration),
            child:
                state is DetailBlocDataState
                    ? Builder(
                      builder: (context) {
                        final data = state.contentDetail;
                        final title =
                            data.viewType == ViewType.places
                                ? context.localization.aboutPlace
                                : context.localization.moreDetails;
                        return Stack(
                          children: [
                            CustomScrollView(
                              controller: scrollController,
                              slivers: [
                                SliverStack(
                                  children: [
                                    SliverAppBar(
                                      expandedHeight: screenWidth,
                                      stretch: true,
                                      stretchTriggerOffset: 0.9,
                                      floating: false,
                                      automaticallyImplyLeading: false,
                                      scrolledUnderElevation: 0,
                                      elevation: 0,
                                      iconTheme: IconThemeData(
                                        color: Colors.white,
                                      ),
                                      systemOverlayStyle: context
                                          .systemUiOverlyStyle
                                          .copyWith(
                                            statusBarBrightness:
                                                Brightness.dark,
                                          ),
                                      shadowColor: Colors.transparent,
                                      backgroundColor: Colors.transparent,
                                      flexibleSpace: FlexibleSpaceBar(
                                        titlePadding: EdgeInsetsGeometry.zero,
                                        expandedTitleScale: 1,
                                        collapseMode: CollapseMode.parallax,
                                        centerTitle: true,
                                        stretchModes: [
                                          StretchMode.zoomBackground,
                                        ],
                                        background: TopImageWidget(
                                          photos: data.photos ?? [],
                                          onImageTap: () {
                                            if (!isCollapsed.value) {
                                              context.travel.pushImagePreview(
                                                data.photos ?? [],
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    if (isCollapsed.value)
                                      SliverPinnedHeader(
                                        child: SizedBox(
                                          height:
                                              kToolbarHeight +
                                              MediaQuery.of(
                                                context,
                                              ).padding.top,
                                          child: AppGradientMask(),
                                        ),
                                      ),
                                    SliverPositioned.fill(
                                      bottom: -1,
                                      top: 0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(24),
                                                topLeft: Radius.circular(24),
                                              ),

                                              child: Container(
                                                height: 25,
                                                color:
                                                    context
                                                        .appColors
                                                        .background
                                                        .background,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SliverPadding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        MediaQuery.of(context).padding.bottom +
                                        16,
                                  ),
                                  sliver: SliverList(
                                    delegate: SliverChildListDelegate([
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        child: Column(
                                          spacing: 4,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data.categoryName.orEmpty(),
                                            ).bodyMd(
                                              color:
                                                  context
                                                      .appColors
                                                      .textIconColor
                                                      .secondary,
                                            ),
                                            Text(
                                              data.title.orEmpty().trim(),
                                            ).h2(),
                                          ],
                                        ),
                                      ),
                                      AnimatedSize(
                                        duration: Duration(
                                          milliseconds: duration,
                                        ),
                                        child:
                                            state.isLoading
                                                ? Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 16,
                                                  ),
                                                  child: Center(
                                                    child: LoadingIndicator(),
                                                  ),
                                                )
                                                : SizedBox.shrink(),
                                      ),
                                      AnimatedSwitcher(
                                        duration: Duration(
                                          milliseconds: duration + 50,
                                        ),

                                        child:
                                            data.info != null
                                                ? InfoWidget(info: data.info!)
                                                : SizedBox.shrink(),
                                      ),
                                      AnimatedSwitcher(
                                        duration: Duration(
                                          milliseconds: duration + 50,
                                        ),

                                        child:
                                            data.description.orEmpty().isEmpty
                                                ? SizedBox.shrink()
                                                : DescriptionWidget(
                                                  title: title,
                                                  description: data.description,
                                                ),
                                      ),
                                      AnimatedSwitcher(
                                        duration: Duration(
                                          milliseconds: duration + 100,
                                        ),
                                        child:
                                            !data.facilitiesAvailable
                                                ? SizedBox.shrink()
                                                : Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                      ),
                                                  child: FacilitiesWidget(
                                                    facilities:
                                                        data.facilities ?? [],
                                                  ),
                                                ),
                                      ),
                                      AnimatedSwitcher(
                                        duration: Duration(
                                          milliseconds: duration + 150,
                                        ),
                                        child:
                                            !data.contactAvailable
                                                ? SizedBox.shrink()
                                                : Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                      ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ItemsTitle(
                                                        title:
                                                            context
                                                                .localization
                                                                .contacts,
                                                      ),
                                                      ...data.contacts
                                                              ?.take(4)
                                                              .map(
                                                                (
                                                                  e,
                                                                ) => IconTextCell(
                                                                  title:
                                                                      e.contactName
                                                                          .orEmpty(),
                                                                  iconUrl:
                                                                      e.icon,
                                                                  showArrow:
                                                                      true,
                                                                  onTap: () {
                                                                    if (e.action !=
                                                                        null) {
                                                                      LauncherUtils.urlLauncher(
                                                                        e.actionUrl!,
                                                                        mode:
                                                                            LaunchMode.externalApplication,
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                              )
                                                              .toList() ??
                                                          [],
                                                    ],
                                                  ),
                                                ),
                                      ),

                                      if (data.workingHoursAvailable)
                                        WorkTimeWidget(
                                          title:
                                              context.localization.workingHours,
                                          workingHours: data.workingHours,
                                        ),
                                      AnimatedSwitcher(
                                        duration: Duration(
                                          milliseconds: duration + 200,
                                        ),
                                        child:
                                            data.contentAddress != null &&
                                                    data.location?.isNotEmpty ==
                                                        true
                                                ? Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                      ),
                                                  child: LocationWidget(
                                                    title:
                                                        context
                                                            .localization
                                                            .location,
                                                    address:
                                                        data.contentAddress,
                                                    coordinates:
                                                        data.location ?? [],
                                                  ),
                                                )
                                                : SizedBox.shrink(),
                                      ),

                                      ReviewsContainer(
                                        addReview: (rating) {
                                          context.pushAddReviewPage(
                                            bloc: context.read<ReviewBloc>(),
                                            contentTitle: data.title.orEmpty(),
                                            contentType:
                                                data.categoryName.orEmpty(),
                                            rating: rating,
                                          );
                                        },
                                        openAllReviews: (index) {
                                          context.pushAllReviewsPage(
                                            bloc: context.read<ReviewBloc>(),
                                          );
                                        },
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ).copyWith(
                                top: MediaQuery.of(context).padding.top,
                              ),
                              child: Row(
                                children: [
                                  RoundedButton.arrowLeft(
                                    onPressed: () {
                                      context.pop();
                                    },
                                  ),
                                  Expanded(child: SizedBox()),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    child:
                                        state.isLoading
                                            ? SizedBox()
                                            : RoundedButton(
                                              onPressed: () {
                                                HapticFeedback.selectionClick();
                                                context.read<DetailBloc>().add(
                                                  DetailBlocEvent.changeFavoriteState(
                                                    isSetFavorite:
                                                        !data.isFavorite,
                                                  ),
                                                );
                                              },
                                              assetsSvgIcon:
                                                  data.isFavorite
                                                      ? Assets
                                                          .svgIconFilledHeard
                                                      : Assets.svgOutlineHeard,

                                              iconColor:
                                                  data.isFavorite
                                                      ? context
                                                          .appColors
                                                          .colors
                                                          .red
                                                      : null,
                                            ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    )
                    : Scaffold(
                      appBar: GradientAppBar(),
                      extendBodyBehindAppBar: false,
                      body: Container(
                        padding: EdgeInsets.only(top: 16),
                        alignment: Alignment.topCenter,
                        child: LoadingIndicator(),
                      ),
                    ),
          );
        },
      ),
    );
  }

  String? distanceText(BuildContext context, double? distance) {
    if (distance == null) return null;
    if (distance < 0.5) {
      return "${(distance * 100).floor()} ${context.localization.distanceM}";
    }
    return "${distance.floor()} ${context.localization.distanceKm}";
  }
}
