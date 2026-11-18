import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({
    super.key,
    required this.title,
    required this.content,
    required this.footer,
  });

  final String title;
  final Widget content;
  final Widget footer;

  static Future<T?> show<T>(
    BuildContext context, {
    required WidgetBuilder builder,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        maxHeight:
            MediaQuery.sizeOf(context).height -
            MediaQuery.paddingOf(context).top -
            8,
      ),
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;
    final safeAreaInset = keyboardInset > 0
        ? 0.0
        : MediaQuery.paddingOf(context).bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: keyboardInset),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetGrabber(),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: context.appColors.background.underlayer,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: context.appColors.background.elevation1,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 24,
                              top: 16,
                              bottom: 8,
                            ),
                            child: Text(title).h3(
                              color: context.appColors.textIconColor.primary,
                            ),
                          ),
                          Flexible(
                            child: SingleChildScrollView(
                              physics: const ClampingScrollPhysics(),
                              child: content,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: context.appColors.background.elevation1,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 8,
                      bottom: safeAreaInset + 8,
                    ),
                    child: footer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
