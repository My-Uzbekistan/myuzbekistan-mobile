import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/museum_auth_guard.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/museum_map_utils.dart';
import 'package:travel/src/pages/museum/detail/bloc/museum_detail_bloc.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_about.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_bottom_bar.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_contacts.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_gallery.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_location.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_reviews.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_section.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_summary.dart';
import 'package:travel/src/pages/museum/detail/widgets/shimmer/museum_detail_shimmer.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumDetailPage extends HookWidget {
  const MuseumDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumDetailBloc>();
    final scrollController = useScrollController();
    final isCollapsed = useState(false);

    final topInset = MediaQuery.paddingOf(context).top;
    final galleryHeight = MediaQuery.sizeOf(context).width * 389 / 375;
    final collapseOffset = galleryHeight - kToolbarHeight - topInset;

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;
        isCollapsed.value = scrollController.offset > collapseOffset;
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, collapseOffset]);

    return BlocConsumer<MuseumDetailBloc, MuseumDetailState>(
      bloc: bloc,
      listenWhen:
          (previous, current) =>
              current.errorMessage != null &&
              previous.errorMessage != current.errorMessage,
      listener: (context, state) => Toast.showToast(state.errorMessage!),
      builder: (context, state) {
        final detail = state.detail;
        final hasFailed =
            detail == null && state.loadFailed && !state.isLoading;

        return Scaffold(
          backgroundColor: context.appColors.background.underlayer,
          body: Stack(
            children: [
              if (hasFailed)
                Center(
                  child: MuseumStateView(
                    title: context.localization.museum_page_failed_to_load,
                    message: context.localization.museum_something_went_wrong,
                    actionText: context.localization.museum_refresh,
                    onAction: () => bloc.add(MuseumDetailEvent.refresh()),
                  ),
                )
              else
                RefreshIndicator.adaptive(
                  displacement: topInset + kToolbarHeight,
                  triggerMode: RefreshIndicatorTriggerMode.anywhere,
                  onRefresh: () async {
                    bloc.add(MuseumDetailEvent.refresh());
                    await bloc.stream.firstWhere(
                      (state) => !state.isRefreshing,
                    );
                  },
                  child: CustomScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      SliverStack(
                        children: [
                          SliverAppBar(
                            expandedHeight: galleryHeight,
                            stretch: true,
                            stretchTriggerOffset: 0.9,
                            automaticallyImplyLeading: false,
                            scrolledUnderElevation: 0,
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            flexibleSpace: FlexibleSpaceBar(
                              collapseMode: CollapseMode.parallax,
                              stretchModes: const [StretchMode.zoomBackground],
                              background: MuseumDetailGallery(
                                media: detail?.media ?? const [],
                              ),
                            ),
                          ),
                          if (isCollapsed.value)
                            SliverPinnedHeader(
                              child: SizedBox(
                                height: kToolbarHeight + topInset,
                                child: AppGradientMask(
                                  gradientColor:
                                      context.appColors.background.underlayer,
                                ),
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
                                    top: Radius.circular(24),
                                  ),
                                  child: Container(
                                    height: 24,
                                    color:
                                        context.appColors.background.underlayer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SliverToBoxAdapter(
                        child:
                            detail == null
                                ? const MuseumDetailShimmer()
                                : _sections(context, state, detail),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 8)),
                    ],
                  ),
                ),
              _actions(context, bloc, detail),
            ],
          ),
          bottomNavigationBar:
              detail == null
                  ? null
                  : MuseumDetailBottomBar(
                    detail: detail,
                    onBuy: () {
                      if (!museumRequireAuth(context)) return;
                      context.travel.pushMuseumPurchase(museumId: detail.id);
                    },
                  ),
        );
      },
    );
  }

  Widget _actions(
    BuildContext context,
    MuseumDetailBloc bloc,
    MuseumDetail? detail,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: MediaQuery.paddingOf(context).top),
      child: Row(
        children: [
          RoundedButton.arrowLeft(onPressed: () => context.pop()),
          const Spacer(),
          if (detail != null)
            Row(
              spacing: 8,
              children: [
                RoundedButton(
                  onPressed: () => _share(context, detail),
                  assetsSvgIcon: Assets.svg.iconShare.path,
                ),
                RoundedButton(
                  onPressed: () {
                    if (!museumRequireAuth(context)) return;
                    bloc.add(MuseumDetailEvent.toggleFavorite());
                  },
                  assetsSvgIcon:
                      detail.isFavorite
                          ? Assets.svg.iconFilledHeard.path
                          : Assets.svg.outlineHeard.path,
                  iconColor:
                      detail.isFavorite ? context.appColors.colors.red : null,
                ),
              ],
            ),
        ],
      ),
    );
  }

  Future<void> _share(BuildContext context, MuseumDetail detail) async {
    final failureText = context.coreLocalization.unexpected_error;
    final shared = await AppShare.link(
      context,
      url: AppLinkRouter.shareLink(
        AppNavPath.travel.museumDetail,
        queryParameters: {"museumId": detail.id},
      ),
      title: detail.title,
    );
    if (!shared) Toast.showToast(failureText);
  }

  Widget _sections(
    BuildContext context,
    MuseumDetailState state,
    MuseumDetail detail,
  ) {
    final reviews = state.reviews;
    final hasContacts =
        detail.address.orEmpty().isNotEmpty ||
        detail.phone.orEmpty().isNotEmpty ||
        detail.openingHours.orEmpty().isNotEmpty;
    final hasLocation = detail.latitude != null && detail.longitude != null;

    return Column(
      children: [
        MuseumDetailSection(child: MuseumDetailSummary(detail: detail)),
        if (detail.description.isNotEmpty)
          MuseumDetailSection(
            title: context.localization.museum_detail_about,
            child: MuseumDetailAbout(description: detail.description),
          ),
        if (hasContacts)
          MuseumDetailSection(
            title: context.localization.museum_detail_contacts,
            child: MuseumDetailContacts(detail: detail),
          ),
        if (hasLocation)
          MuseumDetailSection(
            title: context.localization.museum_detail_location,
            child: Column(
              spacing: 12,
              children: [
                MuseumDetailLocation(detail: detail),
                AppActionButton(
                  type: ActionButtonType.secondary,
                  actionText: context.localization.museum_detail_route,
                  onPressed:
                      () => museumOpenMap(
                        latitude: detail.latitude!,
                        longitude: detail.longitude!,
                        title: detail.title,
                      ),
                ),
              ],
            ),
          ),
        if (reviews != null && reviews.count > 0)
          MuseumDetailSection(
            title: context.localization.museum_detail_reviews,
            child: MuseumDetailReviews(reviews: reviews),
          ),
      ],
    );
  }
}
