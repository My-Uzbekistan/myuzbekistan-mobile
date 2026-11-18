import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/pages/city/bloc/city_bloc.dart';
import 'package:travel/src/pages/city/widget/city_block_section.dart';
import 'package:travel/src/pages/city/widget/city_location_section.dart';
import 'package:travel/src/pages/city/widget/city_summary.dart';
import 'package:travel/src/pages/city/widget/city_tickets_section.dart';

class CityPage extends HookWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final isCollapsed = useState(false);

    final topInset = MediaQuery.paddingOf(context).top;
    final headerHeight = MediaQuery.sizeOf(context).width * 332 / 375;
    final collapseOffset = headerHeight - kToolbarHeight - topInset;

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;
        isCollapsed.value = scrollController.offset > collapseOffset;
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, collapseOffset]);

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<CityBloc, CityState>(
        listenWhen:
            (prev, cur) =>
                cur.errorMessage != null &&
                prev.errorMessage != cur.errorMessage,
        listener: (context, state) {
          if (state.errorMessage != null) {
            Toast.showToast(state.errorMessage!);
          }
        },
        builder: (context, state) {
          final city = state.city;
          return Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverStack(
                    children: [
                      SliverAppBar(
                        expandedHeight: headerHeight,
                        stretch: true,
                        stretchTriggerOffset: 0.9,
                        automaticallyImplyLeading: false,
                        scrolledUnderElevation: 0,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        systemOverlayStyle: context.systemUiOverlyStyle
                            .copyWith(statusBarBrightness: Brightness.dark),
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          stretchModes: const [StretchMode.zoomBackground],
                          background: _CityPhoto(photo: city?.photo),
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
                      bottom: MediaQuery.paddingOf(context).bottom + 16,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        city == null
                            ? _placeholder(state.isLoading)
                            : _sections(context, city),
                      ),
                    ),
                  ),
                ],
              ),
              _actions(context, city),
            ],
          );
        },
      ),
    );
  }

  Widget _actions(BuildContext context, CityDetail? city) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: MediaQuery.paddingOf(context).top),
      child: Row(
        children: [
          RoundedButton.arrowLeft(onPressed: () => context.pop()),
          const Spacer(),
          if (city != null)
            RoundedButton(
              onPressed: () => _share(context, city),
              assetsSvgIcon: Assets.svg.iconShare.path,
            ),
        ],
      ),
    );
  }

  Future<void> _share(BuildContext context, CityDetail city) async {
    final failureText = context.coreLocalization.unexpected_error;
    final shared = await AppShare.link(
      context,
      url: AppLinkRouter.shareLink(
        AppNavPath.travel.travelCity,
        queryParameters: {"cityId": "${city.id}"},
      ),
      title: city.name,
    );
    if (!shared) Toast.showToast(failureText);
  }

  List<Widget> _placeholder(bool isLoading) {
    if (!isLoading) return const [];
    return [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(child: LoadingIndicator()),
      ),
    ];
  }

  List<Widget> _sections(BuildContext context, CityDetail city) {
    final location = city.location;
    final tickets = city.tickets;
    final blocks = <Widget>[
      for (final block in city.blocks.where((e) => e.items.isNotEmpty))
        CityBlockSection(
          block: block,
          onSeeAll:
              () => context.travel.pushContentByCategoryPage(
                block.title,
                block.categoryId,
              ),
          onItemTap:
              (item) => context.travel.pushDetailPage(
                contentId: item.contentId,
                content: item.toContentDetail(categoryName: block.title),
              ),
        ),
    ];
    if (tickets != null && tickets.items.isNotEmpty) {
      blocks.insert(
        blocks.isEmpty ? 0 : 1,
        CityTicketsSection(tickets: tickets),
      );
    }

    return [
      CitySummary(name: city.name, subtitle: city.subtitle),
      if (location != null) CityLocationSection(location: location),
      ...blocks,
    ];
  }
}

class _CityPhoto extends StatelessWidget {
  final String? photo;

  const _CityPhoto({this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AppNetworkImage(
          photo ?? "",
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 84,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.appColors.service.scrim.withValues(alpha: 0),
                    context.appColors.service.scrim.withValues(alpha: 0.5),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
