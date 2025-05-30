import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/settings_bloc/app_settings_bloc.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/widgets/app_check.dart';

import '../widgets/cell.dart';

class ChangeLocalePage extends StatefulWidget {
  const ChangeLocalePage({super.key});

  @override
  State<ChangeLocalePage> createState() => _ChangeLocalePageState();
}

class _ChangeLocalePageState extends State<ChangeLocalePage> {
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
                  text: localization.lanItem(AppLocale.en.name),
                  onTap: () {
                    context
                        .read<AppSettingsBloc>()
                        .add(AppSettingsBlocEvent.setLocale(AppLocale.en));
                  },
                  icon: Assets.svgIconFlagUk.toSvgImage(),
                  trailing: AppCheck(
                    isChecked: state.appLocale == AppLocale.en,
                  ),
                ),
                SettingsCell(
                  onTap: () {
                    context
                        .read<AppSettingsBloc>()
                        .add(AppSettingsBlocEvent.setLocale(AppLocale.ru));
                  },
                  text:localization.lanItem(AppLocale.ru.name),
                  icon: Assets.svgIconFlagRu.toSvgImage(),
                  trailing: AppCheck(
                    isChecked: state.appLocale == AppLocale.ru,
                  ),
                ),
                SettingsCell(
                  text: localization.lanItem(AppLocale.uz.name),
                  onTap: () {
                    context
                        .read<AppSettingsBloc>()
                        .add(AppSettingsBlocEvent.setLocale(AppLocale.uz));
                  },
                  icon: Assets.svgIconFlagUz.toSvgImage(),
                  trailing: AppCheck(
                    isChecked: state.appLocale == AppLocale.uz,
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
