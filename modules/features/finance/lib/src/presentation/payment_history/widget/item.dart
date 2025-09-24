import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class HistoryGroup {
  String title;
  List<HistoryItemUiModel> items;

  HistoryGroup({required this.title, required this.items});
}

class HistoryItemUiModel {
  String? id;
  String title;
  String? subTitle;
  String? iconUrl;
  String trailing;

  HistoryItemUiModel({
    required this.title,
    this.subTitle,
    this.iconUrl,
    this.id,
    required this.trailing,
  });
}

class HistoryItem extends StatelessWidget {
  final HistoryItemUiModel itemUiModel;
  final GestureTapCallback? onTap;

  const HistoryItem({super.key, required this.itemUiModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(minHeight: 72),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.appColors.fill.quaternary,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: context.appColors.fill.quaternary,
                height: 40,
                width: 40,
                child: ExtendedImage.network(
                  itemUiModel.iconUrl.orEmpty(),
                  colorBlendMode: BlendMode.hardLight,
                  color: context.appColors.fill.quaternary,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return AnimatedOpacity(
                          opacity: 1.0,
                          duration: Duration(milliseconds: 300),
                          child: state.completedWidget,
                        );
                      default:
                        return SizedBox();
                    }
                  },
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: IntrinsicHeight(
                child: Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Text(
                            itemUiModel.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).labelLg(),
                          if (itemUiModel.subTitle != null)
                            Text(itemUiModel.subTitle.orEmpty()).bodySm(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: Text(itemUiModel.trailing).labelLg(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
