import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 38,
        child: TextFormField(
          style: CustomTypography.bodyLg,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 11),
              fillColor: context.appColors.fill.quaternary,
              filled: true,
              prefixIcon: Assets.svgSearchLine.toSvgImage(
                  colorFilter: ColorFilter.mode(
                      context.appColors.textIconColor.tertiary,
                    BlendMode.srcIn
                      )),
              hintText: "Search",

              hintStyle: CustomTypography.bodyLg.copyWith(color: context.appColors.textIconColor.tertiary),
              border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
