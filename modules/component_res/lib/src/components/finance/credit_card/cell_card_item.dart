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
                  child: AppNetworkImage(
                    iconUrl ?? "",
                    cacheMaxAge: Duration(days: 10),
                    placeholder: Assets.svg.defaultCreditCard.svg(
                      fit: BoxFit.cover,
                    ),
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
                child: AppNetworkImage(
                  photoUrl ?? "",
                  fit: BoxFit.cover,
                  placeholder: ColoredBox(
                    color: context.appColors.fill.tertiary,
                  ),
                ),
              ),
              Positioned.fill(
                child: ColoredBox(
                  color: context.appColors.service.scrim
                      .withValues(alpha: 0.2),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(top: 16),
                child: AppNetworkImage(
                  iconUrl ?? "",
                  height: 32,
                  cacheMaxAge: Duration(days: 10),
                  fit: BoxFit.fill,
                  placeholder: showDefaultImage
                      ? Assets.svg.defaultCreditCard.svg()
                      : SizedBox(),
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
                      ).bodyLg(color: context.appColors.service.onMedia),
                    ),
                    if (trailing != null)
                      Text(trailing!)
                          .bodyLg(color: context.appColors.service.onMedia),
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

