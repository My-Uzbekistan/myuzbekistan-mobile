import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchInputField extends HookWidget {
  final ValueChanged? onChanged;
  final String? hintText;

  const SearchInputField({super.key, this.onChanged,this.hintText});

  @override
  Widget build(BuildContext context) {
    final textEditionController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 38,
        child: TextFormField(
          controller: textEditionController,
          onChanged: onChanged,
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter, // Yangi qatordan saqlaydi
            TextInputFormatter.withFunction((oldValue, newValue) {
              // Faqat harflar orasida 1 ta space bo'lishiga ruxsat berish
              final newText = newValue.text;

              // Ketma-ket 2 yoki undan ko'p bo'sh joyni bloklash
              if (newText.contains(RegExp(r'\s{2,}'))) {
                return oldValue;
              }

              // Boshida yoki oxirida bo'sh joy bo'lishiga yo'l qo'ymaslik
              if (newText.startsWith(' ') || newText.endsWith(' ')) {
                return oldValue;
              }

              return newValue;
            }),
          ],
          style: CustomTypography.bodyLg,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              fillColor: context.appColors.fill.quaternary,
              filled: true,
              prefixIcon: Assets.svgSearchLine.toSvgImage(
                  colorFilter: ColorFilter.mode(
                      context.appColors.textIconColor.tertiary,
                      BlendMode.srcIn)),
              hintText: hintText,
              hintStyle: CustomTypography.bodyLg
                  .copyWith(color: context.appColors.textIconColor.tertiary),
              border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
