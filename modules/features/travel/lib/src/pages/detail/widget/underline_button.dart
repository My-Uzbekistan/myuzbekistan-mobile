import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class DetailUnderLineButton extends StatelessWidget {
  final String actionText;
  final GestureTapCallback? onTap;

  const DetailUnderLineButton({
    super.key,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          actionText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomTypography.bodyLg.copyWith(
            decorationThickness: 1,
            decoration: TextDecoration.underline,
            color: context.appColors.brand,
          ),
        ),
      ),
    );
  }
}
