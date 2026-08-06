import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Telefon raqami kiritish maydoni (dizayn: label + katta qalin raqam + tag chiziq).
/// Xato holatida tag chiziq va yordamchi matn qizil rangga o'zgaradi.
class PhoneInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String prefixText;
  final String? supportText;
  final String? errorText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> formatters;
  final bool autoFocus;

  const PhoneInputField({
    super.key,
    required this.controller,
    required this.label,
    this.prefixText = "+998",
    this.supportText,
    this.errorText,
    this.keyboardType = TextInputType.phone,
    this.formatters = const [],
    this.autoFocus = true,
  });

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;

    final valueStyle = CustomTypography.H2.copyWith(
      fontSize: 24,
      height: 28 / 24,
      fontWeight: FontWeight.w700,
      color: context.appColors.textIconColor.primary,
    );

    final underlineColor = hasError
        ? context.appColors.colors.red
        : context.appColors.stroke.nonOpaque;

    final helperText = errorText ?? supportText;
    final helperColor = hasError
        ? context.appColors.colors.red
        : context.appColors.textIconColor.tertiary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label).labelMd(color: context.appColors.textIconColor.tertiary),
        const SizedBox(height: 4),
        SizedBox(
          height: 56,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 8),
              Text(prefixText, style: valueStyle),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: controller,
                  autofocus: autoFocus,
                  maxLines: 1,
                  keyboardType: keyboardType,
                  inputFormatters: formatters,
                  textInputAction: TextInputAction.done,
                  keyboardAppearance: context.brightness,
                  cursorColor: hasError
                      ? context.appColors.colors.red
                      : context.appColors.brand,
                  style: valueStyle,
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Container(height: 1, color: underlineColor),
        if (helperText != null) ...[
          const SizedBox(height: 20),
          Text(helperText).bodySm(color: helperColor),
        ],
      ],
    );
  }
}
