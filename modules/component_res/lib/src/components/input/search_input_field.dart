import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchInputField extends HookWidget {
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final bool disableEditing;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;

  const SearchInputField(
      {super.key,
      this.onChanged,
      this.hintText,
      this.disableEditing = false,
      this.onTap,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    final textEditionController = useTextEditingController();
    return SizedBox(
      height: 44,
      child: GestureDetector(
        onTap: disableEditing ? onTap : null,
        behavior: HitTestBehavior.opaque,
        child: AbsorbPointer(
          absorbing: disableEditing,
          child: TextFormField(
            focusNode: focusNode,
            controller: textEditionController,
            onChanged: onChanged,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter,
              TextInputFormatter.withFunction((oldValue, newValue) {
                final newText = newValue.text;
                // if (newText.contains(RegExp(r'\s{2,}'))) {
                //   return oldValue;
                // }
                // if (newText.startsWith(' ') || newText.endsWith(' ')) {
                //   return oldValue;
                // }
                return newValue;
              }),
            ],
            style: CustomTypography.bodyMd,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                fillColor: context.appColors.fill.quaternary,
                filled: true,
                prefixIcon: Assets.svgSearchLine.toSvgImage(
                    colorFilter: ColorFilter.mode(
                        context.appColors.textIconColor.secondary,
                        BlendMode.srcIn)),
                hintText: hintText,
                hintStyle: CustomTypography.bodyMd
                    .copyWith(color: context.appColors.textIconColor.tertiary),
                border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
      ),
    );
  }
}
