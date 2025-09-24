import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MerchantWidgetModel {
  String name;
  String? caption;
  String? distance;
  String? imageUrl;

  MerchantWidgetModel({
    required this.name,
    this.caption,
    this.distance,
    this.imageUrl,
  });
}

class FinanceMerchantsCard extends StatefulWidget {
  final MerchantWidgetModel merchantWidgetModel;
  final GestureTapCallback? onTap;

  const FinanceMerchantsCard({
    super.key,
    required this.merchantWidgetModel,
    this.onTap,
  });

  @override
  State<FinanceMerchantsCard> createState() => _FinanceMerchantsCardState();
}

class _FinanceMerchantsCardState extends State<FinanceMerchantsCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: widget.onTap,
      child: IntrinsicHeight(
        child: Container(
          width: 128,
          height: double.infinity,

          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: context.appColors.background.elevation1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: 40,
                  width: 40,

                  child: RepaintBoundary(
                    child: ExtendedImage.network(
                      widget.merchantWidgetModel.imageUrl ?? "",
                      cache: true,
                      cacheMaxAge: Duration(days: 6),
                      fit: BoxFit.fill,
                      colorBlendMode: BlendMode.hardLight,
                      color: context.appColors.fill.quaternary,

                      loadStateChanged: (state) {
                        switch (state.extendedImageLoadState) {
                          case LoadState.completed:
                            return AnimatedOpacity(
                              opacity: 1.0,
                              duration: Duration(milliseconds: 200),
                              child: state.completedWidget,
                            );

                          default:
                            return Container(
                              color: context.appColors.fill.quaternary,
                            );
                        }
                      },
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:
                      widget.merchantWidgetModel.caption.orEmpty().isEmpty
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.end,
                  children: [
                    Flexible(child: SizedBox(height: 8,)),
                    Text(
                      widget.merchantWidgetModel.name,
                      style: CustomTypography.labelMd,
                      maxLines: 3,

                      overflow: TextOverflow.ellipsis,
                    ),
                    if (widget.merchantWidgetModel.caption.orEmpty().isNotEmpty)
                      Text(
                        widget.merchantWidgetModel.caption.orEmpty(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTypography.labelSm.copyWith(
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                  ],
                ),
              ),
              //
              // Text(
              //   widget.merchantWidgetModel.distance.orEmpty(),
              //   style: CustomTypography.labelSm.copyWith(
              //     color: context.appColors.textIconColor.secondary,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
