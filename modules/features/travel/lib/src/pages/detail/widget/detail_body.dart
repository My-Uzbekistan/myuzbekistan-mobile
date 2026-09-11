import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';
import 'package:travel/src/navigation/navigation_extensions.dart';
import 'package:travel/src/pages/detail/detail_bloc/detail_bloc.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/review/widgets/detail_reviews_container.dart';
import 'package:travel/src/pages/detail/widget/description_widget.dart';
import 'package:travel/src/pages/detail/widget/detail_contacts.dart';
import 'package:travel/src/pages/detail/widget/detail_header.dart';
import 'package:travel/src/pages/detail/widget/detail_section_card.dart';
import 'package:travel/src/pages/detail/widget/facilities_widget.dart';
import 'package:travel/src/pages/detail/widget/location_widget.dart';
import 'package:travel/src/pages/detail/widget/top_image_widget.dart';
import 'package:travel/src/pages/detail/widget/work_time_widget.dart';

class DetailBody extends StatelessWidget {
  final ContentDetail content;
  final bool isLoading;
  final bool isCollapsed;
  final ScrollController scrollController;

  const DetailBody({
    super.key,
    required this.content,
    required this.isLoading,
    required this.isCollapsed,
    required this.scrollController,
  });

  Future<void> _share(BuildContext context) async {
    final failureText = context.coreLocalization.unexpected_error;
    final shared = await AppShare.link(
      context,
      url: AppLinkRouter.shareLink(
        AppNavPath.travel.travelDetail,
        queryParameters: {"contentId": "${content.id}"},
      ),
      title: content.title,
    );
    if (!shared) Toast.showToast(failureText);
  }

  void _leaveReview(BuildContext context) {
    if (getIt<SecurityStorage>().getAccessToken() == null) {
      context.more.pushAuthPage();
      return;
    }
    context.pushAddReviewPage(
      bloc: context.read<ReviewBloc>(),
      contentTitle: content.title.orEmpty(),
      contentDescription: content.shortDescription.orEmpty(),
      rating: context.read<ReviewBloc>().state.currentUserRate,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final descriptionTitle = content.viewType == ViewType.places
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
                    color: context.appColors.service.onMedia,
                  ),
                  systemOverlayStyle: context.systemUiOverlyStyle.copyWith(
                    statusBarBrightness: Brightness.dark,
                  ),
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsetsGeometry.zero,
                    expandedTitleScale: 1,
                    collapseMode: CollapseMode.parallax,
                    centerTitle: true,
                    stretchModes: [StretchMode.zoomBackground],
                    background: TopImageWidget(
                      photos: content.photos ?? [],
                      onImageTap: () {
                        if (!isCollapsed) {
                          context.travel.pushImagePreview(content.photos ?? []);
                        }
                      },
                    ),
                  ),
                ),
                if (isCollapsed)
                  SliverPinnedHeader(
                    child: SizedBox(
                      height:
                          kToolbarHeight + MediaQuery.of(context).padding.top,
                      child: AppGradientMask(),
                    ),
                  ),
                SliverPositioned.fill(
                  bottom: -1,
                  top: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Container(
                          height: 20,
                          color: context.appColors.background.elevation1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 16,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  DetailSectionCard(
                    squareTop: true,
                    child: DetailHeader(content: content),
                  ),
                  if (isLoading)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Center(child: LoadingIndicator()),
                    ),
                  if (content.description.orEmpty().isNotEmpty)
                    DetailSectionCard(
                      child: DescriptionWidget(
                        title: descriptionTitle,
                        description: content.description,
                      ),
                    ),
                  if (content.facilitiesAvailable)
                    DetailSectionCard(
                      child: FacilitiesWidget(content: content),
                    ),
                  if (content.contactAvailable)
                    DetailSectionCard(child: DetailContacts(content: content)),
                  if (content.workingScheduleAvailable)
                    DetailSectionCard(
                      child: WorkTimeWidget(
                        title: context.localization.workingHours,
                        schedule: content.workingSchedule ?? [],
                      ),
                    ),
                  if (content.location?.isNotEmpty == true &&
                      content.contentAddress != null)
                    DetailSectionCard(
                      child: LocationWidget(
                        title: context.localization.location,
                        address: content.contentAddress,
                        coordinates: content.location ?? [],
                        distanceText: content.distance.formatDistance(
                          meterLabel: context.localization.distanceM,
                          kmLabel: context.localization.distanceKm,
                        ),
                      ),
                    ),
                  ReviewsContainer(
                    ratingAverage: content.ratingAverage,
                    reviewCount: content.reviewCount,
                    onShowMore: () {
                      context.pushAllReviewsPage(
                        bloc: context.read<ReviewBloc>(),
                      );
                    },
                    onLeaveReview: () => _leaveReview(context),
                  ),
                ]),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ).copyWith(top: MediaQuery.of(context).padding.top),
          child: Row(
            children: [
              RoundedButton.arrowLeft(onPressed: () => context.pop()),
              Expanded(child: SizedBox()),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                child: isLoading
                    ? SizedBox()
                    : Row(
                        spacing: 8,
                        children: [
                          RoundedButton(
                            onPressed: () => _share(context),
                            assetsSvgIcon: Assets.svg.iconShare.path,
                          ),
                          RoundedButton(
                            onPressed: () {
                              HapticFeedback.selectionClick();
                              context.read<DetailBloc>().add(
                                DetailBlocEvent.changeFavoriteState(
                                  isSetFavorite: !content.isFavorite,
                                ),
                              );
                            },
                            assetsSvgIcon: content.isFavorite
                                ? Assets.svg.iconFilledHeard.path
                                : Assets.svg.outlineHeard.path,
                            iconColor: content.isFavorite
                                ? context.appColors.colors.red
                                : null,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
