import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import '../content_by_category/bloc/contents_by_category_bloc.dart';

class CatalogInvestmentsPage extends StatefulWidget {
  final String title;
  const CatalogInvestmentsPage({super.key,required this.title});

  @override
  State<CatalogInvestmentsPage> createState() => _CatalogInvestmentsPageState();
}

class _CatalogInvestmentsPageState extends State<CatalogInvestmentsPage> {
  ContentByCategoryBloc? bloc;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    bloc = context.read();
    bloc?.add(ContentByCategoryEvent.init(110));
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding  = MediaQuery.of(context).padding.bottom;
    final topPadding = kToolbarHeight + MediaQuery.of(context).padding.top + 16;
    return Scaffold(

      appBar: GradientAppBar(title: widget.title),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: BlocConsumer<ContentByCategoryBloc, ContentByCategoryState>(
        listener: (context, state) {
          if (state is ContentByCategoryDataState) {
            if (state.navState is Unauthorized) {
              context.more.pushAuthPage();
            }
          }
        },
        buildWhen: (previous, current) {
          return true;
        },
        builder: (context, state) {
          if (state is ContentByCategoryDataState) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification.metrics.pixels >=
                    notification.metrics.maxScrollExtent - 100) {
                  bloc?.add(ContentByCategoryEvent.loadMore());
                }

                return false;
              },
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20).copyWith(bottom:bottomPadding+20,top: topPadding),
                itemCount: state.contents.length + (state.isLoading ? 1 : 0),
                separatorBuilder: (context,index){
                  return SizedBox(height: 20,);
                },
                itemBuilder: (context, index) {
                  if (index >= state.contents.length) {
                    return Container(
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
                                  color:
                                      context.appColors.textIconColor.secondary,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                              width: 32,
                              child: LoadingIndicator(),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  final item = state.contents[index];
                  return RepaintBoundary(
                    key: ValueKey(item.contentId),
                    child: _ContentItem(item: item,onTap: (){

                      context.travel.pushDetailPage(contentId: item.contentId);
                    },),


                  );
                },
              ),
            );
          } else if (state is ContentByCategoryNoContentState) {
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
          } else if (state is ContentByCategoryErrorState) {
            return Transform.translate(
              offset: Offset(0, -kToolbarHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MessageContainer.custom(
                        icon: Assets.pngExclamationmarkSquare.toImage(),
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
                              bloc?.add(
                                ContentByCategoryEvent.loadContentEvent(),
                              );
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
    );
  }
}

class _ContentItem extends StatelessWidget {
  final MainPageContent item;

  final GestureTapCallback? onTap;

  const _ContentItem({super.key, required this.item,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                children: [
              Positioned.fill(child:     ExtendedImage.network(
                item.mainPhoto ?? "",
                cache: true,
                fit: BoxFit.cover,

                cacheMaxAge: Duration(days: 10),
                loadStateChanged: (ExtendedImageState state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.completed:
                      return AnimatedOpacity(
                        opacity: 1.0,
                        duration: Duration(milliseconds: 200),
                        child: state.completedWidget,
                      ); // ✅ Default image o'zi ko'rsatiladi
                    default:
                      return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
                  }
                },
              ),),
                  if ((item.priceInDollar??0)>=0)
                    Positioned(
                        bottom: 12,
                        right: 12,
                        child: PriceContainer(priceText:"~\$${item.priceInDollar?.floor()}"))

    // ~\$${widget.content.priceInDollar?.floor()
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(item.title.orEmpty()).bodyMd(color: context.appColors.textIconColor.primary),
                  Text(item.region.orEmpty()).bodySm(color: context.appColors.textIconColor.secondary),
                ],
              ),

              if((item.ratingAverage??0.0)>0)
              Row(
                spacing: 4,
                children: [
                  SizedBox(height: 12,child: Assets.svgStarFill.toSvgImage(fit: BoxFit.contain),),
                  Text(item.ratingAverage.toString()).bodyMd(color: context.appColors.textIconColor.primary),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
