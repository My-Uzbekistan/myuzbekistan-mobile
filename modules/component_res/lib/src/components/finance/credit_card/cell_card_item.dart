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
                  child: ExtendedImage.network(
                    iconUrl ?? "",
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
                          return Assets.svgDefaultCreditCard
                              .toSvgImage(fit: BoxFit.cover);
                      }
                    },
                  )),
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

class CellCardItemWithImage extends StatelessWidget {
  final String text;
  final String? iconUrl;
  final String? photoUrl;
  final String? trailing;
  final String? statusMessage;
  final GestureTapCallback? onTap;
  final bool showDefaultImage;

  const CellCardItemWithImage(
      {super.key,
      required this.text,
      this.iconUrl,
      this.statusMessage,
      this.photoUrl,
      this.trailing,
      this.showDefaultImage = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: double.infinity,
          color: Colors.transparent,
          constraints: BoxConstraints(
            minHeight: 96,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                  child: SizedBox(
                child: ExtendedImage.network(
                  photoUrl ?? "",
                  fit: BoxFit.cover,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return AnimatedOpacity(
                          duration: Duration(milliseconds: 200),
                          opacity: 1.0,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: state.completedWidget,
                              ),
                              Positioned.fill(
                                  child: Container(
                                color: Colors.black.withValues(alpha: 0.2),
                              ))
                            ],
                          ),
                        );
                      case LoadState.loading:
                      case LoadState.failed:
                        return Container(
                          color: context.appColors.fill.tertiary,
                        );
                    }
                  },
                ),
              )),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(top: 16),
                child: ExtendedImage.network(
                  iconUrl ?? "",
                  cache: true,
                  height: 32,
                  cacheMaxAge: Duration(days: 10),
                  fit: BoxFit.fill,
                  loadStateChanged: (ExtendedImageState state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return AnimatedOpacity(
                          opacity: 1.0,
                          duration: Duration(milliseconds: 200),
                          child: state.completedWidget,
                        ); // ✅ Default image o'zi ko'rsatiladi
                      default:
                        return showDefaultImage
                            ? Assets.svgDefaultCreditCard.toSvgImage()
                            : SizedBox();
                    }
                  },
                ),
              ),

              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodyLg(color: Colors.white),
                    ),
                    if (trailing != null)
                      Text(trailing!).bodyLg(color: Colors.white),
                  ],
                ),
              )
              // Row(
              //   spacing: 16,
              //   children: [
              //
              //     Expanded(
              //         child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       spacing: 2,
              //       children: [
              //         Text(text).bodyLg(),
              //         if (statusMessage != null)
              //           Text(statusMessage!)
              //               .bodySm(color: context.appColors.colors.red),
              //       ],
              //     ))
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

