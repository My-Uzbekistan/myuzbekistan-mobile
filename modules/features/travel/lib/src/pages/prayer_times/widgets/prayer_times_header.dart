import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PrayerTimesHeader extends StatelessWidget {
  const PrayerTimesHeader({super.key, required this.title, this.onClose});

  final String title;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 15,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 36,
              height: 5,
              decoration: BoxDecoration(
                color: context.appColors.stroke.nonOpaque,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 72),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelLg(color: context.appColors.textIconColor.primary),
              ),
              Positioned(
                right: 16,
                child: RoundedButton.closeButton(onPressed: onClose),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
