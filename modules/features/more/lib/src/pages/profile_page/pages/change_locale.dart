import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/profile_page/widgets/settings_options_sheet.dart';
import 'package:more/src/pages/profile_page/widgets/settings_radio_option.dart';
import 'package:shared/shared.dart';

import '../../../core/settings_bloc/app_settings_bloc.dart';

class ChangeLocalePage extends HookWidget {
  const ChangeLocalePage({super.key});

  static const _locales = [AppLocale.uz, AppLocale.en, AppLocale.ru];

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final currentLocale = context.select<AppSettingsBloc, AppLocale?>(
      (bloc) => bloc.state.appLocale,
    );
    final selected = useState<AppLocale>(currentLocale ?? AppLocale.uz);

    return SettingsOptionsSheet(
      title: localization.language,
      actionText: localization.save,
      options: [
        for (var i = 0; i < _locales.length; i++)
          SettingsRadioOption(
            text: localization.langItemDefault(_locales[i].name),
            isSelected: selected.value == _locales[i],
            showDivider: i != _locales.length - 1,
            onTap: () => selected.value = _locales[i],
          ),
      ],
      onSave: () {
        context.read<AppSettingsBloc>().add(
          AppSettingsBlocEvent.setLocale(selected.value),
        );
        context.pop();
      },
    );
  }
}

extension AppLocaleX on AppLocale {
  String get flag {
    switch (this) {
      case AppLocale.en:
        return Assets.flags.uk.path;
      case AppLocale.ru:
        return Assets.flags.ru.path;
      case AppLocale.uz:
        return Assets.flags.uz.path;
    }
  }
}
