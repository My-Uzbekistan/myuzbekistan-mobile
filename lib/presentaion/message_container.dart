import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

mixin class MessageContainer {
  static Widget comingSoonWidget(BuildContext context) {
    return _MessageContainerWidget(
      icon: Assets.pngGears.toImage(),
      title: context.localizations!.coming_soon,
      caption: context.localizations!.coming_soon_message,
    );
  }

  static Widget notFoundWidget(BuildContext context) {
    return _MessageContainerWidget(
      icon: Assets.pngSearchMaskIcon.toImage(),
      title: context.localizations!.nothing_found,
      caption: context.localizations!.nothing_found_message,
    );
  }


  static Widget custom({Widget icon = const SizedBox(), required String title, required String caption}) {
    return _MessageContainerWidget(
      icon: icon,
      title: title,
      caption: caption,
    );
  }

}

class _MessageContainerWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String caption;

  const _MessageContainerWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.caption});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: 80,
          width: 80,
          child: FittedBox(
            fit: BoxFit.contain,
            child: icon,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          title,
          style: CustomTypography.H3,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          caption,
          style: CustomTypography.bodyLg,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
