import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SheetGrabber extends StatelessWidget {
  const SheetGrabber({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
