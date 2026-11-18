import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/profile_page/widgets/settings_options_sheet.dart';
import 'package:more/src/pages/profile_page/widgets/settings_radio_option.dart';
import 'package:shared/shared.dart';

import '../../../core/settings_bloc/app_settings_bloc.dart';

class ChangeThemePage extends HookWidget {
  const ChangeThemePage({super.key});

  static const _modes = [ThemeMode.system, ThemeMode.light, ThemeMode.dark];

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final currentMode = context.select<AppSettingsBloc, ThemeMode>(
      (bloc) => bloc.state.mode,
    );
    final selected = useState<ThemeMode>(currentMode);

    return SettingsOptionsSheet(
      title: localization.theme,
      actionText: localization.save,
      options: [
        for (var i = 0; i < _modes.length; i++)
          SettingsRadioOption(
            text: localization.themeModes(_modes[i].name),
            isSelected: selected.value == _modes[i],
            showDivider: i != _modes.length - 1,
            onTap: () => selected.value = _modes[i],
          ),
      ],
      onSave: () {
        context.read<AppSettingsBloc>().add(
          AppSettingsBlocEvent.setTheme(selected.value),
        );
        context.pop();
      },
    );
  }
}
