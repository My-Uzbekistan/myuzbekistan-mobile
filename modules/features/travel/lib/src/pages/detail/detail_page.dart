
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/widget/work_time_widget.dart';

import 'detail_bloc/detail_bloc.dart';
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
            context.more.pushAuthPage();
          }
        }
      }, buildWhen: (previous, current) {
        if (previous is DetailBlocDataState && current is DetailBlocDataState) {
          return previous.contentDetail != current.contentDetail;
        } else {
          return previous != current;
        }
      }, builder: (context, state) {
            if(state is DetailBlocLoadingState){

              return  Scaffold(
                // appBar: AppBar(),
                body: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topCenter,
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }
             final detail=(state as DetailBlocDataState).contentDetail;
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

                      context.travel.pushImagePreview(detail.photos??[]);
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


                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 48),
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

      }),
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


