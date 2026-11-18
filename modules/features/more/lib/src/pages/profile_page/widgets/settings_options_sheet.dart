import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SettingsOptionsSheet extends StatelessWidget {
  final String title;
  final String actionText;
  final List<Widget> options;
  final VoidCallback onSave;

  const SettingsOptionsSheet({
    super.key,
    required this.title,
    required this.actionText,
    required this.options,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: 32,
            height: 4,
            decoration: BoxDecoration(
              color: context.appColors.static.white.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.appColors.background.underlayer,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: context.appColors.background.elevation1,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 24,
                        top: 16,
                        bottom: 8,
                      ),
                      child: Text(title).h3(),
                    ),
                    ...options,
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.appColors.background.elevation1,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.all(8).copyWith(
                  bottom: MediaQuery.of(context).padding.bottom + 8,
                ),
                child: AppActionButton(
                  actionText: actionText,
                  sizeType: ActionButtonSizeType.large,
                  onPressed: onSave,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
