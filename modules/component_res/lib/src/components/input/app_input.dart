import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppInputField extends HookWidget {
  final String? prefixText;
  final String? hintText;
  final String? supportText;
  final String? label;
  final String? errorText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> formatters;
  final TextEditingController? controller;
  final int maxLength;
  final FocusNode? focusNode;
  final bool autoFocus;

  const AppInputField({
    super.key,
    this.controller,
    this.label,
    this.prefixText,
    this.supportText,
    this.hintText,
    this.errorText,
    this.formatters = const [],
    this.keyboardType = TextInputType.text,
    this.maxLength = TextField.noMaxLength,
    this.focusNode,
    this.autoFocus = false,
  });

  @override
  Widget build(BuildContext context) {
    final textController = controller ?? useTextEditingController();
    final isNotEmpty = useState(false);
    final _focusNode = focusNode??useFocusNode();
    final isFocused = useState(false);

    final internSupportText = errorText ?? supportText;

    final containerColor = errorText != null
        ? context.appColors.nonOpaque.red
        : context.appColors.fill.quaternary;

    final supportTextColor = errorText != null
        ? context.appColors.colors.red
        : context.appColors.textIconColor.secondary;

    useEffect(() {
      void handleTextChange() {
        isNotEmpty.value = textController.text.isNotEmpty;
      }

      void listener() {
        isFocused.value = _focusNode.hasFocus;
      }

      textController.addListener(handleTextChange);
      _focusNode.addListener(listener);
      return () {
        textController.removeListener(handleTextChange);
        _focusNode.removeListener(listener);
      };
    }, []);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: containerColor,
          ),
          child: IntrinsicHeight(
            child: Row(
              spacing: 4,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: textController,
                        focusNode: _focusNode,
                        maxLength: maxLength,
                        maxLines: 1,
                        autofillHints: [AutofillHints.oneTimeCode],
                        textInputAction: TextInputAction.done,
                        style: CustomTypography.bodyLg.copyWith(
                          color: context.appColors.textIconColor.primary,
                        ),
                        keyboardType: keyboardType,
                        cursorHeight: 20,
                        inputFormatters: formatters,
                        cursorColor: context.appColors.brand,
                        keyboardAppearance: context.brightness,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                          labelText: label,
                          labelStyle: CustomTypography.bodySm.copyWith(
                            color: isFocused.value
                                ? context.appColors.brand
                                : context.appColors.textIconColor.secondary,
                          ),
                          floatingLabelStyle: CustomTypography.bodySm.copyWith(
                            fontSize: 13 / .8,
                            color: isFocused.value
                                ? context.appColors.brand
                                : context.appColors.textIconColor.secondary,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          isDense: true,
                          prefix: prefixText != null
                              ? Text("$prefixText ").bodyLg(
                                  color:
                                      context.appColors.textIconColor.primary,
                                )
                              : SizedBox.shrink(),
                          counter: SizedBox.shrink(),
                          helper: SizedBox.shrink(),
                          prefixStyle: CustomTypography.bodyLg.copyWith(
                            color: context.appColors.textIconColor.primary,
                          ),
                          hintStyle: CustomTypography.bodyLg.copyWith(
                            color: context.appColors.textIconColor.tertiary,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                        ),
                        autofocus: autoFocus,
                      ),
                    ],
                  ),
                ),
                if (isNotEmpty.value && isFocused.value)
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      textController.clear();
                    },
                    child: Ink(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: context.appColors.fill.tertiary,
                      ),
                      child: Center(
                          child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Assets.svgIconClose.toSvgImage(
                              fit: BoxFit.contain,
                              colorFilter: ColorFilter.mode(
                                  context.appColors.textIconColor.secondary,
                                  BlendMode.srcIn)),
                        ),
                      )),
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (internSupportText != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(internSupportText).bodyMd(color: supportTextColor),
          ),
      ],
    );
  }
}
