
import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

import '../../../core/settings_bloc/app_settings_bloc.dart';
import '../widgets/app_check.dart';
import '../widgets/cell.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({super.key});

  @override
  State<ChangeThemePage> createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  @override
  Widget build(BuildContext context) {
    final localization=context.localizations;
    return SafeArea(
      child: Wrap(
        children: [
          BlocBuilder<AppSettingsBloc, AppSettingsBlocState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        localization!.language,
                        style: CustomTypography.H2,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SettingsCell(
                      text: localization.themeModes(ThemeMode.system.name),
                      onTap: () {
                        context
                            .read<AppSettingsBloc>()
                            .add(AppSettingsBlocEvent.setTheme(ThemeMode.system));
                      },
                      trailing: AppCheck(
                        isChecked: state.mode == ThemeMode.system,
                      ),
                    ),
                    SettingsCell(
                      onTap: () {
                        context
                            .read<AppSettingsBloc>()
                            .add(AppSettingsBlocEvent.setTheme(ThemeMode.light));
                      },
                      text:   localization.themeModes(ThemeMode.light.name),

                      trailing: AppCheck(
                        isChecked: state.mode == ThemeMode.light,
                      ),
                    ),
                    SettingsCell(
                      text:   localization.themeModes(ThemeMode.dark.name),
                      onTap: () {
                        context
                            .read<AppSettingsBloc>()
                            .add(AppSettingsBlocEvent.setTheme(ThemeMode.dark));
                      },
                      trailing: AppCheck(
                        isChecked: state.mode == ThemeMode.dark,
                      ),
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}