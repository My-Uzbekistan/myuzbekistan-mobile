import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/travel.dart';

class GiftHistoryPage extends StatefulWidget {
  const GiftHistoryPage({super.key});

  @override
  State<GiftHistoryPage> createState() => _GiftHistoryPageState();
}

class _GiftHistoryPageState extends State<GiftHistoryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GiftBloc>().add(GiftBlocEvent.loadGiftHistory());
  }

  @override
  Widget build(BuildContext context) {
    // final items = [
    //   ClaimHistory(packageSize: 100),
    //
    //   ClaimHistory(packageSize: 1024),
    //
    //   ClaimHistory(packageSize: 3000),
    // ];
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      extendBody: true,

      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(top: padding.top),
            child: BlocBuilder<GiftBloc, GiftBlocState>(
              builder: (context, state) {
                return CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: kToolbarHeight),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 16),
                          child: Text(context.localization.gift_history).h1(),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        // if (index.isOdd) {
                        //   return const SizedBox(height: 8);
                        // }
                        return Padding(padding: EdgeInsets.symmetric(vertical: 4),child: _item(state.items[index]),);
                      }, childCount: state.items.length),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: padding.bottom + 16),
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            top: padding.top,
            right: 16,
            child: RoundedButton.closeButton(
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _item(ClaimHistory claimHistory) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.fill.quaternary,
      ),

      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  claimHistory
                      .size()
                      .plus(" ")
                      .plus(
                        claimHistory.isGB
                            ? context.localization.gb
                            : context.localization.mb,
                      ),
                ).labelLg(),
                Text(claimHistory.name.orEmpty()).bodySm(),
              ],
            ),
          ),
          Text(claimHistory.claimedAt.orEmpty()).labelLg(),
        ],
      ),
    );
  }
}
