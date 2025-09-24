

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class Experiment extends StatefulWidget {
  const Experiment({super.key});

  @override
  State<Experiment> createState() => _ExperimentState();
}

class _ExperimentState extends State<Experiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            // ReviewAnalytics(),
            // ReviewItem(),
            // ReviewStars(
            //   stars: 3,
            //   filled: true,
            //   size: 32,
            //   spacing: 8,
            //   selectedColor: context.appColors.colors.yellow,
            // ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: context.appColors.fill.quaternary),
              padding: EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16,bottom: 8),
              child: TextFormField(
                minLines: 6,
                maxLength: 500,
                maxLines: 15,
                style: CustomTypography.bodyMd.copyWith(color: context.appColors.textIconColor.secondary),

                buildCounter: (
                    BuildContext context, {
                      required int currentLength,
                      required bool isFocused,
                      required int? maxLength,
                    }) {
                  return  Text(
                      "$currentLength/$maxLength",
                    ).bodyXXsm(color: context.appColors.textIconColor.tertiary);

                },
                cursorColor: context.appColors.textIconColor.secondary,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,

                ),
              )
            )

          ],
        ),
      ),
    );
  }
}
