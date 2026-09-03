import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/gift/widget/gift_box_image.dart';
import 'package:travel/travel.dart';

class GiftHistoryPage extends HookWidget {
  const GiftHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final giftBloc = context.read<GiftBloc>();
    useEffect(() {
      giftBloc.add(GiftBlocEvent.loadGiftHistory());
      return null;
    }, const []);

    final padding = MediaQuery.paddingOf(context);

    return Scaffold(
      backgroundColor: context.appColors.background.base,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        toolbarHeight: GradientAppBar.navbarHeight,
        automaticallyImplyLeading: false,
        actions: [RoundedButton.closeButton(onPressed: () => context.pop())],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<GiftBloc, GiftBlocState>(
          builder: (context, state) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(
                    top: padding.top + GradientAppBar.navbarHeight,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 52,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(context.localization.gift_history).h1(),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 8),
                  sliver: SliverList.separated(
                    itemCount: state.items.length,
                    separatorBuilder:
                        (context, index) => const SizedBox(height: 8),
                    itemBuilder:
                        (context, index) =>
                            _ClaimCell(claim: state.items[index]),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: padding.bottom + 16),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ClaimCell extends StatelessWidget {
  const _ClaimCell({required this.claim});

  final ClaimHistory claim;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final claimedAt = DateTime.tryParse(claim.claimedAt.orEmpty());

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: appColors.service.shadow,
            offset: const Offset(0, 6),
            blurRadius: 17,
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: Row(
              spacing: 8,
              children: [
                const GiftBoxImage(
                  size: 56,
                  radius: 16,
                  zoom: kGiftBoxCropZoom,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 2,
                    children: [
                      Text(
                        claim
                            .size()
                            .plus(" ")
                            .plus(
                              claim.isGB
                                  ? context.localization.gb
                                  : context.localization.mb,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelLg(),
                      Text(
                        claim.name.orEmpty(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodySm(color: appColors.textIconColor.secondary),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            claimedAt?.format() ?? "",
          ).bodyMd(color: appColors.textIconColor.secondary),
        ],
      ),
    );
  }
}
