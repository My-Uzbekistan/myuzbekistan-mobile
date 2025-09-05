import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

import '../../../core/settings_bloc/app_settings_bloc.dart';

class ChangeLocalePage extends StatefulWidget {
  const ChangeLocalePage({super.key});

  @override
  State<ChangeLocalePage> createState() => _ChangeLocalePageState();
}

class _ChangeLocalePageState extends State<ChangeLocalePage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
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
                      localization.language,
                      style: CustomTypography.H2,
                    ),
                  ),
                  SizedBox(height: 16),
                  SettingsCell(
                    text: localization.lanItem(AppLocale.en.name),
                    onTap: () {
                      context.read<AppSettingsBloc>().add(
                        AppSettingsBlocEvent.setLocale(AppLocale.en),
                      );
                      context.pop();
                    },
                    icon: AppLocale.en.flag.toSvgImage(),
                    trailing: AppCheck(
                      isChecked: state.appLocale == AppLocale.en,
                    ),
                  ),
                  SettingsCell(
                    onTap: () {
                      context.read<AppSettingsBloc>().add(
                        AppSettingsBlocEvent.setLocale(AppLocale.ru),
                      );
                      context.pop();
                    },
                    text: localization.lanItem(AppLocale.ru.name),
                    icon: AppLocale.ru.flag.toSvgImage(),
                    trailing: AppCheck(
                      isChecked: state.appLocale == AppLocale.ru,
                    ),
                  ),
                  SettingsCell(
                    text: localization.lanItem(AppLocale.uz.name),
                    onTap: () {
                      context.read<AppSettingsBloc>().add(
                        AppSettingsBlocEvent.setLocale(AppLocale.uz),
                      );
                      context.pop();
                    },
                    icon: AppLocale.uz.flag.toSvgImage(),
                    trailing: AppCheck(
                      isChecked: state.appLocale == AppLocale.uz,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

extension  AppLocaleX on AppLocale{

  String get flag {
    switch (this) {
      case AppLocale.en:
        return Assets.flagsUk;
      case AppLocale.ru:
        return Assets.flagsRu;
      case AppLocale.uz:
        return Assets.flagsUz;
    }
  }
}