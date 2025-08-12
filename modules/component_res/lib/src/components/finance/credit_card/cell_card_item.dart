import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CellCardItem extends StatelessWidget {
  final String text;
  final String? iconUrl;
  final String? statusMessage;
  final GestureTapCallback? onTap;

  const CellCardItem(
      {super.key,
      required this.text,
      this.iconUrl,
      this.statusMessage,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 8),
        constraints: BoxConstraints(
          minHeight: 56,
        ),
        child: Row(
          spacing: 16,
          children: [
            SizedBox(
              height: 24,
              width: 36,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child:  ExtendedImage.network(iconUrl ?? "",
                cache: true,
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
                        return Assets.svgDefaultCreditCard.toSvgImage(fit: BoxFit.cover);
                    }
                  },

                )

              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(text).bodyLg(),
                if (statusMessage != null)
                  Text(statusMessage!)
                      .bodySm(color: context.appColors.colors.red),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
