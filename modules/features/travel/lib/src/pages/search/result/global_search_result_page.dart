import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/home/page/widget/shimmer/home_horizontal_section_shimmer.dart';
import 'package:travel/src/pages/search/result/bloc/global_search_result_bloc.dart';
import 'package:travel/src/pages/search/result/widgets/global_search_cities.dart';
import 'package:travel/src/pages/search/result/widgets/global_search_group.dart';
import 'package:travel/src/pages/search/result/widgets/global_search_merchants.dart';
import 'package:travel/src/pages/search/result/widgets/global_search_services.dart';

class GlobalSearchResultPage extends StatelessWidget {
  const GlobalSearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<GlobalSearchResultBloc, GlobalSearchResultState>(
          listenWhen: (previous, current) =>
              current.errorMessage != null &&
              previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder: (context, state) => Column(
            children: [
              _navBar(context, state.query),
              Expanded(child: _body(context, state)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navBar(BuildContext context, String query) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: SizedBox(
        height: 44,
        child: Row(
          spacing: 8,
          children: [
            RoundedButton.arrowLeft(onPressed: () => context.pop()),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => context.pop(),
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: context.appColors.background.elevation1,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 2,
                    children: [
                      Text(
                        query,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelMd(color: context.appColors.textIconColor.primary),
                      Text(
                        context.localization.global_search_query_label,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodySm(
                        color: context.appColors.textIconColor.tertiary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context, GlobalSearchResultState state) {
    if (state.isLoading) {
      return const SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            HomeHorizontalSectionShimmer(
              cardWidth: 220,
              imageHeight: 280,
              listHeight: 280,
              hasSeeAll: false,
            ),
            HomeHorizontalSectionShimmer(
              cardWidth: 156,
              imageHeight: 156,
              listHeight: 244,
              withCaptions: true,
            ),
          ],
        ),
      );
    }

    final result = state.result;
    if (result == null || result.isEmpty) {
      return Center(
        child: MessageContainer.notFoundWidget(
          context,
          title: context.localization.global_search_empty_title,
          caption: context.localization.global_search_empty_message,
        ),
      );
    }

    final cities = result.cities;
    final services = result.services;
    final merchants = result.merchants;

    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.paddingOf(context).bottom + 12,
      ),
      child: Column(
        children: [
          if (cities != null && cities.items.isNotEmpty)
            GlobalSearchCities(
              block: cities,
              onCityTap: (city) =>
                  context.travel.pushCityPage(cityId: city.id),
            ),
          if (services != null && services.items.isNotEmpty)
            GlobalSearchServices(block: services),
          if (merchants != null && merchants.items.isNotEmpty)
            GlobalSearchMerchants(
              block: merchants,
              onMerchantTap: (merchant) => context.finance.pushMerchantPage(
                id: merchant.id.toString(),
              ),
            ),
          for (final group in result.groups.where((e) => e.items.isNotEmpty))
            GlobalSearchGroup(
              group: group,
              onSeeAll: () => context.travel.pushContentByCategoryPage(
                group.title,
                group.categoryId,
              ),
              onItemTap: (item) => context.travel.pushDetailPage(
                contentId: item.contentId,
                content: item.toContentDetail(categoryName: group.title),
              ),
            ),
        ],
      ),
    );
  }
}
