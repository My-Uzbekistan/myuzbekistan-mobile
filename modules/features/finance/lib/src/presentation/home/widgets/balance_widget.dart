import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';


class BalanceWidget extends HookWidget {


  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.centerLeft,
          child: Text(
            isVisible.value ? '\$4 500,00' : '******',
            key: ValueKey(isVisible.value),
            style: CustomTypography.H1,
          ),
          // child: AnimatedSwitcher(
          //   duration: const Duration(milliseconds: 300),
          //   switchInCurve: Curves.easeIn,
          //   switchOutCurve: Curves.easeOut,
          //   transitionBuilder: (Widget child, Animation<double> animation) {
          //     return FadeTransition(opacity: animation, child: child);
          //   },
          //   child:  Text(
          //     isVisible.value ? '\$4 500,00' : '******',
          //     key: ValueKey(isVisible.value),
          //     style: CustomTypography.H1,
          //   ),
          // ),
        ),

        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: GestureDetector(
            onTap: () {
              isVisible.value = !isVisible.value;
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8).copyWith(left: 8),
                child:
                ColorFiltered(colorFilter: ColorFilter.mode(
                    context.appColors.textIconColor.secondary, BlendMode.srcIn),
                    child: isVisible.value
                        ? Assets.svgIconFilledEye.toSvgImage(

                    )
                        : Assets.svgIconFilledEyeOff.toSvgImage(), )
            ),
          ),
        ),
      ],
    );
  }
}
