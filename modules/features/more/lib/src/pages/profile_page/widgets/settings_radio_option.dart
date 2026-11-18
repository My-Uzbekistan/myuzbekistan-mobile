import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SettingsRadioOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool showDivider;
  final VoidCallback onTap;

  const SettingsRadioOption({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
            border: showDivider
                ? Border(
                    bottom: BorderSide(
                      color: context.appColors.stroke.nonOpaque,
                      width: 0.5,
                    ),
                  )
                : null,
          ),
          child: Row(
            spacing: 8,
            children: [
              Expanded(
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: context.appColors.textIconColor.primary),
              ),
              AppCheck(isChecked: isSelected),
            ],
          ),
        ),
      ),
    );
  }
}
